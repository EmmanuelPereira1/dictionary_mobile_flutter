import 'package:dictionary_mobile_flutter/core/core.dart';
import 'package:dictionary_mobile_flutter/core/data/data_dictionary/data_source/data_source_dictionary.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

setupProviders() {
  getIt.registerLazySingleton<AbstractRemoteClient>(() => RemoteClient());
  getIt.registerLazySingleton<AbstractDataSourceDictionary>(() => DataSourceDictionary());

}