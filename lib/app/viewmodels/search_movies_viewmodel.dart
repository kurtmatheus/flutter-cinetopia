import 'package:cinetopia/app/models/movie.dart';
import 'package:cinetopia/app/services/search_movies_service.dart';

class SearchMoviesViewmodel {
  List<Movie> _moviesList = <Movie>[];

  List<Movie> get moviesList => _moviesList;

  Future<List<Movie>> getPopularMovies() async {
    final SearchMoviesService searchMoviesService = SearchPopularMoviesService();
    _moviesList = await searchMoviesService.getMovies();
    return _moviesList;
  }

  Future<List<Movie>> getSearchMovies(String query) async {
    if (query.isEmpty) {
      _moviesList = await getPopularMovies();
    } else {
      final SearchMoviesService searchMoviesService = SearchForMovieService(query);
      _moviesList = await searchMoviesService.getMovies();
    }
    return _moviesList;
  }

  Future<List<Movie>> getUpcomingMovies() async {
    final SearchMoviesService searchMoviesService = SearchUpcomingMovieService();
    _moviesList = await searchMoviesService.getMovies();
    return _moviesList;
  }
}
