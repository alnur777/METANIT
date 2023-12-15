void main() {
  //  Применение конструкции try..catch..finally
  try {
    int x = 9;
    int y = 0;
    int z = x ~/ y;

    print(z);
  } catch (e) {
    print("\n Возникло исключение $e");
  } finally {
    print(" Выполнение блока finally");
  }
  print(" Завершение программы\n");

  try {
    Person tom = Person("Tom", -45);
    print(tom.age);
  } on AgeException catch (e) {
    print(e);
    print(e.value);
  }
}

class Person {
  String name;
  int age = 1;

  Person(this.name, age) {
    if (age < 1 || age > 110) {
      throw AgeException; //Вызов ошибки, в случае,
      //недопустимого значения возраста
    }
    this.age = age; // если возраст корректный, устанавливем его
  }
}

//Генерирование собственного исключения AgeException
class AgeException implements Exception {
  int value;
  AgeException(this.value);
  @override
  String toString() => "Недопустимый возраст";
}

//Ошибки в Dart:
// DeferredLoadException
// FormatException
// IntegerDivisionByZeroException (помечен как устаревший)
// IOException
// FileSystemException
// PathNotFoundException
// HttpException
// RedirectException
// ProcessException
// SignalException
// SocketException
// StdinException
// StdoutException
// TlsException
// CertificateException
// HandshakeException
// WebSocketException
// IsolateSpawnException
// TimeoutException
// NullRejectionException
// OSError
// Также есть много типов ошибок для различных ситуаций:
// ArgumentError
// IndexError
// RangeError
// AssertionError
// AsyncError
// ConcurrentModificationError
// JsonUnsupportedObjectError
// JsonCyclicError
// NoSuchMethodError
// OutOfMemoryError
// RemoteError
// StackOverflowError
// StateError
// TypeError
// UnimplementedError
// UnsupportedError
