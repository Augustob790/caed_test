import 'package:caed/app/modules/home/features/repositories/interfaces/i_home_repository.dart';
import 'package:caed/core/errors/get_exception.dart';
import 'package:caed/core/models/info_model.dart';
import 'package:caed/core/models/packages_model.dart';
import 'package:dio/dio.dart';
import 'package:result_dart/result_dart.dart';

class HomeRepository implements IHomeRepository {

  final dio = Dio();

   @override
  Future<Result<List<PackagesModel>, MainException>> getPackages() async {
    String url = "https://json-test-pink-five.vercel.app/packages";
    try {
      final result = await dio.get(url);
      if (result.statusCode == 200 && result.data != []) {
        List<PackagesModel> response = (result.data as List).map((e) => PackagesModel.fromMap(e)).toList();
        return Result.success(response);
      } else {
        return Result.failure(MainException(message: "Não foi possivel acessar os dados"));
      }
    } catch (e) {
      return Result.failure(MainException(message: "Não foi possivel acessar os dados"));
    }
  }

   @override
  Future<Result<List<InfoModel>, MainException>> getInfo() async {
    String url = "https://json-test-pink-five.vercel.app/data";
    try {
      final result = await dio.get(url);
      if (result.statusCode == 200 && result.data != []) {
        List<InfoModel> response = (result.data as List).map((e) => InfoModel.fromMap(e)).toList();
        return Result.success(response);
      } else {
        return Result.failure(MainException(message: "Não foi possivel acessar os dados"));
      }
    } catch (e) {
      return Result.failure(MainException(message: "Não foi possivel acessar os dados"));
    }
  }
}
