import 'package:build/build.dart';
import 'package:shelf_dto/src/dto_generator.dart';
import 'package:source_gen/source_gen.dart';

// Defina uma classe para representar o construtor de builder
Builder dtoBuilder(BuilderOptions options) => PartBuilder(
  [DTOGenerator()],
  '.dto.dart',
  options: options,
);