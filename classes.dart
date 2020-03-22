
class Person {
  String name;
  int age;

  // inicializador com idade opcional
  Person(String name, [int age = 18]) {
    this.name = name;
    this.age = age;
  }

  // outra forma de escrever
  // Person(this.name, [this.age = 18]);

  // named constructor
  Person.guest() {
    name = "Guest";
    age = 18;
  }

  void showOutput() {
    print(name);
    print(age);
  }
}

class X {
  final name; // depois de atribuido um valor, não pode ser alterado
  static const int age  = 10;

  X(this.name);
}

void main() {
  Person person1 = Person("Pedro", 23);
  person1.showOutput();

  var person2 = Person("Jack Sparrow", 32);
  person2.showOutput();

  var person3 = Person.guest();
  person3.showOutput();

  var x = X("Jack");
}