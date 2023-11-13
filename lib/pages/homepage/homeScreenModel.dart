import 'package:mobx/mobx.dart';

part 'homeScreenModel.g.dart';

class HomeScreenModel = _HomeScreenModel with _$HomeScreenModel;

abstract class _HomeScreenModel with Store {
  @observable
  List<String> collectionOfValues = [];
  bool isCross = false;

  @observable
  var winner = " ";
  var cross = 0;
  var circle = 0;
  var count = false;

  @action
  void setWinner({required String winner}) =>    this.winner = winner;
  
   
  @action
  void setCollection({required List<String> collectionOfValues}) {
    this.collectionOfValues = [];
    this.collectionOfValues = collectionOfValues;
  }
}
