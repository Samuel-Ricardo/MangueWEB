import 'package:mangueweb/modules/domain/gateway/sse.dart';

class NativeServerSentEventsGateway implements SSEGateway {
  final String _url;

  NativeServerSentEventsGateway(this._url);

  @override
  Stream<String> subscribe(String path) {
    // TODO: implement subscribe
    throw UnimplementedError();
  }
}
