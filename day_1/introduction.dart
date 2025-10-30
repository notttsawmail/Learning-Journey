import 'dart:io';

void main() {
  //! Variables stores references. The var tells the variable is of any type.
  var name = 'Bob';
  //*Object name = "Bob"

  //? We also have the option to explicitly declare a type of a variable
  String nameOne = 'Bob';

  //*Null Safety : It tells that  which variable can hold null and which cannot. It's error is called null dereference error
  String? nameTwo; //? This is a nullable type and can be 'null' or a 'String'
  String nameThree; //? Non-nullable tye. Cannot be 'null' but can be String.

  // ! the .toString() method is supported by the nullable. Not all method/ properties are accessible by nullabales
  print(nameTwo.toString());

  // * Late Variables : Two use cases (basically saying the program that vakye will be assigned later)
  // ! Declaring a non-nullable varibale that's initialed after declataion
  // ! Lazily initializing a variable
  late String description;
  //! if fail to initialize late variable a runtime erroroccures when the variable is used.

  //* Final and Const
  // ! Final variable can be set only once - assign in run time
  final String namefour = 'Bobby';
  // ! Const variable is a compile time constant. Use const for the variable you want to be compile-time constant. if the variable is at class level, mark it as static const
  const double atm = 1.04234;
  // ! const is just not for declaring variables. it can also create constant values as well as create cons with a constructor so that object itself becomes a constant
  final bar = const [];

  //* Wildcard Variable : used when you dont care about its value
  var _ = 1;
}
