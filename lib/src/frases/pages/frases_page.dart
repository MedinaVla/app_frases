import 'package:app_frases/src/core/providers.dart';
import 'package:app_frases/src/frases/widgets/show_frase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Displays detailed information about a SampleItem.
class FrasesPage extends ConsumerWidget {
  const FrasesPage({Key? key}) : super(key: key);

  static const routeName = '/frase_item';

  @override
  Widget build(BuildContext context, ref) {
    final fraseSelected = ref.watch(frasesSelectedProvider.state).state;
    return Scaffold(
        appBar: AppBar(
          title: Text('Frase $fraseSelected'),
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/fondo.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Center(
              child: ShowFrase(),
            ),
          ],
        ));
  }
}
