import 'package:get/get.dart';
import 'package:jokes_app/model/joke_model.dart';
import 'package:jokes_app/remote_service/remote_service.dart';

class JokeController extends GetxController {
  var joke = JokeModel(
    categories: [],
    iconUrl: ' ',
    id: '',
    url: '',
    value: '',
  ).obs;
  var isLoading = true.obs;

  Future getJokes() async {
    try {
      isLoading(true);
      var data = await RemoteService.fetchJokes();
      if (data != null) {
        joke.value = data;
      }
    } catch (e) {
      Get.snackbar("Message", e.toString());
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    super.onInit();
    getJokes();
  }
}
