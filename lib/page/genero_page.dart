import 'package:flutter/material.dart';
import 'package:pmfilmes/vm/genero_view_model.dart';
import 'package:pmfilmes/widgets/genero_item_view.dart';
import 'package:provider/provider.dart';

class GeneroPage extends StatelessWidget {
  const GeneroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<GeneroViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Gênero"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: vm.generos.length,
              itemBuilder: (context, index) =>
                  GeneroItemView(genero: vm.generos[index]),
              separatorBuilder: (context, index) => const Divider(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Voltar"),
            ),
          ),
        ],
      ),
    );
  }
}
