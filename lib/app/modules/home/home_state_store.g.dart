// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStateStore on _HomeStateStoreBase, Store {
  late final _$listDogsAtom =
      Atom(name: '_HomeStateStoreBase.listDogs', context: context);

  @override
  List<DogsModel?> get listDogs {
    _$listDogsAtom.reportRead();
    return super.listDogs;
  }

  @override
  set listDogs(List<DogsModel?> value) {
    _$listDogsAtom.reportWrite(value, super.listDogs, () {
      super.listDogs = value;
    });
  }

  late final _$getAllDogsAsyncAction =
      AsyncAction('_HomeStateStoreBase.getAllDogs', context: context);

  @override
  Future<Result<List<DogsModel>, MainException>> getAllDogs() {
    return _$getAllDogsAsyncAction.run(() => super.getAllDogs());
  }

  @override
  String toString() {
    return '''
listDogs: ${listDogs}
    ''';
  }
}
