// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UpdateStore on UpdateStoreBase, Store {
  late final _$isLoadingAtom =
      Atom(name: 'UpdateStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$updatePostAsyncAction =
      AsyncAction('UpdateStoreBase.updatePost', context: context);

  @override
  Future<void> updatePost(BuildContext context) {
    return _$updatePostAsyncAction.run(() => super.updatePost(context));
  }

  late final _$UpdateStoreBaseActionController =
      ActionController(name: 'UpdateStoreBase', context: context);

  @override
  void init() {
    final _$actionInfo = _$UpdateStoreBaseActionController.startAction(
        name: 'UpdateStoreBase.init');
    try {
      return super.init();
    } finally {
      _$UpdateStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading}
    ''';
  }
}
