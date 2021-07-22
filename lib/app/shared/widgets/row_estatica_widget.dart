import 'package:delvetro_erp/app/modules/cadastro-produtos/enumerate/tipo_composicao_enum.dart';
import 'package:flutter/material.dart';

class RowEstaticaWidget extends StatelessWidget {
  final TipoComposicaoEnum? tipoComposicao;
  final String descricao;
  final int? quantidade;
  final double custo;
  final void Function()? removeRow;
  const RowEstaticaWidget(
      {Key? key,
      this.tipoComposicao,
      required this.descricao,
      this.quantidade,
      required this.custo,
      this.removeRow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            flex: 1,
            child: Text(tipoComposicao!.name,
                style: TextStyle(
                  fontSize: 24,
                ))),
        SizedBox(
          width: 8,
        ),
        Expanded(
            flex: 2,
            child: Text(descricao,
                style: TextStyle(
                  fontSize: 24,
                ))),
        SizedBox(
          width: 8,
        ),
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                  (quantidade != null || quantidade == 0)
                      ? quantidade.toString()
                      : '',
                  style: TextStyle(
                    fontSize: 24,
                  )),
            )),
        SizedBox(
          width: 8,
        ),
        Expanded(
            flex: 1,
            child: Text('R\$ ' + custo.toString(),
                style: TextStyle(
                  fontSize: 24,
                ))),
        SizedBox(
          width: 16,
        ),
        SizedBox(
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 24),
                  elevation: 10,
                ),
                onPressed: removeRow,
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 24.0,
                ))),
      ],
    );
  }
}
