import 'package:flutter/material.dart';
import 'package:pmfilmes/page/ator_page.dart';
import 'package:pmfilmes/page/filter_page.dart';
import 'package:pmfilmes/page/genero_page.dart';
import 'package:pmfilmes/page/home_page.dart';
import 'package:pmfilmes/page/login_page.dart';
import 'package:pmfilmes/repositorio/ator_repositorio.dart';
import 'package:pmfilmes/repositorio/genero_repositorio.dart';
import 'package:pmfilmes/vm/ator_view_model.dart';
import 'package:pmfilmes/vm/genero_view_model.dart';
import 'package:provider/provider.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => GeneroViewModel(
            generos: GeneroRepositorio.list(),
          ),
        ),
        ChangeNotifierProvider(
          create: (_) => AtorViewModel(
            atores: AtorRepositorio.list(),
          ),
        ),
      ],
      child: MaterialApp(
        title: "PMFilmes",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        ),
        initialRoute: "/login",
        routes: {
          "/": (context) => const HomePage(),
          "/filter": (context) => const FilterPage(),
          "/genero": (context) => const GeneroPage(),
          "/ator": (context) => const AtorPage(),
          "/login": (context) => const LoginPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
