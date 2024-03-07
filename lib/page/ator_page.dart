import 'package:flutter/material.dart';
import 'package:pmfilmes/vm/ator_view_model.dart';
import 'package:pmfilmes/widgets/ator_item_view.dart';
import 'package:provider/provider.dart';

class AtorPage extends StatelessWidget {
  const AtorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<AtorViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ator"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: vm.atores.length,
              itemBuilder: (context, index) =>
                  AtorItemView(ator: vm.atores[index]),
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
