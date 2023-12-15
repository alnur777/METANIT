import 'dart:io';

class Movie {
  String _title = "";
  int _time = 0;

  Movie(String title, int time) {
    this._title = title;
    this._time = time;
  }

  String printTitle() {
    return _title;
  }

  String printTime() {
    var time = _time.toString();
    if (time.length < 4) {
      time = "0${_time.toString()}";
    }
    String newTime = "${time.substring(0, 2)}:${time.substring(2)}";
    if (time.length == 0) {
      newTime == "00:00";
      return newTime;
    }
    return newTime;
  }

  double price() {
    double price = 0.0;
    if (900 <= _time && _time < 2000) {
      price = 1500;
    } else if (900 > _time || _time >= 2000) {
      price = 2000;
    }
    return price;
  }
}

void main() {
  Movie Scream1 = Movie("Scream", 1000);
  Movie Scream2 = Movie("Scream", 1130);
  Movie Scream3 = Movie("Scream", 100);
  Movie Scream4 = Movie("Scream", 0000);

  Movie Titanic1 = Movie("Titanic", 1200);
  Movie Titanic2 = Movie("Titanic", 1230);
  Movie Titanic3 = Movie("Titanic", 1830);

  Movie Robocop = Movie("Robocop", 200);
  Movie Robocop2 = Movie("Robocop", 1640);
  Movie Robocop3 = Movie("Robocop", 2000);

  var listOfMovies = [
    Scream1,
    Scream2,
    Titanic1,
    Titanic2,
    Robocop,
    Scream3,
    Robocop2,
    Robocop3,
    Titanic3,
    Scream4
  ];

  List listOfActions = [
    "\t1.Show movies by time",
    "\t2.Show movies by title",
    "\t0.Exit"
  ];

  for (int i = 0; i < listOfActions.length; i++) {
    print(listOfActions[i]);
  }
  print("~ ");
  int? action = int.parse(stdin.readLineSync()!);
  print("--------");
  switch (action) {
    case 1:
      listOfMovies.sort((a, b) => a._time.compareTo(b._time));
      for (int i = 0; i < listOfMovies.length; i++) {
        print(
            "\t${i}.Title: ${listOfMovies[i].printTitle()}\tTime: ${listOfMovies[i].printTime()}\tPrice: ${listOfMovies[i].price().round()}");
      }
      print("--------");
      print("~Movie: ");
      int? session = int.parse(stdin.readLineSync()!);

      print("\tThe number of people: ");
      int? numOfPeople = int.parse(stdin.readLineSync()!);

      print("\tBirthday discount?(Yes/No):");
      String? bDayDiscount = stdin.readLineSync();

      if (bDayDiscount?.toLowerCase() == "y" ||
          bDayDiscount?.toLowerCase() == "yes") {
        print("\tThe number of Bithday discount: ");
        int? numOfbDays = int.parse(stdin.readLineSync()!);
        if (numOfPeople >= 5) {
          double ticketPrice = listOfMovies[session].price();
          var total = ticketPrice * numOfPeople;
          double bDayTickets = ticketPrice * numOfbDays;
          double discount = (total / 100) * 10;
          double bDayTicketDiscount = (bDayTickets / 100) * 10;
          double finalPrice = total - discount - bDayTicketDiscount;

          print("--------");
          print("\tTotal: ${total}");
          print("\tDiscount by number: ${discount}");
          print(
              "\tDiscount by birthday(10% from tickets): ${bDayTicketDiscount}");
          print("--------");
          print("\tYour total: ${finalPrice}");
        }
      } else {
        if (numOfPeople >= 5) {
          double ticketPrice = listOfMovies[session].price();
          var total = ticketPrice * numOfPeople;

          double discount = (total / 100) * 10;

          double finalPrice = total - discount;
          print("--------");
          print("\tTotal: ${total}");
          print("\tDiscount by number: ${discount}");
          print("--------");
          print("\tYour total: ${finalPrice}");
        } else {
          double ticketPrice = listOfMovies[session].price();
          var total = ticketPrice * numOfPeople;

          double discount = (total / 100) * 10;

          double finalPrice = total - discount;
          print("--------");
          print("\tYour total: ${finalPrice}");
        }
      }

      break;

    case 2:
      listOfMovies.sort((a, b) => a._title.compareTo(b._title));
      for (int i = 0; i < listOfMovies.length; i++) {
        print(
            "\t${i}.Title: ${listOfMovies[i].printTitle()}\tTime: ${listOfMovies[i].printTime()}\tPrice: ${listOfMovies[i].price().round()}");
      }
      print("--------");
      print("~Movie: ");

      int? session = int.parse(stdin.readLineSync()!);

      print("\tThe number of people: ");
      int? numOfPeople = int.parse(stdin.readLineSync()!);

      print("\tBirthday discount?(Yes/No):");
      String? bDayDiscount = stdin.readLineSync();

      if (bDayDiscount?.toLowerCase() == "y" ||
          bDayDiscount?.toLowerCase() == "yes") {
        print("\tThe number of Bithday discount: ");
        int? numOfbDays = int.parse(stdin.readLineSync()!);
        if (numOfPeople >= 5) {
          double ticketPrice = listOfMovies[session].price();
          var total = ticketPrice * numOfPeople;
          double bDayTickets = ticketPrice * numOfbDays;
          double discount = (total / 100) * 10;
          double bDayTicketDiscount = (bDayTickets / 100) * 10;
          double finalPrice = total - discount - bDayTicketDiscount;

          print("--------");
          print("\tTotal: ${total}");
          print("\tDiscount by number: ${discount}");
          print(
              "\tDiscount by birthday(10% from tickets): ${bDayTicketDiscount}");
          print("--------");
          print("\tYour total: ${finalPrice}");
        }
      } else {
        if (numOfPeople >= 5) {
          double ticketPrice = listOfMovies[session].price();
          var total = ticketPrice * numOfPeople;

          double discount = (total / 100) * 10;

          double finalPrice = total - discount;
          print("--------");
          print("\tTotal: ${total}");
          print("\tDiscount by number: ${discount}");
          print("--------");
          print("\tYour total: ${finalPrice}");
        } else {
          double ticketPrice = listOfMovies[session].price();
          var total = ticketPrice * numOfPeople;

          double discount = (total / 100) * 10;

          double finalPrice = total - discount;
          print("--------");
          print("\tYour total: ${finalPrice}");
        }
      }
      break;
  }
}
