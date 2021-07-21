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
        Expanded(flex: 1, child: Center(child: Text(tipoComposicao!.name))),
        SizedBox(
          width: 8,
        ),
        Expanded(flex: 2, child: Center(child: Text(descricao))),
        SizedBox(
          width: 8,
        ),
        Expanded(flex: 1, child: Center(child: Text(quantidade.toString()))),
        SizedBox(
          width: 8,
        ),
        Expanded(flex: 1, child: Center(child: Text(custo.toString()))),
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
