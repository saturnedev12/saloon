import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:saloon/features/chat/widgets/chat_queue.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        title: const Text(
          'Chat',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // The CupertinoSliverNavigationBar
            SliverAppBar(
              toolbarHeight: 20,
              titleSpacing: 0,
              elevation: 2,
              leadingWidth: 70,
              pinned: false,
              snap: false,
              floating: true,
              expandedHeight: 60.0,
              automaticallyImplyLeading: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: SizedBox(
                    height: 20,
                    child: CupertinoTextField(
                      textInputAction: TextInputAction.search,
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      style: const TextStyle(
                        fontSize: 13,
                      ),
                      cursorColor: Theme.of(context).colorScheme.onPrimary,
                      placeholder: 'Rechercher',
                      placeholderStyle: const TextStyle(
                        color: Color(0xFF82858D),
                        fontSize: 12,
                      ),
                      suffix: const Icon(
                        CupertinoIcons.search,
                        size: 13,
                      ),
                    ),
                  ),
                ),
                /*background: Container(
                  color: Color(0xFFEBF4FD),
                ),*/
              ),
            ),
            const SliverPadding(padding: EdgeInsets.all(10)),
            SliverList(
              // Use a delegate to build items as they're scrolled on screen.
              delegate: SliverChildBuilderDelegate(
                // The builder function returns a ListTile with a title that
                // displays the index of the current item.
                (context, index) => Container(
                  decoration: const BoxDecoration(
                    //color: Colors.red,
                    border: Border(
                        bottom: BorderSide(color: Colors.white, width: 0.3)),
                  ),
                  margin: const EdgeInsets.only(
                    bottom: 10,
                    left: 10,
                    right: 10,
                  ),
                  child: ListTile(
                    trailing: Badge(
                      badgeContent: Text('3'),
                      child: Icon(CupertinoIcons.chat_bubble_fill),
                    ),
                    leading: const CircleAvatar(radius: 30),
                    title: const Text(
                      'Jofh Franck',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      'Hey Barder i need you',
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context, rootNavigator: true)
                          .push(CupertinoPageRoute(
                        builder: (context) => ChatQueue(),
                      ));
                    },
                  ),
                ),
                // Builds 1000 ListTiles
                childCount: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
