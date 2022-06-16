import 'package:flutter/material.dart';
import '../../shared_widgets/service_card.dart';

class ProfileCategory extends StatelessWidget {
  const ProfileCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
          height: 600,
          // width: 100,
          child: DefaultTabController(
            initialIndex: 0,
            length: 4,
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(60.0),
                child: AppBar(
                  automaticallyImplyLeading: false,
                  //toolbarHeight: 0,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  flexibleSpace: SizedBox(height: 0),
                  bottom: TabBar(
                    padding: EdgeInsets.all(5),
                    indicator: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30)),
                    labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    unselectedLabelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    tabs: const <Widget>[
                      Tab(
                        icon: Text('Hair'),
                      ),
                      Tab(
                        icon: Text('Barber'),
                      ),
                      Tab(
                        icon: Text('Hair'),
                      ),
                      Tab(
                        icon: Text('Barber'),
                      ),
                    ],
                  ),
                ),
              ),
              body: TabBarView(
                children: <Widget>[
                  ListView.builder(
                    itemCount: 7,
                    itemBuilder: (context, index) => const ServiceCarde(),
                  ),
                  const Center(
                    child: Text("Page History"),
                  ),
                  const Center(
                    child: Text("Page History"),
                  ),
                  const Center(
                    child: Text("Page History"),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
