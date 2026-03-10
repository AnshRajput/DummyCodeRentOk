import 'package:dempapp/utils/api_service.dart';
import 'data_model.dart';

class DataRepository {

  final ApiService apiService = ApiService();

  Future<List<Users>> getListOfUsersFromServer() async {

    try {
      final data = await apiService.getRequest(endpoint: "users");

      final DataModel dataModel = DataModel.fromJson(data);

      return dataModel.users ?? [];

    } catch (e) {
      return [];
    }
  }

}