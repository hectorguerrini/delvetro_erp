import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/tipo_item_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/unidade_item_enum.dart';
import 'package:flutter/material.dart';

class DropDownFieldWidget extends StatelessWidget {
  final String titulo;
  final void Function(TipoItemEnum? value)? tipoItemOnChanged;
  final void Function(UnidadeItemEnum? value)? unidadeItemOnChanged;
  final bool isRequired;
  const DropDownFieldWidget(
      {Key? key,
      required this.titulo,
      this.isRequired = false,
      this.tipoItemOnChanged,
      this.unidadeItemOnChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (tipoItemOnChanged != null) {
      return Container(
        width: MediaQuery.of(context).size.width * 0.17,
        child: DropdownButtonHideUnderline(
          child: DropdownButtonFormField<TipoItemEnum>(
            validator: (value) {
              if (isRequired && (value == null)) {
                return 'Este campo é obrigatório';
              }
              return null;
            },
            onChanged: tipoItemOnChanged,
            items: TipoItemEnum.values.map((TipoItemEnum tipoItemEnum) {
              return DropdownMenuItem<TipoItemEnum>(
                  value: tipoItemEnum, child: Text(tipoItemEnum.name));
            }).toList(),
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
    } else {
      return Container(
        width: MediaQuery.of(context).size.width * 0.17,
        child: DropdownButtonHideUnderline(
          child: DropdownButtonFormField<UnidadeItemEnum>(
            validator: (value) {
              if (isRequired && (value == null)) {
                return 'Este campo é obrigatório';
              }
              return null;
            },
            onChanged: unidadeItemOnChanged,
            items:
                UnidadeItemEnum.values.map((UnidadeItemEnum unidadeItemEnum) {
              return DropdownMenuItem<UnidadeItemEnum>(
                  value: unidadeItemEnum, child: Text(unidadeItemEnum.name));
            }).toList(),
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
}
