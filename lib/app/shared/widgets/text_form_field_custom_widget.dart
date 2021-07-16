import 'package:delvetro_erp/app/shared/enumerate/tipo_campo_texto_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:extended_masked_text/extended_masked_text.dart';

class TextFormFieldCustomWidget extends StatelessWidget {
  final String titulo;
  final TextInputFormatter? textInputFormatter;
  final void Function(String value)? onChanged;
  final bool isRequired;
  final String? value;
  final bool isNumber;
  final int flex;
  final TipoCampoTextoEnum tipoCampoTextoEnum;
  const TextFormFieldCustomWidget(
      {Key? key,
      required this.titulo,
      this.onChanged,
      this.isRequired = false,
      this.isNumber = false,
      this.value,
      this.textInputFormatter,
      required this.flex,
      this.tipoCampoTextoEnum = TipoCampoTextoEnum.TEXTO})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = tipoCampoTextoEnum == TipoCampoTextoEnum.VALOR
        ? MoneyMaskedTextController(
            decimalSeparator: ',', precision: 2, leftSymbol: 'R\$')
        : tipoCampoTextoEnum == TipoCampoTextoEnum.NUMERO
            ? MoneyMaskedTextController(precision: 0, decimalSeparator: '')
            : tipoCampoTextoEnum == TipoCampoTextoEnum.DOUBLE
                ? MoneyMaskedTextController(decimalSeparator: ',', precision: 2)
                : TextEditingController(text: value);

    return Expanded(
      flex: flex,
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
            : (textInputFormatter != null ? [textInputFormatter!] : null),
        onChanged: onChanged,
        style: TextStyle(
          fontSize: 24,
        ),
        decoration: InputDecoration(
          labelText: titulo,
          labelStyle: TextStyle(
            fontSize: 24,
          ),
          suffixIcon:
              IconButton(onPressed: controller.clear, icon: Icon(Icons.close)),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
