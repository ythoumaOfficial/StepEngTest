/* eslint-disable @typescript-eslint/no-empty-function */
/* eslint-disable prettier/prettier */
import { Injectable, NotFoundException } from '@nestjs/common';
import { PrismaService } from 'prisma/prisma.service';

@Injectable()
export class UsersService {
    constructor(private prisma: PrismaService){}

    async getUser(id: string) {
        const user = await this.prisma.user.findUnique({where: {id}});

        if (!user) {
            throw new NotFoundException()
        }

        return {user};
    }

    async getUsers() {
        return await this.prisma.user.findMany({
            select: {
                id: true,
                email: true,
                isPremium: true
            }
        });
    }

}
