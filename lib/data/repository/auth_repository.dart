import 'package:apple_shop/data/datasource/auth_datasource.dart';
import 'package:apple_shop/di/di.dart';
import 'package:apple_shop/util/api_exception.dart';
import 'package:dartz/dartz.dart';

abstract final class IAuthRepository {
  Future<Either<String, String>> register(
      String username, String password, String passwordConfirm);

  Future<Either<String, String>> login(String username, String password);
}

final class AuthRepository implements IAuthRepository {
  final IAuthDataSource _dataSource = locator.get();

  @override
  Future<Either<String, String>> register(
      String username, String password, String passwordConfirm) async {
    try {
      await _dataSource.resgister(username, password, passwordConfirm);
      return right('succeed');
    } on ApiException catch (e) {
      return left('${e.message}');
    }
  }

  @override
  Future<Either<String, String>> login(String username, String password) async {
    try {
      String token = await _dataSource.login(username, password);
      if (token.isNotEmpty) {
        return right('you logged in successfully');
      } else {
        return left('an error occured while logging in');
      }
    } on ApiException catch (e) {
      return left('${e.message}');
    }
  }
}
