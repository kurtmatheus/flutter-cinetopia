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

}