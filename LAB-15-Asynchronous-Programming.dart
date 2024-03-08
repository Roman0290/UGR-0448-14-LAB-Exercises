import 'dart:math';

Future<String> fetchQuote() async {
  await Future.delayed(Duration(seconds: 2)); // Simulating network delay
  List<String> quotes = [
    "Embrace your uniqueness; everyone else is already occupied with their own journey in education."
    "There are two infinite realms: the realm of knowledge and the realm of human ignorance; my conviction lies with the former."
    "In three words, I summarize the essence of learning: it never stops evolving."
    "To excel academically, passion for learning is paramount."
  ];
  Random random = Random();
  int index = random.nextInt(quotes.length);
  return quotes[index];
}

void main() async {
  print("Fetching quote...");
  String quote = await fetchQuote();
  print("Fetched quote: $quote");
}