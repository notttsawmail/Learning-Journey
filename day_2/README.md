# day_2

## Topics Covered 
- Container
- Text
- Scaffold 
- AppBar
- Row and Column 
- Elevated Button 
- Image 
- Icon 


### Container 
Container is like a box that can hold things and control how they look or where they sit on the screen. It is like a frame or a wrapper that helps us to decorate, position or size our widget.  
```
    Container(
        height: 40.0
        width: 40.0 
        colors: Colors.amber
        child: Text('Test')
    )
 ```   

 ### Text 
 The text widget is used to show text on the screen. If the text is too long, it automatically moves to the next line. If there is no style given to the text, it will use the app's default text style. 
 ```
    Text(
        'Hello Flutter',
        style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold),
    )
```

### Default Text Style 
DefaultTextStyle gives you the default text style appiled to a widgets subtree(child). 

```
    void main(){
        runApp(const MyApp());
    }
    class MyApp extends StatelessWidget{
        const MyApp({super.key});

        @override 
        Widget build(BuildContext context){
            return MaterialApp(
                theme: ThemeData(
                    textTheme: const TextTheme(
                        bodyMedium: TextStyle(fontSize: 14)
                    )
                ), 
                home: Scaffold(
                    body: Center(
                        child:RichText(
                            text: TextSpan(
                            style:DefaultTextStyle.of(context).style.copywith,
                            children:<TextSpan>[
                                TextSpan(text: 'It's'),
                                TextSpan(text: 'all', style: TextStyle(fontWeight: FontWeight.bold),
                                ), 
                                TextSpan(text: 'widgets'),
                            ],
                        ),

                        )
                    )
                )
            )
        }
    }
```
- .copywith is a way to take an exisiting object and make a new one with some changes without altering the original 


### RichText

```
    RichText(
        text: TextSpan(
            style:DefaultTextStyle.of(context).style,
            children:<TextSpan>[
                TextSpan(text: 'It's'),
                TextSpan(text: 'all', style: TextStyle(fontWeight: FontWeight.bold),
                ), 
                TextSpan(text: 'widgets'),
            ],
        ),
    )
```
