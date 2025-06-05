import 'package:cinetopia/app/services/search_movies_service.dart';
import 'package:cinetopia/app/viewmodels/search_movies_viewmodel.dart';
import 'package:cinetopia/ui/components/cards/movie_card.dart';
import 'package:cinetopia/ui/components/text/texts.dart';
import 'package:cinetopia/ui/screens/movies_details.dart';
import 'package:flutter/material.dart';

class SearchMovies extends StatefulWidget {
  const SearchMovies({super.key});

  @override
  State<SearchMovies> createState() => _SearchMoviesState();
}

class _SearchMoviesState extends State<SearchMovies> {
  final SearchMoviesViewmodel _searchMoviesViewmodel = SearchMoviesViewmodel();
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _searchMoviesViewmodel.getSearchMovies(textEditingController.text),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(child: Image.asset("assets/popular.png", height: 80, width: 80)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: text20DefaultColorBold(text: "Filmes Populares", align: TextAlign.center),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 24),
                  child: TextField(
                    controller: textEditingController,
                    onEditingComplete: () {
                      FocusScope.of(context).unfocus();
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      label: Text("Pesquisar"),
                    ),
                  ),
                ),
              ),
              SliverList.builder(
                itemBuilder: (context, index) => MovieCard(
                  movie: snapshot.data![index],
                  onClick: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MoviesDetails(movie: snapshot.data![index])),
                  ),
                ),
                itemCount: snapshot.data!.length,
              ),
            ],
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
