import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:whatsapp_cl/core/platform/network_info.dart';

void main() {
  NetworkInfoImpl networkInfoImpl;

  setUp(() {
    networkInfoImpl = NetworkInfoImpl();
  });

  group('isConnected', () {
    test('should forward call to DataConnectionChecker.hasConnection',
        () async {
      //arrange
      final tHasConnectionFuture = Future.value(true);
      when(networkInfoImpl.isConnected).thenAnswer((_) => tHasConnectionFuture);
      //act
      final result = networkInfoImpl.isConnected;

      //assert
      expect(result, tHasConnectionFuture);
      verify(networkInfoImpl.isConnected);
    });
  });
}
