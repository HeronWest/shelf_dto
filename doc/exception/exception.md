## DTOException

The `DTOException` class is a custom exception that is thrown when a DTO fails validation. It contains a list of errors that describe the validation failures.

### Example

```dart
import 'package:shelf_dto/shelf_dto.dart';

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
}
```
