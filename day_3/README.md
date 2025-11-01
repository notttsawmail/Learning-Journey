# day_3

### Apporach Change 
From day 3, the learning approach has shifted from reading the Flutter documentation, Project based learning is implemented. 
- Build the apps and find the resources needed for the app 

### Material themes 
You can set the apps default themes using the `theme` property in the materialApp widget. 

```
    Widget build(BuildContext context){
        return MaterialApp(
            theme: ThemeData(
                colorScheme: ColorScheme.fromseed(colors: Colors.(choice of color)), 
                brightness: Brightness.dark 
            ),
            textTheme: (
                titleLarge: TextStyle(
                fontSize: 
                fontWeight:
                ), 

            ),
            
        );
    }
```
**To Implement this** 
```
    style: Theme.of(context).textTheme.titlelarge. 
```

### SafeArea
`SafeArea` makes sures that the app's content doesn't get hiddne behind the phone's status bar or bottom buttons. 

### TextFiled 
This widget is resposible for handling the input from the users. It has different properties and configurations. 
- `Inputdecoration` determines the text field's appearance like colors and borders
- `controller`: `TextEditingController` controls the text that is being edited. this gets what users typed, changes the text from the code and also clear and resets the input. 


**Sending data from Texfield to another screen remember to make a callback function and pass it**

