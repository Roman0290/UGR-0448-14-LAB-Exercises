Future<List<String>> fetchDataFromDatabase() async {
  await Future.delayed(Duration(seconds: 2)); // Simulating database delay
  List<String> data = ["John Doe", "Jane Smith", "Bob Johnson"];
  return data;
}

void main() async {
  print("Loading data from database...");
  List<String> data = await fetchDataFromDatabase();
  print("Data loaded: $data");
}