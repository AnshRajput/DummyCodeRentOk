import 'package:dempapp/data/data_model.dart';
import 'package:dempapp/data/data_repository.dart';
import 'package:get/get.dart';

class DataController extends GetxController {

  final DataRepository repository = DataRepository();

  var taskList = <Users>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  Future<void> getData() async {

    try {
      isLoading.value = true;


      final data = await repository.getListOfUsersFromServer();

      if (data.isNotEmpty) {
        taskList.value = data;
     

      }

    } catch (e) {
      taskList.clear();
    }

      isLoading.value = false;


  }

}