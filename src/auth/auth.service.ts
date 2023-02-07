/* eslint-disable @typescript-eslint/no-unused-vars */
/* eslint-disable prettier/prettier */
import {
  BadRequestException,
  ForbiddenException,
  Injectable,
} from '@nestjs/common';
import { PrismaService } from 'prisma/prisma.service';
import { AuthDto } from './dto/auth.dto';
import * as bcrypt from 'bcrypt';
import { JwtService } from '@nestjs/jwt';
import { jwtSecret } from '../utils/constants';
import { Request, Response } from 'express';

@Injectable()
export class AuthService {
  constructor(private prisma: PrismaService, private jwt: JwtService) {}

  async hashPassword(password: string) {
    const saltOrRounds = 10;
    return await bcrypt.hash(password, saltOrRounds);
  }

  async comparePasswords(args: { password: string; hash: string }) {
    return await bcrypt.compare(args.password, args.hash);
  }

  async signToken(args: { id: string; email: string; isPremium: boolean, limit: number }) {
    const payload = args;

    return this.jwt.signAsync(payload, { secret: jwtSecret });
  }

  async singup(dto: AuthDto) {
    const { email, password, isPremium } = dto;

    const foundUser = await this.prisma.user.findUnique({
      where: { email: email },
    });

    if (foundUser) {
      throw new BadRequestException('Email already exists');
    }

    if (!foundUser) {
      const hashedPassword = await this.hashPassword(password);

      await this.prisma.user.create({
        data: {
          email,
          hashedPassword,
          isPremium,
        },
      });

      return { message: 'sign up successfully completed' };
    }
  }

  async signin(dto: AuthDto, req: Request, res: Response) {
    const { email, password } = dto;

    const foundUser = await this.prisma.user.findUnique({
      where: { email: email },
    });

    if (!foundUser) {
      throw new BadRequestException('Wrong Crendentials');
    }

    const isMtach = await this.comparePasswords({
      password,
      hash: foundUser.hashedPassword,
    });

    if (!isMtach) {
      throw new BadRequestException('Wrong Crendentials');
    }

    const token = await this.signToken({
      id: foundUser.id,
      email: foundUser.email,
      isPremium: foundUser.isPremium,
      limit: foundUser.limit
    });

    if (!token) {
      throw new ForbiddenException();
    }

    res.cookie('token', token);

    return res.send({ message: 'Logged in successfully' });
  }

  async signout(req: Request, res: Response) {
    res.clearCookie('token');

    return res.send({ message: 'signed out successfully' });
  }
}
