import 'package:shelf_dtos/shelf_dto.dart';
import 'package:test/test.dart';

import '../example/dto/user_dto.dart';

void main() {

  group('A group of tests', () {
    test('should return is empty and not null error', () {

      final userDTO = UserDTOValidator.fromMap({
        'name': null,
        'age': 30,
      });

      try {
        userDTO.validate();
      } on DTOException catch (e) {
        expect(e.errors, ['name must be a String', 'name must not be null']);
      }

      expect(userDTO.name, null);
      expect(userDTO.age, 30);
    });

    test('should not throw exception', () {
      final userDTO = UserDTOValidator.fromMap({
        'name': 'heron',
        'age': 30,
      });

      try {
        userDTO.validate();
      } on DTOException catch (e) {
        fail('should not throw exception');
      }

      expect(userDTO.name, 'heron');
      expect(userDTO.age, 30);
    });
  });
}
