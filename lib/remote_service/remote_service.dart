import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:jokes_app/model/joke_model.dart';

class RemoteService {
  static var client = http.Client();

  static Future<JokeModel?> fetchJokes() async {
    try {
      var response = await client
          .get(Uri.parse("https://api.chucknorris.io/jokes/random"));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        return jokeModelFromJson(jsonString);
      } else {
        return null;
      }
    } catch (e) {
      Get.snackbar("Message", e.toString());
    }
  }
}
