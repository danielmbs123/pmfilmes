import 'package:flutter/material.dart';
import 'package:pmfilmes/page/ator_page.dart';
import 'package:pmfilmes/page/genero_page.dart';
import 'package:pmfilmes/vm/ator_view_model.dart';
import 'package:pmfilmes/vm/genero_view_model.dart';
import 'package:pmfilmes/widgets/filter_item.dart';
import 'package:provider/provider.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final generoVM = Provider.of<GeneroViewModel>(context);
    final atorVM = Provider.of<AtorViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Filtros"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          children: [
            generoView(context, generoVM),
            atorView(context, atorVM),
          ],
        ),
      ),
    );
  }

  Widget generoView(BuildContext context, GeneroViewModel vm) => FilterItem(
        title: "Gênero",
        value:
            vm.jaSelecionouGenero ? vm.generoSelecionado.nome : "Não informado",
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const GeneroPage(),
          ),
        ),
      );

  Widget atorView(BuildContext context, AtorViewModel vm) => FilterItem(
        title: "Ator",
        value: vm.ator.isNotEmpty ? vm.ator.nome : "Não informado",
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const AtorPage(),
          ),
        ),
      );
}
