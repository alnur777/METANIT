class Student {
  //notnull инициализация
  String? firstname = "";
  String? lastname = "";

  //Константное значение
  final schoolName = "AIU";

  //статические значения
  static int passTestScore = 50;

  //отложенная инициализация
  late int age;
  late int testScore;

  //конструкторы
  Student(String firstname, String lastname, int tesScore) {
    this.firstname = firstname;
    this.lastname = lastname;
    this.testScore = tesScore;
  }

  //функция вывода имени и фамилии
  void displayStudent() {
    print(
        """Firstname: $firstname| Lastname: $lastname| Age: $age| School: $schoolName| Test Reult: ${testResult(testScore)}| Test Score: $testScore """);
  }

  String testResult(int testScore) {
    if (testScore > passTestScore) {
      return "Pass";
    } else {
      return "Did not pass";
    }
  }

  //гетеры и сетеры
  void setAge(int age) {
    this.age = age;
  }

  String? getFirstname() {
    return firstname;
  }

  String? getLastname() {
    return lastname;
  }
}

void main() {
  //инициализация класса
  Student student1 = Student("Firstname", "Lastname", 90);
  Student student2 = Student("Firstname2", "Lastname2", 49);

  student1.setAge(18);
  student2.setAge(19);

  student1.displayStudent();
  student2.displayStudent();
}
