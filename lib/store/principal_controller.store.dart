


import 'package:mobx/mobx.dart';
import 'package:mobx_teste/store/item_controller.store.dart';
part 'principal_controller.store.g.dart';

class PrincipalController = _PrincipalController with _$PrincipalController;
abstract class _PrincipalController with Store{
  @observable
  String novoItem='';
 
  ObservableList<ItemController>listaItens=ObservableList<ItemController>();

@action
  void setNovoItem(String valor)=>novoItem=valor;

  @action 
  void adicionarItem(){
    listaItens.add(ItemController(novoItem));
  }


}

