import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:saloon/features/book_service/widgets/buttom_seat.dart';

class BookServicePage extends StatefulWidget {
  const BookServicePage({Key? key}) : super(key: key);

  @override
  State<BookServicePage> createState() => _BookServicePageState();
}

class _BookServicePageState extends State<BookServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text(
              'Graduate',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
            toolbarHeight: 90,
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
                height: 200,
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
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://www.auletch.com/wp-content/uploads/2018/05/AULETCH-24.jpg'),
                  ),
                ),
                child: Container(
                  alignment: Alignment.bottomRight,
                  child: Chip(
                    side: BorderSide(color: Colors.black, width: 2),
                    backgroundColor: Colors.white,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    label: Text('299 \$'),
                  ),
                ),
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.all(6),
            sliver: SliverToBoxAdapter(
                child: Text(
              'Type',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            )),
          ),
          SliverToBoxAdapter(
              child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 200,
              autoPlay: false,
              enlargeCenterPage: true,
              disableCenter: true,
              viewportFraction: 0.5,
              height: 200.0,
            ),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Column(
                    children: [
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.only(top: 6),
                            width: double.infinity,
                            foregroundDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: (i == 1)
                                  ? Colors.black54
                                  : Colors.transparent,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://i.pinimg.com/550x/a9/2a/da/a92ada0ecc17b88f7c3651ffd8076c21.jpg'),
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'text $i',
                              style: TextStyle(fontSize: 16.0),
                            )),
                      ),
                      InputChip(
                        onPressed: () {},
                        backgroundColor: Color.fromARGB(122, 229, 225, 225),
                        checkmarkColor: Colors.white,
                        selected: i == 1,
                        selectedColor: Colors.black,
                        labelStyle: TextStyle(
                          fontSize: 12.5,
                          fontWeight: FontWeight.bold,
                          color: (i == 1) ? Colors.white : Colors.black,
                        ),
                        label: Text(
                          'toto erzerqererqerrreezerqzer',
                        ),
                      )
                    ],
                  );
                },
              );
            }).toList(),
          )),
          const SliverPadding(
            padding: EdgeInsets.all(6),
            sliver: SliverToBoxAdapter(
                child: Text(
              'Date and hour',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            )),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 10, right: 10),
            sliver: SliverToBoxAdapter(
              child: DateTimePicker(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20),
                  fillColor: Color.fromARGB(121, 189, 188, 188),
                  filled: true,
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                type: DateTimePickerType.dateTimeSeparate,
                dateMask: 'd MMM, yyyy',
                initialValue: DateTime.now().toString(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                icon: Icon(Icons.event),
                dateLabelText: 'Date',
                timeLabelText: "Hour",
                selectableDayPredicate: (date) {
                  // Disable weekend days to select from the calendar
                  if (date.weekday == 6 || date.weekday == 7) {
                    return false;
                  }

                  return true;
                },
                onChanged: (val) => print(val),
                validator: (val) {
                  print(val);
                  return null;
                },
                onSaved: (val) => print(val),
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.all(8),
            sliver: SliverToBoxAdapter(
                child: Text(
              'Number of seats',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            )),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              width: double.infinity,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ButtomSeat(onPressed: () {}, signe: '-'),
                Chip(
                    label: Text(
                  '4',
                  style: TextStyle(fontSize: 17),
                )),
                ButtomSeat(onPressed: () {}, signe: '+'),
              ]),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.all(8),
            sliver: SliverToBoxAdapter(
                child: Text(
              'Instructions',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            )),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 10, right: 10),
            sliver: SliverToBoxAdapter(
              child: CupertinoTextField(
                maxLines: null,
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.done,
                padding: EdgeInsets.all(10),
                placeholder: 'Add instructions',
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(121, 189, 188, 188),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 18, left: 15, right: 15, top: 10),
        height: 79,
        child: ElevatedButton(
          onPressed: () {},
          child: Text('ADD TO PASKET'),
        ),
      ),
    );
  }
}
