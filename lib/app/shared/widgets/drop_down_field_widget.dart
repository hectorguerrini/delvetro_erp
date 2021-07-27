import 'package:flutter/material.dart';

class DropDownFieldWidget<T> extends StatelessWidget {
  final String? titulo;
  final void Function(T? value)? onChanged;
  final List<DropdownMenuItem<T>> items;
  final bool isRequired;
  final int flex;
  final T? value;
  const DropDownFieldWidget({
    Key? key,
    this.titulo,
    this.value,
    this.isRequired = false,
    this.onChanged,
    required this.items,
    required this.flex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField<T>(
          validator: (value) {
            if (isRequired && (value == null)) {
              return 'Este campo é obrigatório';
            }
            return null;
          },
          value: value,
          isExpanded: true,
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
