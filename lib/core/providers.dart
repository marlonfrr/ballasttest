import 'package:ballasttest/core/movies_notifier.dart';
import 'package:ballasttest/core/services/movies_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final moviesRepositoryProvider =
    Provider<MoviesRepository>((ref) => MovieService());

final moviesProvider = StateNotifierProvider(
    (ref) => MoviesNotifier(ref, ref.watch(moviesRepositoryProvider)));

final moviesSearchTermProvider = StateProvider<String>((ref) => "");
