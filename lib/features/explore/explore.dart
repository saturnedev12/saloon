import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: Colors.red,
        toolbarHeight: 80,

        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 70),
            child: Container(
              //color: Colors.red,
              height: 85,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CupertinoTextField(
                      //controller: _searchController,
                      textInputAction: TextInputAction.search,
                      onTap: () {},
                      onSubmitted: (value) {},
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                      cursorColor: Theme.of(context).colorScheme.onPrimary,
                      placeholder: 'What are you looking for ?',
                      placeholderStyle: const TextStyle(
                        color: Color(0xFF82858D),
                        fontSize: 17,
                      ),
                      suffix: Icon(CupertinoIcons.search),
                    ),
                  ]),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              ExploreCard(
                artiste: true,
              ),
              ExploreCard(
                artiste: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
