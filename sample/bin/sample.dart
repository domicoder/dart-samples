import 'package:sample/sample.dart' as sample;
import "dart:math";

// void main(List<String> arguments) {
//   print('Hello world: ${sample.calculate()}!');
// }

// Flutter & Firebase
// https://courses.codewithandrea.com/

void main(List<String> arguments) {
  classOne();
  classTwo();
  classThree();
  classFour();
  classFive();
}

void classFive() {
//   Clousures, fold method, Enums, 
//   sum using fold method
  final numbersSum2 = [1, 2, 3, 4];
  print("The sum2 is ${sum2(numbersSum2)}");
//   Using enums
  print("Using enums");
  printError(NetworkError.badURL);
}

void classFour(){
  //   List, Map, Generics, If-else, for, while
  //   List, Map
  //   List
  print("class four: List, Map, Generics, If-else, for, while");
  print("List");
  var primeNumbers = [2, 3, 5, 7, 9];
  primeNumbers.addAll([11, 13, 17, 19]);
  primeNumbers.add(23);
  print(primeNumbers);
  // prefer classes to maps for data models
  // map -> used to represent JSON data
  print("Map");
  var person = {
    "name": "Yander",
    "age": 22,
    "height": 1.83
  };
  person["weight"] = 65; // Kg
  print(person["name"]);
  print(person["weight"]);
  //   Generics
  print("Generics");
  //   deprecated List<int>();
  var primeNumbers2 = <int>[];
  primeNumbers2.addAll([2, 3, 5, 7, 9]);
  var person2 = <String, dynamic>{
    "name": "Yander",
    "age": 22,
    "height": 1.83
  };
  print(primeNumbers2);
  print(person2["age"]);
  print("Odd - Even");
  
  if(getOddEven(5)) {
    print("The number is even.");
  } else {
    print("The number is odd.");
  }
//   Ternary operator
  final type = (getOddEven(7) ? "Is even" : "Is odd");
  print(type);
  
//   While Loop
  final numbers = [1, 2, 3, 4, 5, 6];
  final result = sum(numbers);
  print("The sum of ${numbers} is ${result}.");
  
//   For Loop
  int num = 3;
  int times = 3;
  final multiply = multiplyNumberMany(num, times);
  print("The number ${num} multiply by itself ${times} times is ${multiply}.");
} 

void classThree() {
  // Mixins
  print("classTwo: Mixins");
  final personMixin = PersonMixin(name: "Yander", age: 22, height: 1.84, weight: 145);
//   using mixin
  print("The BMI is ${personMixin.bmi}");
}

void classTwo() {
  // Abstract class
  //   final shape = Shape(); // Error can not instanciate it.
  print("classTwo: Abstract classes");
  final square = Square(side: 22.2);
  print("The area of squeare is ${square.area}.");
  print("The area of squeare is ${printArea(square)}.");
  final circle = Circle(radius: 4.6);
  print("The area of circle is ${printArea(circle)}.");
}

void classOne() {
//   Variable declaration | variable initialization
print("classOne: Base");
  String name             = 'Yander';
  int age                 = 22;
  double height           = 1.84;
  
  height                  = 1.95;
//   Mutable
  var phone_number        = "8201119988"; 
//   Immutable
  final brothers          = 4;
//   Dynamic variables
  dynamic hat             = 3;
  
//   Use var for declate variables, use the value for variable initialization type
  
  for(int i = 0; i < 1; i++) {
//     String interpolation ${} and $variable
    String description = describe(name, age, height);
    print(description);
    getAge(age);
    print("My phone number is $phone_number.");
    phone_number          = "N/A";
    print("My phone number is $phone_number.");
//     The final variable 'brothers' can only be set once
//     Is immutable
//     brothers              = 5; // Error
    print("I have $brothers brothers.");
    hat                   = 5;
    print("I have $hat hats.");
    print(ageInTenMoreYears(name: "Yander", age: 22));
  }
  
//   lesson of Classes 
  print("Lesson of Classes");
  final person = Person(name: "Yander", age: 22, height: 1.84);
  print("${person.name} ${person.age} ${person.height}");
  print("---function inside class person");
  print(person.describe());
//   Extends
  final employee = Employee(name: "Jose", age: 25, height: 1.45, taxCode: "AB33", salary: 800);
  print(employee.describe());
  print(employee.toString());
  print(employee);
}

class Person {
  // Constructor
  Person({this.age = 0, this.height = 0, this.name = ""});
  final String name;
  final int age;
  final double height;
  
  String describe() => "I am $name, i am $age years old. i am $height meters tall.";
  @override
  String toString() => "name: $name, age: $age, height: $height";
}
// Inheritance 
class Employee extends Person {
  Employee({age, height, name,
            this.taxCode = "", this.salary = 0})
    : super(age: age, height: height, name: name);
  final String taxCode;
  final int salary;
  @override
  String toString() => "${super.toString()}, taxCode: $taxCode, salary: $salary";
}

// Functions
void getAge(age){
  print("I am $age years old from getAge function.");
}

// [double height = 0.0] variable optional
String describe(String name, int age, [double height = 0.0]) {
  String description = "Hello world. I am yander. "
    +"My name has ${name.length} letters. I am $age years old and "
    +"$height meters tall.";
  return description;
}

String ageInTenMoreYears({int age = 0, String name = ""}) {
  String onFuture = "In 10 more years you will have ${age + 10} years."; 
  return onFuture;
}

// Class Two

double printArea(Shape shape) {
  return shape.area;
}

abstract class Shape {
//   computed property
  double get area;
}

class Square implements Shape {
  Square({this.side = 0});
  final double side;
  double get area => side * side;
}

class Circle implements Shape {
  Circle({this.radius = 0});
  final double radius;
  double get area => radius * radius * pi;
}

// Mixins

  class PersonMixin with BMI{
    PersonMixin({this.name = "", this.age = 0, this.height = 0, this.weight = 0});
    final String name;
    final int age;
    final double height;
    final double weight;
    // computed property
    double get bmi => calculateBMI(weight, height);
  }

mixin BMI {
  double calculateBMI(double weight, double height) {
    return weight / (height * height);
  }
}

// Class four : List, Map, Generics, If-else, for, while

bool getOddEven(int number) {
  if (number % 2 == 0) 
    return true;
  else return false;
}

int sum(List<int> numbers) {
  int i = 0;
  int result = 0;
  while(i < numbers.length) {
    result += numbers[i];
    i++;
  }
  return result;
}

int multiplyNumberMany(int value, int times) {
  int result = 0;
  for (int i = 0; i < times; i++) {
    result += value * value;
  }
  return result;
}

// Class five : Clousures, fold method, Enums, 

int sum2(List<int> numbers) {
  return numbers.fold(0, (result, value) => result + value);
}

enum NetworkError {
  badURL,
  timeout,
  resourseNotAvailable,
}

void printError(NetworkError error) {
  switch (error) {
    case NetworkError.badURL:
      print("Bad url.");
      break;
    case NetworkError.timeout:
      print("Time out.");
      break;
    case NetworkError.resourseNotAvailable:
      print("Resourse not available.");
      break;
      
  }
}