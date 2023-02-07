/* eslint-disable prettier/prettier */
/* eslint-disable @typescript-eslint/no-empty-function */
import { HttpService } from '@nestjs/axios';
import { Injectable, NotFoundException, Req } from '@nestjs/common';
import { Request } from 'express';
import { PrismaService } from 'prisma/prisma.service';
import { firstValueFrom, map } from 'rxjs';
import { JwtService } from '@nestjs/jwt';

@Injectable()
export class MoviesService {
  constructor(
    private prisma: PrismaService,
    private httpService: HttpService,
    private jwt: JwtService,
  ) {}

  async getAndPostMovieDetails(title, req: Request) {
    const token = req.cookies.token;
    const decodedToken: any = this.jwt.decode(token);

    const user = await this.prisma.user.findUnique({
      where: { id: decodedToken.id },
    });

    const response: any = await firstValueFrom(
      this.httpService
        .get(`https://www.omdbapi.com/?apikey=72b1ef99&t=${title}`)
        .pipe(map((responseData) => responseData.data)),
    );
    // TODO: UPDATE AND CREATE RECORD

    if (response) {
      if (user.limit <= 5 && user.isPremium == false) {
        const userInfo = await this.prisma.user.update({
          where: {
            id: user.id,
          },
          data: {
            limit: user.limit + 1,
          },
        });

        if (user.limit < 5) {
          await this.prisma.movie.create({
            data: {
              title: response.Title,
              director: response.Director,
              released: response.Released,
              genre: response.Genre,
            },
          });
        }
      } else if (user.isPremium === true) {
        await this.prisma.movie.create({
          data: {
            title: response.Title,
            director: response.Director,
            released: response.Released,
            genre: response.Genre,
          },
        });
      } else {
        return { message: "You've reached the maximum amount of requests." };
      }
    }
  }

  async getMovies() {
    const movie = await this.prisma.movie.findMany({});

    if (!movie) {
      throw new NotFoundException();
    }

    return movie;
  }

  async getMovie(id: string) {
    const movie = await this.prisma.movie.findUnique({ where: { id } });

    if (!movie) {
      throw new NotFoundException();
    }

    return movie;
  }
}
