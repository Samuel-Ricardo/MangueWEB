abstract class HttpGateway {
  Object get();
  Object post(Object data);
  Object put(Object data);
  Object patch(Object data);
  Object delete();
}
