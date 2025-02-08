import 'package:alphas/widgets/alpha_card.dart';
import 'package:flutter/material.dart';

class AlphasView extends StatelessWidget {
  const AlphasView({super.key});

  @override
  Widget build(BuildContext context) {
    /// Create a list of English alphabets using ASCII code.
    /// ASCII code of A is 65 and to get the next alphabet we add 1 until we reach Z (90).
    /// create a list of english alphabets using `ascii code`
    List<String> englishAlphas = List.generate(
      26,
      (index) => String.fromCharCode(
        index + 65,
      ),
    );

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

            /// Use primary colors list and `%` operator used to keep the index in the range of the primary colors list.
            color: Colors.primaries[index % Colors.primaries.length],
          );
        },
      ),
    );
  }
}
