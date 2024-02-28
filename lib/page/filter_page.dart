import 'package:flutter/material.dart';
import 'package:pmfilmes/page/genero_page.dart';
import 'package:pmfilmes/vm/genero_view_model.dart';
import 'package:provider/provider.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final generoVM = Provider.of<GeneroViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Filtros"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          generoView(context, generoVM),
        ],
      ),
    );
  }

  Widget generoView(BuildContext context, GeneroViewModel vm) => SizedBox(
        width: 150,
        height: 150,
        child: Card(
          elevation: 5,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Gênero"),
                  IconButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const GeneroPage()),
                    ),
                    icon: const Icon(Icons.more_vert),
                  ),
                ],
              ),
              Expanded(
                child: Center(
                  child: Text(
                    vm.jaSelecionouGenero
                        ? vm.generoSelecionado.nome
                        : "Não Selecionado",
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
