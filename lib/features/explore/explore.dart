import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:saloon/features/explore/widgets/explore_card.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.red,
      statusBarBrightness: Brightness.dark,
    ));
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10,
      ),
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
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
                      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
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
            ExploreCard(artiste: false),
          ],
        ),
      ),
    );
  }
}
