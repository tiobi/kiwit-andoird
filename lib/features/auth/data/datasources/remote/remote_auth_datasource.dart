import 'package:dio/dio.dart';
import 'package:kiwit/features/auth/data/models/auth_model.dart';

import '../../../../../core/constants/base_url.dart';
import 'package:retrofit/retrofit.dart';

part 'remote_auth_datasource.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class RemoteAuthDataSource {
  factory RemoteAuthDataSource(Dio dio, {String baseUrl}) =
      _RemoteAuthDataSource;

  @POST('user/sign-in')
  Future<HttpResponse> signIn({
    @Body() required AuthModel body,
  });

  @POST('user/sign-up')
  Future<HttpResponse> signUp({
    @Body() required AuthModel body,
  });

  @PATCH('user/sign-out')
  Future<HttpResponse> signOut({
    @Header('Authorization') required String accessToken,
  });

  @DELETE('user')
  Future<HttpResponse> deleteAccount({
    @Header('Authorization') required String accessToken,
  });
}
