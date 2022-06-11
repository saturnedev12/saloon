import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:saloon/features/chat/widgets/chat_queue.dart';
import 'package:saloon/features/explore/widgets/action_profile_button.dart';
import 'package:saloon/features/explore/widgets/profile_category.dart';

import '../../shared_widgets/service_card.dart';

class ProlfileSaloon extends StatefulWidget {
  const ProlfileSaloon({Key? key}) : super(key: key);

  @override
  State<ProlfileSaloon> createState() => _ProlfileSaloonState();
}

class _ProlfileSaloonState extends State<ProlfileSaloon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text(
              'Meddex BarberShop',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
            toolbarHeight: 100,
            pinned: true,
            snap: false,
            floating: true,
            expandedHeight: 230.0,
            leading: IconButton(
              icon: const Icon(
                Icons.chevron_left,
                size: 40,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                height: 280,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                foregroundDecoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 39, 38, 38),
                      Colors.transparent,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0, 1.5],
                  ),
                ),
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://media.istockphoto.com/photos/retro-styled-barbershop-picture-id638568556?k=20&m=638568556&s=612x612&w=0&h=PHw_NRat3bFWRwsnn1MNMDLwUjFkHiIGqHXhu2vyxAI=')),
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    shadows: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(8),
            sliver: SliverToBoxAdapter(
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.location_solid,
                    color: Colors.grey,
                  ),
                  Text(
                    '180 Euaeme. GL1 4H8. Ville de Quebec',
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Divider(
              endIndent: 10,
              indent: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ActionProfileButton(
                    onPressed: () {},
                    title: 'CALL',
                    icon: CupertinoIcons.phone_fill),
                ActionProfileButton(
                    onPressed: () {},
                    title: 'LOCATION',
                    icon: CupertinoIcons.location_fill),
                ActionProfileButton(
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true)
                          .push(CupertinoPageRoute(
                        builder: (context) => ChatQueue(),
                      ));
                    },
                    title: 'CHAT',
                    icon: CupertinoIcons.chat_bubble_2_fill)
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: Divider(
              endIndent: 10,
              indent: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              width: double.infinity,
              child: ListTile(
                title: Text('STAFFERS'),
                subtitle: Container(
                  //color: Colors.amber,
                  height: 130,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      //color: Colors.red,
                      padding: EdgeInsets.only(right: 10, left: 5),
                      width: 100,
                      height: 80,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.grey[300],
                            backgroundImage: const NetworkImage(
                                'https://cdn.pixabay.com/photo/2021/04/05/12/39/man-6153298_1280.jpg'),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          const Text(
                            'John Fred',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Divider(
              endIndent: 10,
              indent: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: const [
                SizedBox(
                  width: 110,
                  child: ListTile(
                    title: Text('SERVICES'),
                  ),
                ),
                Expanded(
                    child: CupertinoTextField(
                  textInputAction: TextInputAction.search,
                  prefix: Icon(CupertinoIcons.search),
                  placeholder: 'search service',
                )),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          ProfileCategory(),
        ],
      ),
    );
  }
}
