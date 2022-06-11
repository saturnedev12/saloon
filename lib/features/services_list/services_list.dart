import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../shared_widgets/service_card.dart';

class ServicesList extends StatefulWidget {
  const ServicesList({Key? key}) : super(key: key);

  @override
  State<ServicesList> createState() => _ServicesListState();
}

class _ServicesListState extends State<ServicesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'Barber',
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
              expandedHeight: 80.0,
              automaticallyImplyLeading: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: SizedBox(
                    height: 28,
                    child: CupertinoTextField(
                      textInputAction: TextInputAction.search,
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
                        fontSize: 13,
                      ),
                      suffix: const Icon(
                        CupertinoIcons.search,
                        size: 15,
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
                (context, index) => const ServiceCarde(),
                // Builds 1000 ListTiles
                childCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
