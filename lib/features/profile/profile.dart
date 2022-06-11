import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class _ItemProfile extends StatelessWidget {
  _ItemProfile({Key? key, required this.title, required this.icon})
      : super(key: key);
  String title;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(icon),
                SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )),
        const Divider(
          indent: 10,
          endIndent: 10,
        ),
      ],
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: 10,
          left: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.onBackground,
                  radius: 40,
                  child: const Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'Issac Lucas',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    TextButton(
                      child: Row(
                        children: const [
                          Text(
                            'Voir le compte',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          Icon(Icons.chevron_right)
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            _ItemProfile(
              icon: Icons.security_outlined,
              title: 'Centre de sécurité sur le COVID 19',
            ),
            _ItemProfile(
              icon: Icons.data_saver_off_outlined,
              title: 'Aide',
            ),
            _ItemProfile(
              icon: CupertinoIcons.heart_fill,
              title: 'vos Favoris',
            ),
            _ItemProfile(
              icon: CupertinoIcons.bag,
              title: 'Préférence professionnels',
            ),
            _ItemProfile(
              icon: CupertinoIcons.chart_pie_fill,
              title: 'Préférence professionnels',
            ),
            _ItemProfile(
              icon: CupertinoIcons.tickets_fill,
              title: 'Abonnement premium',
            ),
            _ItemProfile(
              icon: CupertinoIcons.bell_fill,
              title: 'Notification',
            ),
            _ItemProfile(
              icon: CupertinoIcons.bag_badge_plus,
              title: 'Travailler avec Saloon',
            ),
          ],
        ),
      ),
    );
  }
}
