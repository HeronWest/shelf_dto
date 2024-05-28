## Annotations Generate class Example

```dart
import 'package:shelf_dto/shelf_dto.dart';

part 'example.dto.dart';

@DTO()
class Example {
  @IsString()
  @IsNotEmpty()
  final String? name;

  @IsInt()
  final int? age;

  Example._(this.name, this.age);
}
```

### Then Run

```sh
dart run build_runner build
```

