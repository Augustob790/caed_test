import 'package:caed/core/errors/get_exception.dart';
import 'package:caed/core/models/dogs_model.dart';
import 'package:result_dart/result_dart.dart';

import 'interfaces/i_home_usecases.dart';

class HomeUseCases extends IHomeUseCases {
  HomeUseCases({required super.homeRepository});

  @override
 Future<Result<List<DogsModel>, MainException>> getAllDogs() async {
    return await homeRepository.getDogs();
  }
}
