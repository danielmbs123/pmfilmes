import 'package:pmfilmes/dominio/ator.dart';

class AtorRepositorio {
  static List<Ator> list() {
    return <Ator>[
      Ator(id: "aid", nome: "Jenna Ortega", nacionalidade: "EUA"),
      Ator(id: "bid", nome: "Martin Freeman", nacionalidade: "Reino Unido"),
      Ator(id: "cid", nome: "Gideon Adlon", nacionalidade: "EUA"),
      Ator(id: "did", nome: "Wagner Moura", nacionalidade: "Brasil"),
      Ator(id: "eid", nome: "Anthony Hopkins", nacionalidade: "País de Gales"),
      Ator(id: "fid", nome: "Cameron Diaz", nacionalidade: "EUA"),
    ];
  }
}
