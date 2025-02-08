import 'package:flutter/material.dart';

class AlphaCard extends StatefulWidget {
  final MaterialColor color;
  final String alpha;

  const AlphaCard({
    super.key,
    required this.color,
    required this.alpha,
  });

  @override
  State<AlphaCard> createState() => _AlphaCardState();
}

class _AlphaCardState extends State<AlphaCard> {
  Alignment alignment = Alignment.centerLeft;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        alignment = Alignment.centerRight;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 3),
      curve: Curves.bounceOut,
      onEnd: () {
        setState(() {
          alignment = alignment == Alignment.centerRight
              ? Alignment.centerLeft
              : Alignment.centerRight;
        });
      },
      decoration: BoxDecoration(
        gradient: SweepGradient(
          center: alignment,
          colors: [
            widget.color[100]!,
            widget.color[200]!,
            widget.color[300]!,
            widget.color[400]!,
            widget.color[500]!,
            widget.color[600]!,
            widget.color[700]!,
            widget.color[800]!,
            widget.color[900]!,
          ],
        ),
        borderRadius: BorderRadius.circular(26),
      ),
      child: Center(
        child: Text(
          widget.alpha,
          style: const TextStyle(
            fontSize: 40,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
