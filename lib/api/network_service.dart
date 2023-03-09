import 'package:http/http.dart' as http;

class NetworkService {
  Future<http.Response> get(String url) async {
    final response = await http.get(Uri.parse(url));

    return response;
  }
}
