import 'dart:convert';

import 'package:cinetopia/app/models/movie.dart';
import 'package:cinetopia/app/util/const.dart';
import 'package:http/http.dart' as http;

abstract class SearchMoviesService {
  Future<List<Movie>> getMovies();
}

class SearchPopularMoviesService implements SearchMoviesService {
  final List<Movie> movies = <Movie>[];

  @override
  Future<List<Movie>> getMovies() async {
    try {
      final response = await http.get(
        Uri.parse(popularMoviesUrl),
        headers: requestHeader,
      );

      if (response.statusCode == 200) {
        for (dynamic movie in json.decode(response.body)["results"]) {
          movies.add(Movie.fromMap(movie));
        }
        return movies;
      } else {
        throw Exception(response.body);
      }
    } catch (e) {
      print(e);
      return movies;
    }
  }
}

class SearchForMovieService implements SearchMoviesService {
  final List<Movie> movies = <Movie>[];

  final String query;

  SearchForMovieService(this.query);

  @override
  Future<List<Movie>> getMovies() async {
    try {
      final response = await http.get(
        Uri.parse("$movieUrlPrefix$query$movieFilterSufix"),
        headers: requestHeader,
      );

      if (response.statusCode == 200) {
        for (dynamic movie in json.decode(response.body)["results"]) {
          movies.add(Movie.fromMap(movie));
        }
        return movies;
      } else {
        throw Exception(response.body);
      }
    } catch (e) {
      print(e);
      return movies;
    }
  }
}

class SearchUpcomingMovieService implements SearchMoviesService {
  final List<Movie> movies = <Movie>[];

  @override
  Future<List<Movie>> getMovies() async {
    try {
      final response = await http.get(
        Uri.parse(upcomingMoviesUrl),
        headers: requestHeader,
      );

      if (response.statusCode == 200) {
        for (dynamic movie in json.decode(response.body)["results"]) {
          movies.add(Movie.fromMap(movie));
        }
        return movies;
      } else {
        throw Exception(response.body);
      }
    } catch (e) {
      print(e);
      return movies;
    }
  }
}
