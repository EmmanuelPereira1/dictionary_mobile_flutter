import 'package:dictionary_mobile_flutter/core/core.dart';

abstract class AbstractRepositoryDictionary {
  Future<StateGenerics<Map<String, dynamic>, ErrorEnum>> repositoryDictionary();
}

class RepositoryDictionary implements AbstractRepositoryDictionary {
final _dataSourceDictionary = getIt<AbstractDataSourceDictionary>();

  @override
  Future<StateGenerics<Map<String, dynamic>, ErrorEnum>> repositoryDictionary() async {
    final resource = await _dataSourceDictionary.dataSourceDictionary(

    );
    
    if (resource.hasError) {
      return StateGenerics.failed(error: ErrorEnum.error);
    }
    return StateGenerics.success(data: resource.data);
  }
}