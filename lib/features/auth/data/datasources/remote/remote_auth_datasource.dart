import 'package:dio/dio.dart';

import '../../../../../core/constants/base_url.dart';
import '../../models/auth_response.dart';
import 'package:retrofit/retrofit.dart';

part 'remote_auth_datasource.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class RemoteAuthDataSource {
  factory RemoteAuthDataSource(Dio dio, {String baseUrl}) =
      _RemoteAuthDataSource;

  @DELETE('user/delete')
  Future<AuthResponse> deleteAccount({
    @Query('accessToken') required String accessToken,
  });

  @POST('user/sign-in')
  Future<AuthResponse> signInWithApple({
    @Query('accessToken') required String accessToken,
    @Body() required Map<String, dynamic> body,
  });
}
