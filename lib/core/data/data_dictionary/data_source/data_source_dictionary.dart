import 'package:dictionary_mobile_flutter/core/core.dart';

abstract class AbstractDataSourceDictionary {
  Future<StateGenerics<Map<String, dynamic>, ErrorEnum>> dataSourceDictionary();
}

class DataSourceDictionary implements AbstractDataSourceDictionary {
final _remoteClient = getIt<AbstractRemoteClient>();

  @override
  Future<StateGenerics<Map<String, dynamic>, ErrorEnum>> dataSourceDictionary() async {
    final response = await _remoteClient.get(
      'baseUrl',
    );
    if (response.statusCode != 200) {
      return StateGenerics.failed(error: ErrorEnum.error);
    }
    return StateGenerics.success(data: response.data);
  }
}