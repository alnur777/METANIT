class Hall {
  int _numOfSeats = 0;
  String hallName = "";

  Hall(int numOfSeats, String hallName) {
    this.hallName = hallName;
    this._numOfSeats = numOfSeats;
  }

  String printHallName() {
    return hallName;
  }

  int printNumOfSeats() {
    return this._numOfSeats;
  }
}

class Movie {
  String _title = "";
  int _time = 0;
  bool _ageRestriction = false;
  Hall hall = Hall(20, "hallName");

  Movie(String title, int time, Hall hall, bool ageRestriction) {
    this._title = title;
    this._time = time;
    this.hall = hall;
    this._ageRestriction = ageRestriction;
  }

  String printTitle() {
    return this._title;
  }

  bool printAgeRestriction() {
    return this._ageRestriction;
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
  Hall hall = Hall(120, "Hall 1");
  Movie Scream1 = Movie("Scream", 1000, hall, true);

  print(
      "Title: ${Scream1.printTitle()}\tTime: ${Scream1.printTime()}\tHall: ${Scream1.hall.hallName}\t18+");
}
