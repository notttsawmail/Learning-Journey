# day_1

Flutter Docs 

## Learn Flutter 

### Widgets
Everything is a widget in flutter. Widgets are basically building blocks of a Flutter app's user interface. Widgets are used to describe all the aspect of the user interface, which includes the physical aspects such as text buttons to layout effects like padding and alignment.  

Widget forms a hierarchy based on composition.Each widget nests inside its parent and can receive context from the parents. 


### Widget Composition 
**Flutter apps are built using widgets, which are like building blocks.**  
- A widget can be very simple (like text) or more complex (like a whole screen). 
- Complex widgets are made by combining many small purpose widgets. 
**Layout Widget helps arrange other widgets but dont have any visual representations of their own**  
- Example: `Padding`,`Alignment`,`Row`,`Column`,`Grid`  
- Their job is just to control size,position or spacing of other widgets
**Utiility or visual widgets actually appear on the screen**  
- Example: `Container` is a common widget and it's actually made up several smaller widgets for layout, painting, sizing and positioning. 
- Widgets like `Text`, `Icon`, `Image` and `ElevatedButton` also have a visual appearence. 

### Building Widgets
Every widget has a build method.  
- Flutter calls the build method when the widget is first created and whenever its data (state or dependencies) changes. 
- The build method creates the widget's UI. 
- It can be called many times so its should only build the ui and nothing else( like changing the data or doing the heavy tasks). 

### Widget State 
Flutter has two major widgets:  
- Stateless Widget
        - Widgets dont change over time - their properties remains the same 
        - Example: `Text`, `Icon` `Etc`
        - Most of the time, when creating your own widgets, you' ll make it StatelessWidgets.     
- Statelful Widget
        - These widgets can change over time based on user interaction or other factors. 
        - Example: A counter that increases when the button is pressed. The counter value is the state/ 
        - **Important: The widget itself is immutable. The mutalble state is stored in a separate `State` class. The `build` method is inside the `State` class, which updates the UI when the states change**

- Updating the UI with setState
    - When you change something in a State object, `setState` must be called. 

    ```Flutter 
    void incrementCounter(){
        setState((){
            _counter++
        })
    }
    ```
- The state is stored separately so that flutter can recreate the widgets freely without loosing the data 

**In Simple terms, `Widgets` are like blueprint(don't change),`State` has the data that can change, and `setState` tells the flutter to rebuild the UI with the nwe Data**