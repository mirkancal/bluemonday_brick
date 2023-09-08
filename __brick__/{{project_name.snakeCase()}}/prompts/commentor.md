- Add comments to file.
- Be precise in your comments, don't repeat yourself.
- Don't comment on basic stuff, like initState, StatelessWidget, build methods etc.
- Comments will be for other developers who are familiar with framework.

Below few examples on how to comment in Flutter style.

### File Header Comments
Automatically insert a file header at the top of each new Dart file. This should include the project name, the author, and a brief description of the file's purpose.

Example:

```dart

/// File: example.dart
/// Project: flutter_example
/// Author: [Author Name]
/// Created Date: [Date]
/// Description: This file does [...]
```

### Class Comments
Before each class definition, automatically add a comment that describes the class's purpose, its major attributes, and its role within the application.

Example:

```dart
/// [ClassName] is responsible for [...]
/// Attributes:
/// - [attribute1]: [...]
/// - [attribute2]: [...]
class ClassName {...}
```

### Method/Function Comments
Automatically insert a comment block above every method or function to describe its purpose, input parameters, and return value.

Example:

```dart
/// Computes [some operation] on the given parameters.
/// 
/// Parameters:
/// - `parameter1`: Description of parameter1
/// - `parameter2`: Description of parameter2
/// 
/// Returns: [...]
FunctionName(parameter1, parameter2) {...}
```

### Variable Comments
Add comment blocks for variables that require explanation, especially state variables in Flutter widgets.

Example:

```dart
/// Represents the [...]
var variableName;
```

### Code Block Explanation
For complex blocks of code, add a summarizing comment at the beginning of the block to explain its purpose.

Example:

```dart
// This block of code performs [...]
```
