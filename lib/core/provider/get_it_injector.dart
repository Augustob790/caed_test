import 'package:get_it/get_it.dart';
import 'package:caed/app/modules/home/features/domain/home_usecases.dart';
import 'package:caed/app/modules/home/features/repositories/home_repository.dart';
import 'package:caed/app/modules/home/home_state_store.dart';

final getIt = GetIt.instance;

setupProviders() {
  getIt.registerLazySingleton<HomeRepository>(() => HomeRepository());
  getIt.registerLazySingleton<HomeUseCases>(
    () => HomeUseCases(homeRepository: getIt<HomeRepository>()),
  );
  getIt.registerLazySingleton<HomeStateStore>(
    () => HomeStateStore(homeUseCases: getIt<HomeUseCases>()),
  );
}
