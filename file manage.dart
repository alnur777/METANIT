import 'dart:io';

void main() async {
  var dir = Directory(r""C:\Users\alnur\Downloads\file manage.dart"");
  String text = "Hello world";
  File file = File("hello.txt");
  await file.create();
  await file.writeAsString(text);
  // print(file.absolute.path);

  // printDirContent(dir);
  var lines = await file.readAsLines();
  for (final line in lines) {
    print("\n$line\n");
  }
  // await file.rename("hello2.txt");
  printDirContent(dir);

  // await file.delete();
}

Future<void> printDirContent(Directory dir) async {
  List<FileSystemEntity> content = await dir.list().toList();
  for (int i = 0; i < content.length; i++) {
    print("${content[i]} ");
  }
}
