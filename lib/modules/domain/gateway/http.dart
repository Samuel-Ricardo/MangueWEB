abstract class HttpGateway {
  Future<Object> get([String? url, Map<String, String>? headers]);
  Future<Object> post([String? url, Object data, Map<String, String>? headers]);
  Future<Object> put([String? url, Object data, Map<String, String>? headers]);
  Future<Object> patch(
      [String? url, Object data, Map<String, String>? headers]);
  Future<Object> delete([String? url, Map<String, String>? headers]);
}
