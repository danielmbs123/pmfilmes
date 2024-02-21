import 'package:pmfilmes/dominio/genero.dart';

class GeneroRepositorio {
  static List<Genero> list() {
    //TODO vamos chamar o backend ao inves de ter o codigo abaixo
    return <Genero>[
      Genero(id: "a1", nome: "Terror"),
      Genero(id: "a2", nome: "Suspense"),
      Genero(id: "a3", nome: "Drama"),
      Genero(id: "a5", nome: "Comédia"),
      Genero(id: "a4", nome: "Romance"),
      Genero(id: "a6", nome: "Documentário"),
    ];
  }
}
