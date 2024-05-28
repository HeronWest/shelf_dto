import 'package:shelf_dtos/shelf_dto.dart';

import 'dto/user_dto.dart';

void main() {
    final userDTO = UserDTOValidator.fromMap({
      'name': 'heron',
      'age': 30,
    });

    try {
      userDTO.validate();

      String name = userDTO.name;
      int age = userDTO.age;
      print('Name: $name, Age: $age');

    } on DTOException catch (e) {
      print(e.errors);
    }

    final userDTO2 = UserDTOValidator.fromMap({
      'name': null,
      'age': 30,
    });

    try {
      userDTO2.validate();
    } on DTOException catch (e) {
      print(e.errors);
    }
}
