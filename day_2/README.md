# day_2

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

 ### Wrap 
 Wrap is like a Row or Column, but when there’s not enough space in one direction, it automatically moves (or wraps) its children onto the next line (or column).  

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

### Layout Constraints
Layout in general sense refers to the size of the widget and their position on the screen. Size and position is constrained by its parent.  
- Widget recieve its constraints from its parents 
- A constraint is a set of 4 doubles: min and max width, and min and max height.

**Constraints go down Size go up. Parent sets the position**
- Constraints go down -> Parents tell child the size limit it can use. 
- Sizes go up -> Child chooses its sizee within those limit and reports it back.
- Parents set the position -> Parents decide where on the screen the child should appear. 

### Box Types
- Try to be big as possible: `Center` and `ListView`. 
- Try to be the same size of their children: `Transfrom` and `Opacity`.
- Try to be a particular size: `Image` and `Text`

### Layout 
All the layout widget have either  
    - A `child` property if they take a single child - `Center`, `Container` or `Padding`
    - A `children` property if take a list of widgets - `Row`, `Column`, `ListView` or `Stack`.  

**Complex layout can be build by combining multiple widgets together.**  
```
    Widget build(BuildContext context){
        return Center(
            Container(
                padding: EdgeInsets.all(16.0), 
                child:(
                    Image(image: AssetsImage('assets/images/meme.jpg')), 
                )
            )
        )
    }
```

### Layout with multiple widget vertically and horizintally 
This is the most common pattern to arrange widget vertically or horizontally.
- Row widget to arrange horizontally and Column widget to arrange vertically. 

#### Row 
```
    Widget build(BuildContext context){
        return Row(
            children:[
                <Some Widgets>
            ]
        )
    }
```

#### Column 
```
    Widget build(BuildContext context){
        return Column(
            children:[
                <Some Widgets>
            ]
        )
    }
```

### Alignment 
You can control how a row or column aligns its children using the `mainAxisAlignment` and `crossAxisAlignment` properties. 
- Row -> `mainAxisAlignment` is horizontal and `crossAxisAlignment` is vertically. 
- Column -> `mainAxisAlignment` is vertically and `crossAxisAlignment` is horizontally. 

### Size widget witing row and column 
When the layout is large to fit in a device, yellow and black stiped pattern appears. This issue can be fixed by resizing the widget to fit the screen within a row or column using the `Expanded` (takes all the available space)/ `Flexible`(only takes the space it needs) widget 

**Doesnt work with these**
- `SingleChildScrollView` `ListView` -> These are scrollable layouts which give them infinite spcae 
- `Stack` -> positions the children freely (top, left, right etc)
- `Container` -> Only holds 1 child. 
- `GridView` -> Handles its own layout sizing - ignores flex behabvior 
- `Wrap` -> wraps item to a new line 
- `Pageview`, `CustomScrollView` -> scrollable layouts. 


