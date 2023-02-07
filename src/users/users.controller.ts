/* eslint-disable prettier/prettier */
import { Controller, Get, Param, UseGuards } from '@nestjs/common';
import { JwtAuthGuard } from 'src/auth/jwt.guard';
import { UsersService } from './users.service';

@Controller('users')
export class UsersController {
  constructor(private readonly usersService: UsersService) {}

  @UseGuards(JwtAuthGuard)
  @Get(':id')
  getUser(@Param() params: {id: string}) {
    return this.usersService.getUser(params.id);

  }


  @Get()
  getUsers() {
    return this.usersService.getUsers();
  }
}
