import 'package:dio/dio.dart';

import '../models/user_model.dart';

class UserService {
  UserService._();

  static const String _baseUrl = 'https://reqres.in/api';

  // GANTI dengan API key dari akun ReqRes kamu.
  // Jangan pakai reqres-free-v1 kalau tetap 401.
  static const String _apiKey = 'free_user_3D18aNT34vVpauZi3TQ0ZPFGMBK';

  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: _baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'x-api-key': _apiKey,
        'X-Reqres-Env': 'prod',
      },
    ),
  );

  static Future<List<UserModel>> fetchUsers({
    int page = 1,
    int perPage = 12,
  }) async {
    try {
      final response = await _dio.get(
        '/users',
        queryParameters: {'page': page, 'per_page': perPage},
      );

      final body = response.data;

      if (body is Map<String, dynamic>) {
        final data = body['data'];

        if (data is List) {
          return data.map((user) => UserModel.fromJson(user)).toList();
        }
      }

      return [];
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw Exception(
          'Unauthorized 401: API key salah, kosong, atau belum diganti.',
        );
      }

      if (e.response?.statusCode == 403) {
        throw Exception(
          'Forbidden 403: API key tidak punya akses atau request ditolak.',
        );
      }

      throw Exception('Gagal mengambil data user: ${e.message}');
    } catch (e) {
      throw Exception('Terjadi kesalahan: $e');
    }
  }
}
