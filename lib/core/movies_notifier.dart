import 'package:ballasttest/core/models/movie.dart';
import 'package:ballasttest/core/services/movies_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MoviesNotifier extends StateNotifier<AsyncValue<List<Movie>>> {
  final ProviderReference ref;
  final MoviesRepository _moviesRepository;
  MoviesNotifier(this.ref, this._moviesRepository)
      : super(const AsyncValue.loading()) {
    getMovies();
  }

  Future<void> getMovies() async {
    String searchTerm = '';
    // TODO Implement search using moviesSearchTermProvider
    final List<Movie>? movies = await _moviesRepository.getMovies(searchTerm);
    if (movies != null) {
      state = AsyncValue.data(movies);
    } else {
      state = AsyncError('Error');
    }
  }
}
