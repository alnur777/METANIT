Future<void> doWork() async {
  print("Начало функции doWork");
  try {
    String message = await getMessage();
    print("Получено сообщение: $message");
  } catch (e) {
    print("Произошла ошибка: $e");
  }
  print("Завершение функции doWork");
}

Future<String> getMessage() {
  // имитация долгой работы с помощью задержки в 3 секунды
  return Future.delayed(Duration(seconds: 3), () => "Hello Dart");
}

void main() {
  // Future myFuture =
  //     Future(() => print("Hello from future1")); // Создание обьекта Future
  // //с использованием его конструкторов
  // print("future 1");

  // Future future =
  //     Future.delayed(Duration(seconds: 3), () => print("Hello from future2"));
  // print("future 2"); //Создание обьекта Future с задержкой в 3 секунды

  print("Проверка сообщений...");
  getMessage();

  doWork();
  print("Completing function");
}
