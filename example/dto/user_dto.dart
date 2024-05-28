import 'package:shelf_dto/src/annotations.dart';
import 'package:shelf_dto/src/exceptions.dart';

part 'user_dto.dto.dart';

// Creating a DTO class for the User
@DTO()
class UserDTO {
  @IsString()
  @IsNotEmpty()
  final String? name;

  @IsInt()
  final int? age;

  UserDTO._(this.name, this.age);
}
