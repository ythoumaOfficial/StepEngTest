import { Module } from '@nestjs/common';
import { MoviesService } from './movies.service';
import { MoviesController } from './movies.controller';
import { PrismaService } from 'prisma/prisma.service';
import { HttpModule } from '@nestjs/axios/dist';
import { JwtService } from '@nestjs/jwt';

@Module({
  imports: [HttpModule],
  controllers: [MoviesController],
  providers: [MoviesService, PrismaService, JwtService],
})
export class MoviesModule {}
