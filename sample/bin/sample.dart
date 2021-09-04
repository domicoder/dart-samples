import 'package:sample/sample.dart' as sample;

// void main(List<String> arguments) {
//   print('Hello world: ${sample.calculate()}!');
// }

// Flutter & Firebase
// https://courses.codewithandrea.com/

void main(List<String> arguments) {
//   Variable declaration | variable initialization
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



