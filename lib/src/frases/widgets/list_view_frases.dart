import 'package:app_frases/src/core/providers.dart';
import 'package:app_frases/src/frases/pages/frases_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListViewFrasesWidget extends ConsumerWidget {
  const ListViewFrasesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final frases = ref.watch(frasesProvider);
    final fraseSelectedState = ref.watch(frasesSelectedProvider.state);
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.all(50),
        child: ListView.builder(
          // Providing a restorationId allows the ListView to restore the
          // scroll position when a user leaves and returns to the app after it
          // has been killed while running in the background.
          restorationId: 'sampleItemListView',
          itemCount: frases.length,
          itemBuilder: (BuildContext context, int index) {
            final item = frases[index];

            return ListTile(
                title: Text('Frases de $item'),
                leading: const CircleAvatar(
                  // Display the Flutter Logo image asset.
                  foregroundImage: AssetImage('assets/images/flutter_logo.png'),
                ),
                onTap: () {
                  ///Guarda la frase Seleccionada
                  fraseSelectedState.state = item;
                  // Navigate to the details page. If the user leaves and returns to
                  // the app after it has been killed while running in the
                  // background, the navigation stack is restored.
                  Navigator.restorablePushNamed(
                    context,
                    FrasesPage.routeName,
                  );
                });
          },
        ),
      ),
    ]);
  }
}
