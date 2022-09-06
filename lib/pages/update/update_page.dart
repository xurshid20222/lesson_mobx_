import 'package:flutter/material.dart';
import 'package:lesson_mobx/pages/update/update_store.dart';

import '../../service/service_locator.dart';

class UpdatePage extends StatelessWidget {
  const UpdatePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UpdateStore store = locator<UpdateStore>();

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => store.updatePost(context),
              icon: const Icon(Icons.done)),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                TextField(
                  controller: store.titleController,
                  decoration: const InputDecoration(hintText: "Title"),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: store.bodyController,
                  decoration: const InputDecoration(hintText: "Content"),
                )
              ],
            ),
          ),
          store.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
