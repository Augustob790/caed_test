import 'package:dio/dio.dart';
import 'package:caed/app/modules/home/features/repositories/interfaces/i_home_repository.dart';
import 'package:caed/core/errors/get_exception.dart';
import 'package:caed/core/models/dogs_model.dart';
import 'package:result_dart/result_dart.dart';

class HomeRepository implements IHomeRepository {

  final dio = Dio();
  @override
  Future<Result<List<DogsModel>, MainException>> getDogs() async {
    String url = "https://api.thedogapi.com/v1/breeds?limit=10";
    try {
      final result = await dio.get(url);
      if (result.statusCode == 200 && result.data != []) {
        List<DogsModel> response = (result.data as List).map((e) => DogsModel.fromMap(e)).toList();
        return Result.success(response);
      } else {
        return Result.failure(MainException(message: "Não foi possivel acessar os dados"));
      }
    } catch (e) {
      return Result.failure(MainException(message: "Não foi possivel acessar os dados"));
    }
  }
}
