import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:telegram_main_page/controllers/controller.dart';
import 'package:telegram_main_page/styles/theme_data.dart';

class DrawerMenu extends StatelessWidget {
  DrawerMenu({Key? key}) : super(key: key);

  final Controller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      radius: 26.0,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1qVBGC-ojHph_0cNUjvkCdwzmI0LdYcWbEZmIdM1HIgbyP9o4ijqfnOqsUUnEKXaZduA&usqp=CAU"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Ali Maddahi",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "+98 937 815 1053",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.dark_mode),
                      onPressed: () => {
                        if (controller.toggleTheme())
                          {
                            Get.changeTheme(
                              MyTheme.dark,
                            ),
                          }
                        else
                          {
                            Get.changeTheme(
                              MyTheme.light,
                            ),
                          }
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.keyboard_arrow_down),
                      onPressed: () => {},
                    ),
                  ],
                )
              ],
            ),
          ),
          const ListTile(
            leading: Icon(Icons.people_alt_outlined),
            title: Text("New Groupe"),
          ),
          const ListTile(
            leading: Icon(Icons.person_outline),
            title: Text("Contacts"),
          ),
          const ListTile(
            leading: Icon(Icons.call_outlined),
            title: Text("Calls"),
          ),
          const ListTile(
            leading: Icon(Icons.attribution_outlined),
            title: Text("People Nearby"),
          ),
          const ListTile(
            leading: Icon(Icons.bookmark_outline),
            title: Text("Saved Messages"),
          ),
          const ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text("Settings"),
          ),
          const Divider(
            thickness: 0.6,
          ),
          const ListTile(
            leading: Icon(Icons.person_add_outlined),
            title: Text("Invite Friends"),
          ),
          const ListTile(
            leading: Icon(Icons.help_outline),
            title: Text("Telegram Features"),
          ),
        ],
      ),
    );
  }
}
