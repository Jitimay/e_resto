import 'package:flutter/material.dart';
import 'package:resto/components/my_drawer_tile.dart';
import 'package:resto/pages/contact.dart';
import 'package:resto/pages/settings_page.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme
          .of(context)
          .colorScheme
          .background,
      child: Column(
        children: [
          // app logo
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 40,
              color: Theme
                  .of(context)
                  .colorScheme
                  .inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme
                  .of(context)
                  .colorScheme
                  .secondary,
            ),
          ),
          MyDrawerTile(
              onTap: () => Navigator.pop(context),
              text: "H O M E",
              icon: Icons.home
          ),
          MyDrawerTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const Contact(),)
                );
              },
              text: "C O N T A C T",
              icon: Icons.info
          ),
          MyDrawerTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> const SettingsPages(),)
                );
              },
              text: "S E T T I N G S",
              icon: Icons.settings
          ),
          const Spacer(),
          MyDrawerTile(
              onTap: () {

              },
              text: "L O G O U T",
              icon: Icons.logout
          ),
          const SizedBox(height: 25,)
        ],
      ),
    );
  }
}