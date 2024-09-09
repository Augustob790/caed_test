import 'package:caed/core/errors/get_exception.dart';
import 'package:caed/core/models/info_model.dart';
import 'package:caed/core/models/packages_model.dart';
import 'package:result_dart/result_dart.dart';

import 'interfaces/i_home_usecases.dart';

class HomeUseCases extends IHomeUseCases {
  HomeUseCases({required super.homeRepository});

  @override
  Future<Result<List<PackagesModel>, MainException>> getPackages() async {
    return await homeRepository.getPackages();
  }

  @override
  Future<Result<List<InfoModel>, MainException>> getInfo() async {
    return await homeRepository.getInfo();
  }
}
