import 'dart:convert';

import 'package:http/http.dart' as http;

abstract class HttpClient {
  Future<http.Response> get(String url);
  Future<http.Response> post(
    String url, {
    Map<String, String> headers,
    body,
    Encoding encoding,
  });
  Future<http.Response> put(
    String url, {
    Map<String, String> headers,
    body,
    Encoding encoding,
  });
  Future<http.Response> delete(String url);
}

class HttpClientImpl implements HttpClient {
  final http.Client _client;

  HttpClientImpl(this._client);

  @override
  Future<http.Response> get(String url) async {
    final uri = Uri.parse(url);

    return await _client.get(uri);
  }

  @override
  Future<http.Response> post(
    String url, {
    Map<String, String>? headers,
    body,
    Encoding? encoding,
  }) async {
    final uri = Uri.parse(url);

    return await _client.post(
      uri,
      headers: headers,
      body: body,
      encoding: encoding,
    );
  }

  @override
  Future<http.Response> put(
    String url, {
    Map<String, String>? headers,
    body,
    Encoding? encoding,
  }) async {
    final uri = Uri.parse(url);

    return await _client.put(
      uri,
      headers: headers,
      body: body,
      encoding: encoding,
    );
  }

  @override
  Future<http.Response> delete(String url) async {
    final uri = Uri.parse(url);

    return await _client.delete(uri);
  }
}
