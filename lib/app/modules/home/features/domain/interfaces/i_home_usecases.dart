import 'package:caed/app/modules/home/features/repositories/interfaces/i_home_repository.dart';
import 'package:caed/core/errors/get_exception.dart';
import 'package:caed/core/models/dogs_model.dart';
import 'package:result_dart/result_dart.dart';

abstract class IHomeUseCases{
  final IHomeRepository homeRepository;

  IHomeUseCases({required this.homeRepository});

  Future<Result<List<DogsModel>, MainException>> getAllDogs();
}