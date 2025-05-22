import 'package:cinetopia/ui/components/common_button.dart';
import 'package:cinetopia/ui/styles/app_color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/logo.png"),
          Image.asset("assets/splash.png"),
          Text("O lugar ideal para buscar, salvar e organizar seus filmes favoritos!"),
          CommonButton(
            backGroundColor: AppColor.deepPurple80,
            radius: 50,
            child: Row(children: [Text("Quero começar!"), Icon(Icons.arrow_forward)]),
          ),
        ],
      ),
    );
  }
}
