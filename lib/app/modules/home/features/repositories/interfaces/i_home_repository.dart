import 'package:caed/core/errors/get_exception.dart';
import 'package:caed/core/models/dogs_model.dart';
import 'package:result_dart/result_dart.dart';

abstract class IHomeRepository{

  Future<Result<List<DogsModel>, MainException>> getDogs();

}