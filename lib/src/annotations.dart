class DTO {
  const DTO();
}

class IsString {
  const IsString();
}

class IsInt {
  const IsInt();
}

class IsDouble {
  const IsDouble();
}

class IsBool {
  const IsBool();
}

class IsList {
  const IsList();
}

class IsMap {
  const IsMap();
}

class IsDateTime {
  const IsDateTime();
}

class IsEmail {
  const IsEmail();
}

class IsNotEmpty {
  const IsNotEmpty();
}

class Length {
  final int min;
  final int max;
  const Length({this.min = 0, this.max = 0});
}

class Parse {
  final String type;
  const Parse(this.type);
}

class IsOptional {
  const IsOptional();
}

class IsNullable {
  const IsNullable();
}

class ExternalDtoService {
  const ExternalDtoService();
}