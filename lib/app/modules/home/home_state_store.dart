// ignore_for_file: library_private_types_in_public_api

import 'package:caed/app/modules/home/features/domain/interfaces/i_home_usecases.dart';
import 'package:caed/core/errors/get_exception.dart';
import 'package:caed/core/models/info_model.dart';
import 'package:caed/core/models/packages_model.dart';
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
  bool isLoadingInfo = false;

   @observable
  bool isLoadingPackage = false;

  @observable
  List<PackagesModel?> packagesList = [];

  @observable
  List<InfoModel?> infoList = [];



  @action
  Future<Result<List<PackagesModel>, MainException>> getPackages() async {
    try {
      var responseAllPackages = await _homeUseCases.getPackages();
      if (responseAllPackages.isSuccess()) {
        List<PackagesModel> responseListDogs = responseAllPackages.getOrThrow();
        packagesList = responseListDogs;
        isLoadingPackage = true;
        return Success(responseListDogs);
      } else {
        return Result.failure(responseAllPackages.exceptionOrNull()!);
      }
    } catch (e) {
      return Failure(
        MainException(message: e.toString(), catchException: false),
      );
    }
  }

  @action
  Future<Result<List<InfoModel>, MainException>> getInfo() async {
    try {
      var responseAllInfo = await _homeUseCases.getInfo();
      if (responseAllInfo.isSuccess()) {
        List<InfoModel> responseListDogs = responseAllInfo.getOrThrow();
        infoList = responseListDogs;
        isLoadingInfo = true;
        return Success(responseListDogs);
      } else {
        return Result.failure(responseAllInfo.exceptionOrNull()!);
      }
    } catch (e) {
      return Failure(
        MainException(message: e.toString(), catchException: false),
      );
    }
  }
}
