import 'package:build/build.dart';
import 'package:shelf_dto/src/dto_generator.dart';
import 'package:source_gen/source_gen.dart';

/// Builder for DTOGenerator
Builder dtoBuilder(BuilderOptions options) => PartBuilder(
      [DTOGenerator()],
      '.dto.dart',
      options: options,
    );
