import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:telegram_main_page/chat_item.dart';
import 'package:telegram_main_page/drawer_menu.dart';

import 'package:telegram_main_page/data/chat_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerMenu(),
      ),
      appBar: AppBar(
        title: const Text("Telegram"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.verified_user),
            onPressed: () => {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => {},
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Dismissible(
            direction: DismissDirection.endToStart,
            key: Key(chats[index].id.toString()),
            onDismissed: (direction) {
              chats.removeAt(index);
            },
            background: Container(
              alignment: Alignment.centerRight,
              color: Colors.red,
              padding: const EdgeInsets.only(
                right: 10.0,
              ),
              child: const Icon(Icons.delete),
            ),
            child: ChatItem(
              fullName: chats[index].fullName,
              profilePictureUrl: chats[index].profilePictureUrl,
              message: chats[index].message,
              time: chats[index].time,
              seen: chats[index].seen,
              online: chats[index].online,
            ),
          );
        },
        itemCount: chats.length,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.edit),
        onPressed: () {
          Get.back();
        },
      ),
    );
  }
}
