# shelf_dto

shelf_dto is a Dart library inspired by the class-validator from NestJS. It's designed to simplify the creation and validation of Data Transfer Objects (DTOs) in Dart applications. This library leverages annotations to define and enforce validation rules directly within your DTO classes.

## Features

- **Declarative Validation:** Use annotations to specify validation rules.
- **Easy Integration:** Simple to integrate with existing Dart projects.
- **Code Generation:** Automatically generate validation logic using build_runner.

## Installation

To use shelf_dto, add it to your `pubspec.yaml`:

```yaml
dependencies:
  shelf_dto: ^0.1.0

dev_dependencies:
  build_runner: ^2.1.7
```

## Getting Started
Step 1: Define Your DTO

Create a Dart file for your DTO and import the necessary annotations and exceptions from shelf_dto. Use the @DTO annotation to mark your class as a DTO and add validation annotations to your fields.

```dart

import 'package:shelf_dto/shelf_dto.dart';

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
```

Step 2: Generate Validation Logic

Run the build_runner command to generate the validation logic:

```sh

dart run build_runner build
```
This command processes the annotations and creates the necessary code for validating your DTOs.
Usage Example

After generating the validation logic, you can now use your DTO with confidence that it will enforce the specified validation rules. Here’s how you might use the UserDTO class:

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

## Annotations
Field Annotations

    @IsString(): Ensures the field is a string.
    @IsNotEmpty(): Ensures the field is not empty.
    @IsInt(): Ensures the field is an integer.

Class Annotation

    @DTO(): Marks the class as a Data Transfer Object for validation purposes.

## Exception Handling

shelf_dtos uses custom exceptions to handle validation errors. The ValidationException contains details about which fields failed validation and why.
## License

This project is licensed under the BSD 3 License. See the LICENSE file for details.
## Contributing

Contributions are welcome! Please submit a pull request or open an issue to discuss what you would like to change.

With shelf_dtos, creating and validating DTOs in Dart becomes a streamlined and efficient process, allowing you to focus on building robust applications with confidence in your data integrity.
