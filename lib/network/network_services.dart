import 'package:dio/dio.dart';
import 'package:movies_app/network/endpoints.dart';
import 'package:movies_app/widgets/resources/resources_model.dart';

class NetworkServices {
  static final Dio _dio = Dio(BaseOptions(baseUrl: Endpoints.baseUrl));
static Future<Resources_model?> getListMovies(String quality) async {
  try {
    Response response = await _dio.get(
      Endpoints.list_Movies,
      queryParameters: {
        "quality": quality,
      },
    );

    if (response.statusCode == 200 &&
        response.data["status"].toString().toLowerCase() == "ok") {
      return Resources_model.fromJson(response.data);
    }

    return null;
  } catch (e) {
    throw Exception(e.toString());
  }
}

  static getMovieDetails() {}
  static getMovieSuggestions() {}
  static getMovieParentalGuides() {}
}
