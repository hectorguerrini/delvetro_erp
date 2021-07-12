import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldPadraoWidget extends StatelessWidget {
  final String titulo;
  final void Function(String value)? onChanged;
  final bool isRequired;
  final String? value;
  final bool isNumber;
  const TextFormFieldPadraoWidget(
      {Key? key,
      required this.titulo,
      this.onChanged,
      this.isRequired = false,
      this.isNumber = false,
      this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController(text: value);
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      child: TextFormField(
        validator: (value) {
          if (isRequired && (value == null || value.isEmpty)) {
            return 'Este campo é obrigatório';
          }
          return null;
        },
        controller: controller,
        keyboardType: isNumber ? TextInputType.number : null,
        inputFormatters: isNumber
            ? <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly]
            : null,
        onChanged: onChanged,
        style: TextStyle(
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: titulo,
          labelStyle: TextStyle(
            fontSize: 24,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
