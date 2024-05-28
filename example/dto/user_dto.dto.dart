// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// DTOGenerator
// **************************************************************************

/* GENERATED CODE - DO NOT MODIFY */
class UserDTOValidator {
  dynamic name;
  dynamic age;

  UserDTOValidator._({
    this.name,
    this.age,
  });

  factory UserDTOValidator.fromMap(Map<String, dynamic> map) {
    final name = map['name'];
    final age = map['age'];

    return UserDTOValidator._(
      name: name,
      age: age,
    );
  }
  validate() {
    List<String> errors = [];

    if (!(name is String)) {
      errors.add('name must be a String');
    }
    if (name == null) {
      errors.add('name must not be null');
    }
    if (!(age is int)) {
      errors.add('age must be an int');
    }
    if (errors.isNotEmpty) {
      throw DTOException(errors);
    }
  }
}
