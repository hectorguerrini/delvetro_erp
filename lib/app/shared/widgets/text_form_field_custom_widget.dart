import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TextFormFieldCustomWidget extends StatelessWidget {
  final String titulo;
  final double size;
  final MaskTextInputFormatter? maskFormatter;
  final void Function(String value)? onChanged;
  final bool isRequired;
  final String? value;
  final bool isNumber;
  const TextFormFieldCustomWidget(
      {Key? key,
      required this.titulo,
      this.onChanged,
      this.isRequired = false,
      this.isNumber = false,
      this.value,
      required this.size,
      this.maskFormatter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController(text: value);

    return Container(
      width: size,
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
            : (maskFormatter != null ? [maskFormatter!] : null),
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
