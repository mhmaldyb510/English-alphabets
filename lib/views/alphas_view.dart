import 'package:alphas/widgets/alpha_card.dart';
import 'package:flutter/material.dart';

class AlphasView extends StatelessWidget {
  const AlphasView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> englishAlphas =
        List.generate(26, (index) => String.fromCharCode(index + 65));

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        itemCount: englishAlphas.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          return AlphaCard(
            alpha: englishAlphas[index],
            color: Colors.primaries[index % Colors.primaries.length],
          );
        },
      ),
    );
  }
}
