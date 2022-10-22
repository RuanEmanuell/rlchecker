// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Controller on _Controller, Store {
  late final _$playerAtom = Atom(name: '_Controller.player', context: context);

  @override
  String get player {
    _$playerAtom.reportRead();
    return super.player;
  }

  @override
  set player(String value) {
    _$playerAtom.reportWrite(value, super.player, () {
      super.player = value;
    });
  }

  late final _$keyAtom = Atom(name: '_Controller.key', context: context);

  @override
  String get key {
    _$keyAtom.reportRead();
    return super.key;
  }

  @override
  set key(String value) {
    _$keyAtom.reportWrite(value, super.key, () {
      super.key = value;
    });
  }

  late final _$jsonAtom = Atom(name: '_Controller.json', context: context);

  @override
  dynamic get json {
    _$jsonAtom.reportRead();
    return super.json;
  }

  @override
  set json(dynamic value) {
    _$jsonAtom.reportWrite(value, super.json, () {
      super.json = value;
    });
  }

  late final _$requestDataAsyncAction = AsyncAction('_Controller.requestData', context: context);

  @override
  Future requestData() {
    return _$requestDataAsyncAction.run(() => super.requestData());
  }

  @override
  String toString() {
    return '''
player: ${player},
key: ${key},
json: ${json}
    ''';
  }
}
