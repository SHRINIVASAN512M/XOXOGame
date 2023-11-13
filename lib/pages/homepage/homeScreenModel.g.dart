// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homeScreenModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeScreenModel on _HomeScreenModel, Store {
  late final _$collectionOfValuesAtom =
      Atom(name: '_HomeScreenModel.collectionOfValues', context: context);

  @override
  List<String> get collectionOfValues {
    _$collectionOfValuesAtom.reportRead();
    return super.collectionOfValues;
  }

  @override
  set collectionOfValues(List<String> value) {
    _$collectionOfValuesAtom.reportWrite(value, super.collectionOfValues, () {
      super.collectionOfValues = value;
    });
  }

  late final _$winnerAtom =
      Atom(name: '_HomeScreenModel.winner', context: context);

  @override
  String get winner {
    _$winnerAtom.reportRead();
    return super.winner;
  }

  @override
  set winner(String value) {
    _$winnerAtom.reportWrite(value, super.winner, () {
      super.winner = value;
    });
  }

  late final _$_HomeScreenModelActionController =
      ActionController(name: '_HomeScreenModel', context: context);

  @override
  void setWinner({required String winner}) {
    final _$actionInfo = _$_HomeScreenModelActionController.startAction(
        name: '_HomeScreenModel.setWinner');
    try {
      return super.setWinner(winner: winner);
    } finally {
      _$_HomeScreenModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCollection({required List<String> collectionOfValues}) {
    final _$actionInfo = _$_HomeScreenModelActionController.startAction(
        name: '_HomeScreenModel.setCollection');
    try {
      return super.setCollection(collectionOfValues: collectionOfValues);
    } finally {
      _$_HomeScreenModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
collectionOfValues: ${collectionOfValues},
winner: ${winner}
    ''';
  }
}
