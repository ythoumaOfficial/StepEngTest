/* eslint-disable prettier/prettier */
import { Body, Controller, Get, Param, Post, Req, Res, UseGuards } from '@nestjs/common';
import { JwtAuthGuard } from 'src/auth/jwt.guard';
import { MovieDto } from './dto/movie.dto';
import { MoviesService } from './movies.service';

@Controller('movies')
export class MoviesController {
  constructor(private readonly moviesService: MoviesService) {}

  @UseGuards(JwtAuthGuard)
  @Post()
  getAndPostMovieDetails(@Body() dto: MovieDto, @Req() req) {
    return this.moviesService.getAndPostMovieDetails(dto.title, req);
  }

  @Get()
  getMovies() {
    return this.moviesService.getMovies();
  }

  @Get(':id')
  getMovie(@Param() params: {id: string}) {
    return this.moviesService.getMovie(params.id);
  }


}
