import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';



class RememberMeCheckbox extends StatefulWidget {
  @Preview(name: "Remember Me Checkbox Preview")
  const RememberMeCheckbox({super.key});

  @override
  _RememberMeCheckboxState createState() => _RememberMeCheckboxState();
}

class _RememberMeCheckboxState extends State<RememberMeCheckbox> {
  bool _isSelected = false; // O estado vive aqui

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 8), // Espaçamento entre o texto e o checkbox
        Checkbox(
          value: _isSelected,
          onChanged: (bool? newValue) {
            setState(() {
              _isSelected = newValue ?? false; // Atualiza a UI
            }
            );
          },
          activeColor: Theme.of(context).colorScheme.primary, // Seu vermelho!
        ),
        Text(
            "Lembrar-me",
            style: TextStyle(
              color: Theme.of(context).primaryColorDark,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
      ],
    );
  }
}

