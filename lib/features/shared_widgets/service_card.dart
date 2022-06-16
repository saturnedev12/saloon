import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:saloon/features/book_service/book_service_page.dart';

class ServiceCarde extends StatelessWidget {
  const ServiceCarde({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context, rootNavigator: true).push(CupertinoPageRoute(
          builder: (context) => BookServicePage(),
        ));
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(left: 10, right: 10),
            height: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Middle Fade at zero',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Flexible(
                        child: SizedBox(
                      width: 200,
                      child: Text(
                        '''Les blagues de Toto sont des.Les blagues de Toto sont des.Les blagues de Toto sont des.''',
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.fade,
                      ),
                    )),
                    Text("25,00 \$"),
                  ],
                ),
                Container(
                  width: 160,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://i.pinimg.com/736x/e2/f1/26/e2f1264eb32cfc3aaced9558ab015f97.jpg'))),
                ),
              ],
            ),
          ),
          const Divider(
            endIndent: 10,
            indent: 10,
          ),
        ],
      ),
    );
  }
}
