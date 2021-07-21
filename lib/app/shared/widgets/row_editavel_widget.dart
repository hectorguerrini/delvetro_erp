import 'package:delvetro_erp/app/modules/cadastro-produtos/enumerate/tipo_composicao_enum.dart';
import 'package:delvetro_erp/app/shared/models/generic_fields_model.dart';
import 'package:delvetro_erp/app/shared/widgets/type_ahead_field_widget.dart';
import 'package:flutter/material.dart';

import 'drop_down_field_widget.dart';

class RowEditavelWidget extends StatelessWidget {
  final TipoComposicaoEnum? tipoComposicaoEnum;
  final void Function(TipoComposicaoEnum? value)? onChangedTipoComposicao;
  final String? descricao;
  final void Function(int)? onSuggestionSelected;
  final List<GenericFieldsModel> listDescricao;
  final void Function(String) onChangedDescricao;
  final void Function()? addRow;
  final int? quantidade;
  final double? custo;
  const RowEditavelWidget(
      {Key? key,
      this.tipoComposicaoEnum,
      this.onChangedTipoComposicao,
      this.descricao,
      this.onSuggestionSelected,
      required this.listDescricao,
      required this.onChangedDescricao,
      this.addRow,
      this.quantidade,
      required this.custo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DropDownFieldWidget<TipoComposicaoEnum>(
          flex: 1,
          value: tipoComposicaoEnum,
          items: TipoComposicaoEnum.values.map((TipoComposicaoEnum value) {
            return DropdownMenuItem<TipoComposicaoEnum>(
              value: value,
              child: Text(value.name),
            );
          }).toList(),
          onChanged: onChangedTipoComposicao,
          isRequired: true,
        ),
        SizedBox(
          width: 8,
        ),
        TypeAheadFieldWidget(
            flex: 2,
            value: descricao,
            onSuggestionSelected: onSuggestionSelected,
            isRequired: true,
            list: listDescricao),
        SizedBox(
          width: 8,
        ),
        Expanded(
            flex: 1,
            child: Center(
                child: Text(quantidade != null ? quantidade.toString() : '',
                    style: TextStyle(
                      fontSize: 24,
                    )))),
        SizedBox(
          width: 8,
        ),
        Expanded(
            flex: 1,
            child: Center(
                child: Text('R\$ ' + custo.toString(),
                    style: TextStyle(
                      fontSize: 24,
                    )))),
        SizedBox(
          width: 8,
        ),
        SizedBox(
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 24),
                  elevation: 10,
                ),
                onPressed: addRow,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 24.0,
                ))),
      ],
    );
  }
}
