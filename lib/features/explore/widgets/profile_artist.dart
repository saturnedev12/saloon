import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:saloon/features/explore/widgets/action_profile_button.dart';
import 'package:saloon/features/explore/widgets/profile_category.dart';

import '../../chat/widgets/chat_queue.dart';
import '../../shared_widgets/service_card.dart';

class ProfileArtist extends StatefulWidget {
  const ProfileArtist({Key? key}) : super(key: key);

  @override
  State<ProfileArtist> createState() => _ProfileArtistState();
}

class _ProfileArtistState extends State<ProfileArtist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Padding(
              padding: EdgeInsets.only(left: 90),
              child: Text(
                'Loic Medeleine',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
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
            flexibleSpace: Stack(
              children: [
                FlexibleSpaceBar(
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
                              'https://res.cloudinary.com/planity/image/upload/t_d_main,f_auto/i8j6rqukamss1olfl6wq')),
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
                const Positioned(
                  bottom: 10,
                  left: 50,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://static01.nyt.com/images/2021/01/28/fashion/27SKIN-HAIR-5/27SKIN-HAIR-5-articleLarge.jpg?quality=75&auto=webp&disable=upscale'),
                    radius: 40,
                  ),
                ),
              ],
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
