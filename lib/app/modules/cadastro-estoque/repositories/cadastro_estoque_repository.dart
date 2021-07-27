import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/categorais_estoque_model.dart';
import 'package:delvetro_erp/app/modules/cadastro-estoque/enumerate/tipo_item_enum.dart';
import 'package:delvetro_erp/app/shared/enumerate/unidade_item_enum.dart';
import 'package:delvetro_erp/app/modules/cadastro-estoque/models/itens_estoque_model.dart';

import 'cadastro_estoque_repository_interface.dart';

class CadastroEstoqueRepository implements ICadastroEstoqueRepository {
  List<ItensEstoqueModel> listaItensEstoque = [
    ItensEstoqueModel(
        idEstoque: 1,
        descricao: 'Vidro',
        tipoItem: TipoItemEnum.CHAPARIA,
        localizacao: 'Paulista',
        unidadeItem: UnidadeItemEnum.METROQUADRADO,
        quantidade: 10,
        estoqueMinimo: 8,
        estoqueMaximo: 200,
        espessura: 3.12,
        custo: 3.8,
        categoriasEstoqueEnum: CategoriasEstoqueEnum.BOX),
    ItensEstoqueModel(
        idEstoque: 2,
        descricao: 'Painel',
        tipoItem: TipoItemEnum.CHAPARIA,
        localizacao: 'Paulista',
        unidadeItem: UnidadeItemEnum.METROQUADRADO,
        quantidade: 10,
        estoqueMinimo: 8,
        estoqueMaximo: 200,
        espessura: 3.12,
        custo: 3.8,
        categoriasEstoqueEnum: CategoriasEstoqueEnum.CHAPARIA),
    ItensEstoqueModel(
        idEstoque: 3,
        descricao: 'Ferramentas',
        tipoItem: TipoItemEnum.CHAPARIA,
        localizacao: 'Paulista',
        unidadeItem: UnidadeItemEnum.METROQUADRADO,
        quantidade: 10,
        estoqueMinimo: 8,
        estoqueMaximo: 200,
        espessura: 3.12,
        custo: 3.8,
        categoriasEstoqueEnum: CategoriasEstoqueEnum.EPI),
    ItensEstoqueModel(
        idEstoque: 4,
        descricao: 'Ferramentas',
        tipoItem: TipoItemEnum.CHAPARIA,
        localizacao: 'Paulista',
        unidadeItem: UnidadeItemEnum.METROQUADRADO,
        quantidade: 10,
        estoqueMinimo: 8,
        estoqueMaximo: 200,
        espessura: 3.12,
        custo: 3.8,
        categoriasEstoqueEnum: CategoriasEstoqueEnum.ESPELHO),
    ItensEstoqueModel(
        idEstoque: 5,
        descricao: 'Ferramentas',
        tipoItem: TipoItemEnum.CHAPARIA,
        localizacao: 'Paulista',
        unidadeItem: UnidadeItemEnum.METROQUADRADO,
        quantidade: 10,
        estoqueMinimo: 8,
        estoqueMaximo: 200,
        espessura: 3.12,
        custo: 3.8,
        categoriasEstoqueEnum: CategoriasEstoqueEnum.MAQUINAS_E_EQUIPAMENTOS),
    ItensEstoqueModel(
        idEstoque: 6,
        descricao: 'Ferramentas',
        tipoItem: TipoItemEnum.CHAPARIA,
        localizacao: 'Paulista',
        unidadeItem: UnidadeItemEnum.METROQUADRADO,
        quantidade: 10,
        estoqueMinimo: 8,
        estoqueMaximo: 200,
        espessura: 3.12,
        custo: 3.8,
        categoriasEstoqueEnum: CategoriasEstoqueEnum.ALUMINIO),
    ItensEstoqueModel(
        idEstoque: 7,
        descricao: 'Ferramentas',
        tipoItem: TipoItemEnum.CHAPARIA,
        localizacao: 'Paulista',
        unidadeItem: UnidadeItemEnum.METROQUADRADO,
        quantidade: 10,
        estoqueMinimo: 8,
        estoqueMaximo: 200,
        espessura: 3.12,
        custo: 3.8,
        categoriasEstoqueEnum: CategoriasEstoqueEnum.CONCRETO),
  ];

  @override
  Future<void> salvarItem(ItensEstoqueModel itensEstoque) async {
    listaItensEstoque.add(itensEstoque);
  }

  @override
  Future<void> atualizarItem(ItensEstoqueModel itensEstoque) async {
    var itensEstoqueAlterado = itensEstoque;
    for (var i = 0; i < listaItensEstoque.length; i++) {
      if (itensEstoqueAlterado.idEstoque == listaItensEstoque[i].idEstoque) {
        listaItensEstoque[i] = itensEstoqueAlterado;
      }
    }
  }

  @override
  Future<List<ItensEstoqueModel>> getListaItensEstoque() {
    return Future.value(listaItensEstoque);
  }
}
