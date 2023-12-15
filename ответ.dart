import 'dart:io';
 
void main() async {
  var server = await HttpServer.bind(InternetAddress.anyIPv6, 8888);
  print("Сервер запущен...");
  await server.forEach((HttpRequest request) {
 
    final response = request.response;
    // добавляем заголовки
    response.headers.add(HttpHeaders.contentTypeHeader, "text/plain; charset=utf-8");
    response.headers.add(HttpHeaders.hostHeader, "metanit.com");
    response.headers.add(HttpHeaders.dateHeader, DateTime.now());
 
    response.write("Hello METANIT.COM");
    response.close();
  });
}