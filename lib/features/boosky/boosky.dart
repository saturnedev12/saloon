import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:saloon/features/services_list/services_list.dart';

class Boosky extends StatefulWidget {
  const Boosky({Key? key}) : super(key: key);

  @override
  State<Boosky> createState() => _BooskyState();
}

class _BooskyState extends State<Boosky> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'SALOON',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.white,
                  height: 250,
                ),
                Positioned(
                  left: 10,
                  child: SizedBox(
                    width: 140,
                    //height: 20,
                    child: ActionChip(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        label: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Near You',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              CupertinoIcons.location_fill,
                              color: Colors.white54,
                              size: 16,
                            )
                          ],
                        ),
                        onPressed: () {}),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(const BorderSide(
                        color: Colors.white,
                      )),
                    ),
                    onPressed: () {},
                    child: const SizedBox(
                      width: 100,
                      child: Center(child: Text('At Office')),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(const BorderSide(
                        color: Colors.white,
                      )),
                    ),
                    onPressed: () {},
                    child: const SizedBox(
                      width: 100,
                      child: Center(child: Text('Now')),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                height: 400,
                child: GridView.builder(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 190,
                    crossAxisSpacing: 20,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.of(context, rootNavigator: true)
                          .push(CupertinoPageRoute(
                        builder: (context) => ServicesList(),
                      ));
                    },
                    child: SizedBox(
                      //color: Colors.red,
                      width: 180,
                      height: 200,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 65,
                            backgroundColor: Colors.grey[300],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Skin care',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
