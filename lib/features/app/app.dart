import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saloon/constants/constants.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoTabScaffold(
        backgroundColor: Colors.white,
        tabBar: CupertinoTabBar(
          backgroundColor: Theme.of(context).colorScheme.onBackground,
          activeColor: Colors.white,
          items: Constants.tabBarItems,
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
            builder: (BuildContext context) {
              return Center(
                child: Constants.listPages[index],
              );
            },
          );
        },
      ),
      bottomNavigationBar: Container(
        height: 25,
        color: Theme.of(context).colorScheme.onBackground,
      ),
    );
  }
}
