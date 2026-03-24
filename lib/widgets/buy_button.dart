import 'package:flutter/material.dart';

class BuyButton extends StatelessWidget {
  final VoidCallback? onBuy;

  const BuyButton({super.key, this.onBuy});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(onPressed: onBuy, child: const Text("Comprar")),
    );
  }
}
