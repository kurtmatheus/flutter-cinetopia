import 'package:cinetopia/app/services/search_movies_service.dart';
import 'package:cinetopia/ui/components/cards/common_card.dart';
import 'package:cinetopia/ui/components/text/texts.dart';
import 'package:flutter/material.dart';

class SearchMovies extends StatelessWidget {
  final SearchMoviesService _searchMoviesService = SearchMoviesService();

  SearchMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _searchMoviesService.searchPopularMovies(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Image.asset("assets/popular.png", height: 80, width: 80),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: text20DefaultColorBold(
                    text: "Filmes Populares",
                    align: TextAlign.center,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 24),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      label: Text("Pesquisar"),
                    ),
                  ),
                ),
              ),
              SliverList.builder(
                itemBuilder: (context, index) => MovieCard(),
                itemCount: 10,
              ),
            ],
          );
        } else {
          return Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}
