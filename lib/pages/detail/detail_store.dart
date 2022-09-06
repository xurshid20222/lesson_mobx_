import 'package:flutter/material.dart';

import 'package:mobx/mobx.dart';

import '../../model/post_model.dart';
import '../../service/network_service.dart';

part 'detail_store.g.dart';

class DetailStore = DetailStoreBase with _$DetailStore;

abstract class DetailStoreBase with Store {
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();


  // @observable
  // Post? post;
  @action
  Future<void> createPost(BuildContext context) async {
    String title = titleController.text.trim();
    String body = bodyController.text.trim();
    Post post = Post(
        id: DateTime.now().toIso8601String(),
        title: title,
        body: body,
        userId: '1');

    await NetworkService.POST(
        NetworkService.API_CREATE, NetworkService.paramsCreate(post));
    Navigator.pop(context);
  }

}
