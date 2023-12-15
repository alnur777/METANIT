void main() {
  // Function sum = (a, b) => a + b;

  // print("${sum(2, 3)}");
  Function hi = (a, b) => "hi!" * 3;
  print("${hi}");
  // print("------------");
  // operation(2, 3, (a, b) => a + b);
  // operation(4, 2, (a, b) => a / b);
  // print("------------");
  // Function action = select(1);
  // print(action(8, 5));
  // action = select(2);
  // print(action(8, 5));
  // action = select(3);
  // print(action(8, 5));
  // print("------------");
  // showMessage();
  // print("------------");
  // Function fn = outer();
  // fn();
  // fn();
  // fn();
}

void operation(int a, int b, Function op) {
  print(op(a, b));
}

Function select(int choice) {
  switch (choice) {
    case 2:
      return (a, b) => a - b;
    case 3:
      return (a, b) => a * b;
    default:
      return (a, b) => a + b;
  }
}

void showMessage() {
  void hello() {
    print("Hello!");
  }

  hello();
  hello();
}

Function outer() {
  // внешняя функция
  var n = 5; // некоторая переменная - лексическое окружение функции inner
  void inner() {
    // вложенная функция
    // действия с переменной n
    n++;
    print(n);
  }

  return inner;
}
