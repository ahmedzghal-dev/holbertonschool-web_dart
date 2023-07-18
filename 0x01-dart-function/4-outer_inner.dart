void outer(String name, String id) {
  String result = inner();
  print("Hello Agent $name your id is $result");
}
String inner() {
  return "001";
}