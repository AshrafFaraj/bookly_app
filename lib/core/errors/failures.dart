import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('bad Certificate with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('request ro ApiServer was canceled');
      case DioExceptionType.connectionError:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('no internet Connection');
        }
      case DioExceptionType.unknown:
        return ServerFailure('Unexpected Error, Please try later!');
    }
    return ServerFailure('Opps There was an Error, Please try again');
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('your request not found, please try later');
    } else if (statusCode == 500) {
      return ServerFailure('internal Server error, please try later');
    } else {
      return ServerFailure('Opps There was an Error, Please try again');
    }
  }
}
// class ServerFailure extends Failure {
//   ServerFailure(super.errMessage);

//   factory ServerFailure.fromDioError(DioError dioError) {
//     switch (dioError.type) {
//       case DioErrorType.connectTimeout:
//         return ServerFailure('Connection timeout with ApiServer');

//       case DioErrorType.sendTimeout:
//         return ServerFailure('Send timeout with ApiServer');

//       case DioErrorType.receiveTimeout:
//         return ServerFailure('Receive timeout with ApiServer');

//       case DioErrorType.response:
//         return ServerFailure.fromResponse(
//             dioError.response!.statusCode, dioError.response!.data);
//       case DioErrorType.cancel:
//         return ServerFailure('Request to ApiServer was canceld');

//       case DioErrorType.other:
//         if (dioError.message.contains('SocketException')) {
//           return ServerFailure('No Internet Connection');
//         }
//         return ServerFailure('Unexpected Error, Please try again!');
//       default:
//         return ServerFailure('Opps There was an Error, Please try again');
//     }
//   }

//   factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
//     if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
//       return ServerFailure(response['error']['message']);
//     } else if (statusCode == 404) {
//       return ServerFailure('Your request not found, Please try later!');
//     } else if (statusCode == 500) {
//       return ServerFailure('Internal Server error, Please try later');
//     } else {
//       return ServerFailure('Opps There was an Error, Please try again');
//     }
//   }
// }
