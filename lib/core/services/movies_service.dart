import 'package:ballasttest/core/endpoints.dart';
import 'package:ballasttest/core/models/movie.dart';
import 'package:dio/dio.dart';

abstract class MoviesRepository {
  Future<List<Movie>?> getMovies(String? name);
}

class MovieService implements MoviesRepository {
  @override
  Future<List<Movie>?> getMovies(String? name) async {
    try {
      var res = await Dio().get(moviesUrl);
      return List<Movie>.from(res.data.map((x) => Movie.fromJson(x)));
    } on Exception catch (_) {
      rethrow;
    }
  }
}
