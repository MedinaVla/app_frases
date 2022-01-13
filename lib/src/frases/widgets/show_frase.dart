import 'package:app_frases/src/frases/logic/frases_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShowFrase extends ConsumerWidget {
  const ShowFrase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final fraseState = ref.watch(frasesNotifierProvider);
    return Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.pink[200],
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                height: MediaQuery.of(context).size.height / 2,
                child: fraseState.when(
                    initial: () => const Text(''),
                    loading: () => const Text(''),
                    data: (frase) => Padding(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Text(
                              frase,
                              style: const TextStyle(fontSize: 24),
                            ),
                          ),
                        ),
                    error: (error) => const Text(''))),
            const Spacer(),
            FloatingActionButton(
              onPressed: () =>
                  ref.read(frasesNotifierProvider.notifier).getFrase(),
              child: const Icon(Icons.get_app),
            )
          ],
        ));
  }
}
