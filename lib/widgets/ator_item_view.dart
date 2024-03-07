import 'package:flutter/material.dart';
import 'package:pmfilmes/dominio/ator.dart';
import 'package:pmfilmes/vm/ator_view_model.dart';
import 'package:provider/provider.dart';

class AtorItemView extends StatelessWidget {
  final Ator ator;

  const AtorItemView({
    super.key,
    required this.ator,
  });

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<AtorViewModel>(context);
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    ator.nome,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    ator.nacionalidade.trim(),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () => click(context),
            icon: Icon(
              Icons.task_alt,
              color: vm.ator.isNotEmpty && vm.ator.id == ator.id
                  ? Colors.green
                  : Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  void click(BuildContext context) {
    //recupera um GeneroViewModel do provider com o estado
    //compartilhado na aplicacao
    final vm = Provider.of<AtorViewModel>(context, listen: false);
    vm.seleciona(ator);

    //fecha a tela atual
    Navigator.pop(context);
  }
}
