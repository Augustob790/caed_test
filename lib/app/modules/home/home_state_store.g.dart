// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStateStore on _HomeStateStoreBase, Store {
  late final _$isLoadingInfoAtom =
      Atom(name: '_HomeStateStoreBase.isLoadingInfo', context: context);

  @override
  bool get isLoadingInfo {
    _$isLoadingInfoAtom.reportRead();
    return super.isLoadingInfo;
  }

  @override
  set isLoadingInfo(bool value) {
    _$isLoadingInfoAtom.reportWrite(value, super.isLoadingInfo, () {
      super.isLoadingInfo = value;
    });
  }

  late final _$isLoadingPackageAtom =
      Atom(name: '_HomeStateStoreBase.isLoadingPackage', context: context);

  @override
  bool get isLoadingPackage {
    _$isLoadingPackageAtom.reportRead();
    return super.isLoadingPackage;
  }

  @override
  set isLoadingPackage(bool value) {
    _$isLoadingPackageAtom.reportWrite(value, super.isLoadingPackage, () {
      super.isLoadingPackage = value;
    });
  }

  late final _$packagesListAtom =
      Atom(name: '_HomeStateStoreBase.packagesList', context: context);

  @override
  List<PackagesModel?> get packagesList {
    _$packagesListAtom.reportRead();
    return super.packagesList;
  }

  @override
  set packagesList(List<PackagesModel?> value) {
    _$packagesListAtom.reportWrite(value, super.packagesList, () {
      super.packagesList = value;
    });
  }

  late final _$infoListAtom =
      Atom(name: '_HomeStateStoreBase.infoList', context: context);

  @override
  List<InfoModel?> get infoList {
    _$infoListAtom.reportRead();
    return super.infoList;
  }

  @override
  set infoList(List<InfoModel?> value) {
    _$infoListAtom.reportWrite(value, super.infoList, () {
      super.infoList = value;
    });
  }

  late final _$getPackagesAsyncAction =
      AsyncAction('_HomeStateStoreBase.getPackages', context: context);

  @override
  Future<Result<List<PackagesModel>, MainException>> getPackages() {
    return _$getPackagesAsyncAction.run(() => super.getPackages());
  }

  late final _$getInfoAsyncAction =
      AsyncAction('_HomeStateStoreBase.getInfo', context: context);

  @override
  Future<Result<List<InfoModel>, MainException>> getInfo() {
    return _$getInfoAsyncAction.run(() => super.getInfo());
  }

  @override
  String toString() {
    return '''
isLoadingInfo: ${isLoadingInfo},
isLoadingPackage: ${isLoadingPackage},
packagesList: ${packagesList},
infoList: ${infoList}
    ''';
  }
}
