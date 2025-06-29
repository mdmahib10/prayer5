import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<String>> getTiming() async {
  List<String> allTime;
  final api_url = 'http://api.aladhan.com/v1';
  final server = await http.get(Uri.parse('http://api.aladhan.com/v1'));
  if (server.statusCode == 200) {
    final data = jsonDecode(server.body);
    final timing = data['data']['timings'];
    final fajr = timing['Fajr'].toString();
    final duhr = timing['Dhuhr'].toString();
    final asr = timing['asr'].toString();
    final magrib = timing['Maghrib'].toString();
    final isha = timing['Isha'].toString();
    allTime = [fajr, duhr, asr, magrib, isha];
  } else {
    throw Exception('Failed to load data');
  }
  return allTime;
}
