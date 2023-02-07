/* eslint-disable prettier/prettier */
import { IsString } from "class-validator";

export class MovieDto {

    @IsString()
    public title: string;

}