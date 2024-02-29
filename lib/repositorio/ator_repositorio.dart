import 'package:pmfilmes/dominio/ator.dart';

class AtorRepositorio {
  static List<Ator> list() {
    return <Ator>[
      Ator(id: "aid", nome: "Jenna Ortega", nacionalidade: "Norte-americana"),
      Ator(id: "bid", nome: "Martin Freeman", nacionalidade: "Britânico"),
      Ator(id: "cid", nome: "Gideon Adlon", nacionalidade: "Teuto-americana"),
      Ator(id: "did", nome: "Wagner Moura", nacionalidade: "Brasileiro"),
      Ator(id: "eid", nome: "Anthony Hopkins", nacionalidade: "Galês"),
      Ator(id: "fid", nome: "Cameron Diaz", nacionalidade: "Americana"),
    ];
  }
}
