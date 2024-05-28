## Annotations

## @DTO()

The `@DTO()` annotation is used to mark a class as a DTO. This annotation is required for the build_runner to generate the validation logic.

```dart
    @DTO()
    class UserDTO {
      
    }
```

## Field Annotations

### @IsString()

The `@IsString()` annotation is used to enforce that a field is a string.

```dart
    @IsString()
    final String? name;
```

### @IsInt()

The `@IsInt()` annotation is used to enforce that a field is an integer.

```dart
    @IsInt()
    final int? age;
```

### @IsNotEmpty()

The `@IsNotEmpty()` annotation is used to enforce that a field is not empty.

```dart
    @IsNotEmpty()
    final String? name;
```


