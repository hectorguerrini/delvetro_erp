import 'package:flutter/material.dart';

class DropDownFieldWidget<T> extends StatelessWidget {
  final String titulo;
  final void Function(T? value)? onChanged;
  final List<DropdownMenuItem<T>> items;
  final bool isRequired;
  const DropDownFieldWidget(
      {Key? key,
      required this.titulo,
      this.isRequired = false,
      this.onChanged,
      required this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.17,
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField<T>(
          validator: (value) {
            if (isRequired && (value == null)) {
              return 'Este campo é obrigatório';
            }
            return null;
          },
          onChanged: onChanged,
          items: items,
          style: TextStyle(
            fontSize: 24,
          ),
          decoration: InputDecoration(
            labelText: titulo,
            labelStyle: TextStyle(
              fontSize: 24,
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16, vertical: 22.5),
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
