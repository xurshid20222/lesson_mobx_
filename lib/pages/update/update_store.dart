import 'package:flutter/material.dart';
import 'package:lesson_mobx/pages/home/home_store.dart';
import 'package:lesson_mobx/service/service_locator.dart';

import 'package:mobx/mobx.dart';

import '../../model/post_model.dart';
import '../../service/network_service.dart';

part 'update_store.g.dart';

class UpdateStore = UpdateStoreBase with _$UpdateStore;

abstract class UpdateStoreBase with Store {
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  @observable
  bool isLoading = false;


  @action
  void init(){
    var homeStore = locator<HomeStore>();
    if(homeStore.selected != null){
      titleController.text = homeStore.selected!.title;
      bodyController.text = homeStore.selected!.body;
    }
  }

  @action
  Future<void> updatePost(
      BuildContext context,) async {
    isLoading = true;
    var homeStore = locator<HomeStore>();
    String title = titleController.text.trim();
    String body = bodyController.text.trim();

    if(homeStore.selected != null){
      homeStore.selected!.title = title;
      homeStore.selected!.body = body;

      await NetworkService.PUT(
          NetworkService.API_UPDATE + homeStore.selected!.id, NetworkService.paramsUpdate(homeStore.selected!));

      isLoading = false;
    }

    Navigator.pop(context, 'refresh');
    titleController.clear();
    bodyController.clear();
  }
}
