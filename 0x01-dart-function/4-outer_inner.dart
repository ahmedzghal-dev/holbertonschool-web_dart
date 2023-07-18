void outer(String name, String id) {
  String result = inner();
  List<String> nameParts = name.split(" ");
  String initials = nameParts[0][0].toUpperCase() + "." + nameParts[1];
  print("Hello Agent $initials your id is $id");
}

String inner() {
  return "001";
}
