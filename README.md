# TODO List App

Screenshots:
|              |   | |
:-------------------------:|:-------------------------:|:---:
![screenshot](/screenshots/Screenshot_20230925_082044.png?raw=true) | ![screenshot](/screenshots/Screenshot_20230925_081950.png?raw=true) |  ![screenshot](/screenshots/Screenshot_20230925_082026.png?raw=true)


Features:

- Use following backend: "https://csharp-todo-backend.azurewebsites.net/api/v1/todo/
- List, edit, create and delete todos
- Filters
- Pin or biometric authentication
- Pin is hashed with SHA256
- Tests

To run an app:
```sh
flutter pub get
flutter run
```

To run tests:
```sh
flutter test .\test\widget_test.dart
```

To regenerate models and routes:
```sh
dart run build_runner build
```
