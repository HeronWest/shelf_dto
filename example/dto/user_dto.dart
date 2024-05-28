import 'package:shelf_dto/src/annotations.dart';
import 'package:shelf_dto/src/exceptions.dart';

part 'user_dto.dto.dart';

@DTO()
class UserDTO {
  @IsString()
  @IsNotEmpty()
  final String? name;

  @IsInt()
  final int? age;

  UserDTO._(this.name, this.age);
}