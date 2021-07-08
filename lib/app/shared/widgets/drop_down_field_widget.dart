import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/tipo_item_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class DropDownFieldWidget extends StatelessWidget {
  final String titulo;
  final TipoItemEnum? itens;
  final void Function(TipoItemEnum? value)? onChanged;
  const DropDownFieldWidget(
      {Key? key, required this.titulo, this.itens, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.25,
        child: Observer(
          builder: (BuildContext context) => DropdownButtonHideUnderline(
            child: DropdownButton<TipoItemEnum>(
              style: TextStyle(
                fontSize: 24,
              ),
              value: itens,
              onChanged: onChanged,
              items: [
                DropdownMenuItem(
                  value: TipoItemEnum.FERRAMENTAS,
                  child: Text('G'),
                ),
              ],
            ),
          ),
        ));
  }
}
