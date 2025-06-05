import 'package:cinetopia/app/services/search_movies_service.dart';
import 'package:cinetopia/app/viewmodels/search_movies_viewmodel.dart';
import 'package:cinetopia/ui/components/cards/movie_card.dart';
import 'package:cinetopia/ui/components/text/texts.dart';
import 'package:cinetopia/ui/screens/movies_details.dart';
import 'package:flutter/material.dart';

class Releases extends StatefulWidget {
  const Releases({super.key});

  @override
  State<Releases> createState() => _ReleasesState();
}

class _ReleasesState extends State<Releases> {
  final SearchMoviesViewmodel _searchMoviesViewmodel = SearchMoviesViewmodel();
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _searchMoviesViewmodel.getUpcomingMovies(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(child: Image.asset("assets/upcoming.png", height: 80, width: 80)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: text20DefaultColorBold(text: "Próximos Lançamentos", align: TextAlign.center),
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
