import 'package:cinetopia/ui/components/button_trailing_icon.dart';
import 'package:cinetopia/ui/components/texts.dart';
import 'package:cinetopia/ui/screens/search_movies.dart';
import 'package:cinetopia/ui/styles/app_color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColor.black, AppColor.deepPurple80],
            begin: Alignment.topCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Image.asset("assets/logo.png"),
                ),
                Image.asset("assets/splash.png"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Text20DefaultColorBold(
                    text:
                        "O lugar ideal para buscar, salvar e organizar seus filmes favoritos!",
                    align: TextAlign.center,
                  ),
                ),
                ButtonTrailingIcon(
                  backGroundColor: AppColor.lightPurple80,
                  radius: 50,
                  text: Text20SelectColorBold(
                    text: "Quero Começar",
                    color: AppColor.deepPurple80,
                  ),
                  icon: Icon(Icons.arrow_forward, color: AppColor.deepPurple80),
                  onTap:
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SearchMovies()),
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
