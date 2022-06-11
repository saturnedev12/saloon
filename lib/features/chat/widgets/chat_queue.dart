import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ChatQueue extends StatefulWidget {
  const ChatQueue({Key? key}) : super(key: key);

  @override
  State<ChatQueue> createState() => _ChatQueueState();
}

class _ChatQueueState extends State<ChatQueue> {
  double _paddingBottom = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        centerTitle: false,
        elevation: 2,
        title: const ListTile(
          leading: CircleAvatar(),
          title: Text(
            'Jonh Franck',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.phone))
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: 20,
          bottom: 10,
        ),
        child: Column(
          children: const [
            BubbleSpecialThree(
              text: 'Added iMassage shape bubbles',
              color: Color(0xFF1B97F3),
              tail: false,
              textStyle: TextStyle(color: Colors.white, fontSize: 16),
            ),
            BubbleSpecialThree(
              text: 'Please try and give some feedback on it!',
              color: Color(0xFF1B97F3),
              tail: true,
              textStyle: TextStyle(color: Colors.white, fontSize: 16),
            ),
            BubbleSpecialThree(
              text: 'Sure',
              color: Color(0xFFE8E8EE),
              tail: false,
              isSender: false,
            ),
            BubbleSpecialThree(
              text: "I tried. It's awesome!!!",
              color: Color(0xFFE8E8EE),
              tail: false,
              isSender: false,
            ),
            BubbleSpecialThree(
              text: "Thanks",
              color: Color(0xFFE8E8EE),
              tail: true,
              isSender: false,
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        height: 70,
        padding: EdgeInsets.only(
            left: 20, right: 10, top: 2, bottom: _paddingBottom),
        margin:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CupertinoTextField(
                placeholder: 'write your message...',
                onTap: () {
                  setState(() {
                    _paddingBottom = 0;
                  });
                },
                onSubmitted: (value) {
                  setState(() {
                    _paddingBottom = 20;
                  });
                },
                keyboardType: TextInputType.multiline,
                maxLines: null,
                textInputAction: TextInputAction.newline,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            CircleAvatar(
              radius: 20,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.send_outlined),
              ),
            )
          ],
        ),
      ),
    );
  }
}
