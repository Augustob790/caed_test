// ignore_for_file: library_private_types_in_public_api

import 'package:caed/app/modules/home/features/domain/interfaces/i_home_usecases.dart';
import 'package:caed/core/errors/get_exception.dart';
import 'package:caed/core/models/dogs_model.dart';
import 'package:mobx/mobx.dart';
import 'package:result_dart/result_dart.dart';

part 'home_state_store.g.dart';

class HomeStateStore extends _HomeStateStoreBase with _$HomeStateStore {
  HomeStateStore({
    required super.homeUseCases,
  });
}

abstract class _HomeStateStoreBase with Store {
  late IHomeUseCases _homeUseCases;

  _HomeStateStoreBase({
    required IHomeUseCases homeUseCases,
  }) {
    _homeUseCases = homeUseCases;
  }
  @observable
  List<DogsModel?> listDogs = [];

  @action
  Future<Result<List<DogsModel>, MainException>> getAllDogs() async {
    try {
      var responseAllDogs = await _homeUseCases.getAllDogs();
      if (responseAllDogs.isSuccess()) {
        List<DogsModel> responseListDogs = responseAllDogs.getOrThrow();
        listDogs = responseListDogs;
        return Success(responseListDogs);
      } else {
        return Result.failure(responseAllDogs.exceptionOrNull()!);
      }
    } catch (e) {
      return Failure(
        MainException(message: e.toString(), catchException: false),
      );
    }
  }
}
