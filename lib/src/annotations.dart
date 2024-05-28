// Annotation classes for DTO generation
class DTO {
  const DTO();
}

// Annotation classes for validate method generation.
class IsString {
  const IsString();
}

// Annotation classes for validate method generation.
class IsInt {
  const IsInt();
}

// Annotation classes for validate method generation.
class IsDouble {
  const IsDouble();
}

// Annotation classes for validate method generation.
class IsBool {
  const IsBool();
}

// Annotation classes for validate method generation.
class IsList {
  const IsList();
}

// Annotation classes for validate method generation.
class IsMap {
  const IsMap();
}

// Annotation classes for validate method generation.
class IsDateTime {
  const IsDateTime();
}

// Annotation classes for validate method generation.
class IsEmail {
  const IsEmail();
}

// Annotation classes for validate method generation.
class IsNotEmpty {
  const IsNotEmpty();
}

// Annotation classes for validate method generation.
class Length {
  final int min;
  final int max;
  const Length({this.min = 0, this.max = 0});
}

// Annotation classes for validate method generation.
class Parse {
  final String type;
  const Parse(this.type);
}

// Annotation classes for validate method generation.
class IsOptional {
  const IsOptional();
}

// Annotation classes for validate method generation.
class IsNullable {
  const IsNullable();
}

// Annotation classes for validate method generation.
class ExternalDtoService {
  const ExternalDtoService();
}
