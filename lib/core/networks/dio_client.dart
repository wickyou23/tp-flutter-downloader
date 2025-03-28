import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:tp_flutter_downloader/core/flavor/app_flavor.dart';
import 'package:tp_flutter_downloader/core/networks/models/requests/base_request.dart';

@lazySingleton
class DioClient {
  final AppFlavor appFlavor;

  late final Dio _dio;
  Dio get dio => _dio;

  DioClient(this.appFlavor) {
    _dio = Dio();

    final prettyLog = PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true,
      compact: true,
      maxWidth: 90,
    );

    _dio.interceptors.add(InterceptorsWrapper(
      onError: (error, handler) => prettyLog.onError(error, handler),
      onRequest: (options, handler) => prettyLog.onRequest(options, handler),
      onResponse: (response, handler) {
        final responseType = response.requestOptions.responseType;
        if (responseType == ResponseType.json ||
            responseType == ResponseType.plain) {
          prettyLog.onResponse(response, handler);
        } else {
          debugPrint("Response Data: [Binary Data - Skipped]");
          handler.next(response);
        }
      },
    ));

    _dio.options = BaseOptions(
      baseUrl: appFlavor.baseUrl,
      connectTimeout: Duration(minutes: 1),
      receiveTimeout: Duration(minutes: 1),
    );
  }

  // @postConstruct
  // void init() {
  //   _dio = Dio();
  //   // _dio.httpClientAdapter = IOHttpClientAdapter(
  //   //   createHttpClient: () {
  //   //     return HttpClient()
  //   //       ..badCertificateCallback =
  //   //           (X509Certificate cert, String host, int port) {
  //   //         return true;
  //   //       };
  //   //   },
  //   // );

  //   final prettyLog = PrettyDioLogger(
  //     requestHeader: true,
  //     requestBody: true,
  //     responseBody: true,
  //     responseHeader: true,
  //     compact: true,
  //     maxWidth: 90,
  //   );

  //   _dio.interceptors.add(InterceptorsWrapper(
  //     onError: (error, handler) => prettyLog.onError(error, handler),
  //     onRequest: (options, handler) => prettyLog.onRequest(options, handler),
  //     onResponse: (response, handler) {
  //       final responseType = response.requestOptions.responseType;
  //       if (responseType == ResponseType.json ||
  //           responseType == ResponseType.plain) {
  //         prettyLog.onResponse(response, handler);
  //       } else {
  //         debugPrint("Response Data: [Binary Data - Skipped]");
  //         handler.next(response);
  //       }
  //     },
  //   ));

  //   _dio.options = BaseOptions(
  //     baseUrl: 'http://10.0.2.2:8000',
  //     connectTimeout: Duration(minutes: 1),
  //     receiveTimeout: Duration(minutes: 1),
  //   );
  // }
}

extension DioClientExtension<T> on DioClient {
  Future<Response<T>> get(BaseRequest request, {Options? options}) async {
    final options0 = options ?? Options(headers: request.headers);

    return await dio.get(
      request.path,
      queryParameters: request.queryParameters,
      options: options0,
    );
  }

  Future<Response<T>> post(BaseRequest request, {Options? options}) async {
    final options0 = options ?? Options(headers: request.headers);
    return await dio.post(
      request.path,
      queryParameters: request.queryParameters,
      data: request.body,
      options: options0,
    );
  }

  Future<Response<dynamic>> download(BaseDownloadRequest request,
      {Options? options, Function(int, int)? onReceiveProgress}) async {
    final options0 = options ?? Options(headers: request.headers);
    return await dio.download(
      request.path,
      request.filePath,
      queryParameters: request.queryParameters,
      data: request.body,
      options: options0,
      onReceiveProgress: onReceiveProgress,
      deleteOnError: true,
    );
  }

  // Future<File> httpDownload(BaseDownloadRequest request,
  //     {Options? options, Function(int, int)? onReceiveProgress}) async {
  //   final Uri uri = Uri.parse("http://10.0.2.2:8000${request.path}");
  //   final http.Client client = http.Client();
  //   final http.Request req = http.Request('GET', uri);
  //   req.body = jsonEncode(request.body);
  //   req.headers.addAll(
  //     {
  //       "Connection": "Keep-Alive",
  //       "Accept-Encoding": "identity",
  //       "Content-Type": "application/json",
  //     },
  //   );

  //   final http.StreamedResponse response =
  //       await client.send(req).timeout(Duration(seconds: 60));
  //   final file = File(request.filePath);
  //   final sink = file.openWrite();
  //   final totalSize = response.contentLength ?? -1;

  //   await response.stream.forEach((chunk) {
  //     sink.add(chunk);
  //     onReceiveProgress?.call(
  //       chunk.length,
  //       totalSize,
  //     );
  //   });

  //   await sink.close();
  //   client.close();
  //   return file;
  // }
}
