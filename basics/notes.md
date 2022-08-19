# Flutter notes

- Widget are classes, not functions.
- runApp runs Flutter or tells Flutter to draw something onto the screen
- Flutter will then call the build  method off the Widget class that you passed to runApp
- build method is a function that returns a widget

## State

This is widget

```dart
class MyApp extends StatelessWidget {
  
}
```

This is where state is being held. 

```dart
class MaAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // ...
  }
}
```

``` State<MyApp> ``` mean that State belongs to MyApp class.

- use setState() to update the state of the widget



