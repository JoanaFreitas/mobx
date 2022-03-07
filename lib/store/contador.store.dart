import 'package:mobx/mobx.dart';
part 'contador.store.g.dart';

class ContadorStore = _ContadorStore with _$ContadorStore;

abstract class _ContadorStore with Store {
  _ContadorStore(){
    autorun((_) {
      print('email $email');
      print('senha $senha');
      print(' $emailSenha $fomularioValidado');
    });
  }
  // @observable
  // int contador = 0;

  // @action
  // void incrementar() {
  //   contador++;
  // }

  @observable
  String email = '';

  @observable
  String senha = '';

  @observable
  bool usuarioLogado =false;

  @observable
  bool carregando=false;



  @computed//gera novo observable composto
  String get emailSenha=>'$email - $senha';
  @computed
  bool get fomularioValidado=>email.length>=5&&senha.length>=5;

  @action
  void setEmail( valor)=> email=valor;

  @action
  void setSenha (valor)=>senha=valor;
  @action
  Future<void>logar()async{
    carregando =true;
    //processamento
   await Future.delayed(Duration(seconds: 3));
    carregando=false;
    usuarioLogado=true;
     }
}
