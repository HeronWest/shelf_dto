import 'dart:async';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:analyzer/dart/element/element.dart';

import 'annotations.dart';

// Generator for DTO annotation
class DTOGenerator extends GeneratorForAnnotation<DTO> {
  @override
  FutureOr<String?> generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) async {
    final buffer = StringBuffer();
    buffer.writeln('/* GENERATED CODE - DO NOT MODIFY */');

    if (element is ClassElement) {
      var classElement = element;
      buffer.writeln('class ${classElement.name}Validator {');

      //Generate all final fields from DTO base example: final String? name, final int? age;
      for (var field in classElement.fields) {
        var fieldName = field.name;
        buffer.writeln('dynamic $fieldName;');
      }

      buffer.writeln('\n${classElement.name}Validator._({');
      for (var field in classElement.fields) {
        var fieldName = field.name;
        buffer.writeln('this.$fieldName,');
      }
      buffer.writeln('});\n');

      //Create a factory constructor fromMap with validations by annotations like @IsEmpty or @IsInt
      buffer.writeln(
          'factory ${classElement.name}Validator.fromMap(Map<String, dynamic> map) {');

      for (var field in classElement.fields) {
        var fieldName = field.name;
        buffer.writeln('final $fieldName = map[\'$fieldName\'];');
      }

      buffer.writeln('');

      buffer.writeln('\nreturn ${classElement.name}Validator._(');
      for (var field in classElement.fields) {
        var fieldName = field.name;
        buffer.writeln('$fieldName: $fieldName,');
      }
      buffer.writeln(');');

      buffer.writeln('}'); // Close factory method

      buffer.writeln('validate() {'); // Function validate

      buffer.writeln('List<String> errors = [];\n');

      for (var field in classElement.fields) {
        var fieldName = field.name;
        var annotations = field.metadata;

        // Check for specific annotations
        for (var annotation in annotations) {
          var annotationType = annotation.computeConstantValue()?.type;
          if (annotationType != null) {
            var annotationTypeName =
                annotationType.getDisplayString(withNullability: true);

            switch (annotationTypeName) {
              case 'IsString':
                buffer.writeln('if (!($fieldName is String)) {');
                buffer.writeln('errors.add(\'$fieldName must be a String\');');
                buffer.writeln('}');
                break;
              case 'IsInt':
                buffer.writeln('if (!($fieldName is int)) {');
                buffer.writeln('errors.add(\'$fieldName must be an int\');');
                buffer.writeln('}');
                break;
              case 'IsDouble':
                buffer.writeln('if (!($fieldName is double)) {');
                buffer.writeln('errors.add(\'$fieldName must be a double\');');
                buffer.writeln('}');
                break;
              case 'IsBool':
                buffer.writeln('if (!($fieldName is bool)) {');
                buffer.writeln('errors.add(\'$fieldName must be a bool\');');
                buffer.writeln('}');
                break;
              case 'IsList':
                buffer.writeln('if (!($fieldName is List)) {');
                buffer.writeln('errors.add(\'$fieldName must be a List\');');
                buffer.writeln('}');
                break;
              case 'IsMap':
                buffer.writeln('if (!($fieldName is Map)) {');
                buffer.writeln('errors.add(\'$fieldName must be a Map\');');
                buffer.writeln('}');
                break;
              case 'IsDateTime':
                buffer.writeln('if (!($fieldName is DateTime)) {');
                buffer
                    .writeln('errors.add(\'$fieldName must be a DateTime\');');
                buffer.writeln('}');
                break;
              case 'IsEmail':
                buffer.writeln('if (!($fieldName is String)) {');
                buffer.writeln('errors.add(\'$fieldName must be a String\');');
                buffer.writeln('}');
                buffer.writeln(
                    'if (!RegExp(r\'^\\w+@[a-zA-Z_]+?\\.[a-zA-Z]{2,3}\$\').hasMatch(map[\'$fieldName\'])) {');
                buffer.writeln(
                    'errors.add(\'$fieldName must be a valid email\');');
                buffer.writeln('}');
                break;
              case 'IsNotEmpty':
                buffer.writeln('if ($fieldName == null) {');
                buffer.writeln('errors.add(\'$fieldName must not be null\');');
                buffer.writeln('}');
                break;
            }
          }
        }
      }

      buffer.writeln('if (errors.isNotEmpty) {');
      buffer.writeln('throw DTOException(errors);');
      buffer.writeln('}');

      buffer.writeln('}'); // Close validate function

      buffer.writeln('}'); // Close class
    }

    return buffer.toString();
  }
}
