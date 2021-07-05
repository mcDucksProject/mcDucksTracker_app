
import 'package:get_it/get_it.dart';
import 'package:mcducktracker/shared/services/externalData/binance/binance_public_service.dart';
import 'package:mcducktracker/shared/services/storage/shared_preferences_service.dart';
import 'package:mcducktracker/shared/services/storage/storage_service.dart';

final GetIt getIt = GetIt.instance;

void initGetIt(){
  getIt.registerLazySingleton<StorageService>(() => new SharedPreferencesService());
  getIt.registerLazySingleton<BinancePublicService>(() => new BinancePublicService());
}