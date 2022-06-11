import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:saloon/features/explore/widgets/profile_artist.dart';
import 'package:saloon/features/explore/widgets/profile_saloon.dart';

class ExploreCard extends StatelessWidget {
  ExploreCard({Key? key, required this.artiste}) : super(key: key);
  bool artiste;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        artiste
            ? InkWell(
                onTap: () {
                  Navigator.of(
                    context,
                    rootNavigator: true,
                  ).push(CupertinoPageRoute(
                    builder: (context) => const ProfileArtist(),
                  ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.only(left: 5),
                  height: 240,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Greg Maswen',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                              const Text(
                                  '''The Bedford Head Shoppe has offered premium
                                  services at an 
                                  affordable price since 2008.
                                  '''),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      for (int i = 0; i < 3; i++)
                                        const Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      ),
                                      Text('300')
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: ShaderMask(
                          shaderCallback: (rect) {
                            return const LinearGradient(
                              begin: Alignment.center,
                              end: Alignment.centerLeft,
                              colors: [Colors.black, Colors.transparent],
                            ).createShader(
                                Rect.fromLTRB(0, 0, rect.width, rect.height));
                          },
                          blendMode: BlendMode.dstIn,
                          child: Image.network(
                            'https://www.alsa-co.fr/wp-content/uploads/2017/12/cheveux-long-homme-hommes-longs-459x600.jpg',
                            height: 400,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            : InkWell(
                onTap: () {
                  Navigator.of(
                    context,
                    rootNavigator: true,
                  ).push(CupertinoPageRoute(
                    builder: (context) => const ProlfileSaloon(),
                  ));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(children: [
                        Container(
                          height: 200,
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://mir-s3-cdn-cf.behance.net/project_modules/disp/efd50f5624398.56023917c48cf.jpg',
                                ),
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(
                            height: 100,
                            child: ListView.builder(
                              cacheExtent: 100,
                              itemExtent: 110,
                              itemCount: 4,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Container(
                                margin: const EdgeInsets.only(right: 5, top: 5),
                                decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        'https://i.pinimg.com/736x/ae/67/7a/ae677a18891ad058e1526f2b087028b6.jpg',
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            )),
                      ]),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Smart PLus Glam',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          CupertinoIcons.location_fill,
                          color: Colors.grey,
                        ),
                        Text(
                          'Calle Mata,8 , 28500, Agranda del rey',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
        const Divider(),
      ],
    );
  }
}
