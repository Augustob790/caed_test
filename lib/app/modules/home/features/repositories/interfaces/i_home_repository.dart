import 'package:caed/core/errors/get_exception.dart';
import 'package:caed/core/models/info_model.dart';
import 'package:caed/core/models/packages_model.dart';
import 'package:result_dart/result_dart.dart';

abstract class IHomeRepository {
  Future<Result<List<PackagesModel>, MainException>> getPackages();
  
  Future<Result<List<InfoModel>, MainException>> getInfo();
}
