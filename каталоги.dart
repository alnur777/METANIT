import 'dart:io';

void main() async {
  var myDir = Directory(r"C:\Users\Sagadat\Documents\AIU-Cross-Plat\Dart-file");
  print("\n${Directory.current}");
  print(Directory.systemTemp);
  print("${myDir.path}\n");

  var dir2 = Directory.current;
  var dirStat = await dir2.stat();
  print("\n$dirStat");

  var dir3 = Directory(
      "${myDir.path}\\hello"); // Specify the complete path for the new directory
  await dir3.create();

  await printDir(myDir);

  await dir3.rename("world");

  await printDir(myDir);
}

Future<void> printDir(Directory directory) async {
  try {
    await for (var entity in directory.list()) {
      if (entity is File) {
        print("File: ${entity.path}");
      } else if (entity is Directory) {
        print("\nDirectory: ${entity.path}\n");
        await printDir(entity);
      }
    }
  } catch (ex) {
    print(ex);
  }
}
