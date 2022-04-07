import 'package:flutter/material.dart';
import 'package:lost_and_found/components/custom_button.dart';
import 'package:lost_and_found/globals.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class FoundItemScreen extends StatelessWidget {
  const FoundItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CarouselSlider(
            options: CarouselOptions(height: 200.0),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://m.media-amazon.com/images/I/315vj6oj-FL.jpg'),
                            fit: BoxFit.cover)),
                  );
                },
              );
            }).toList(),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'boAt Headphones',
                  style: kTextStyle1,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Found 8 hours ago',
                  style: kTextStyle2,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: primaryColor),
                      child: Text(
                        '#headphones',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: primaryColor),
                      child: Text(
                        '#headphones',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum at velit sed sem laoreet fringilla non ut erat. Nulla mollis finibus imperdiet. Sed vel enim vitae lorem dignissim sagittis nec ut nunc. Vivamus placerat rutrum velit sed feugiat. Pellentesque sed sagittis nibh. Ut eget fermentum dolor',
                  style: kTextStyle3,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Location',
                  style: kTextStyle1,
                ),
                     SizedBox(
                  height: 10,
                ),
                Image(
                  image: NetworkImage('https://i.stack.imgur.com/HILmr.png'),
                ),
                SizedBox(
                  height: 40,
                ),
                CustomButton(buttonText: 'CLAIM', onClick: () {}),
              ],
            ),
          )
        ],
      ),
    );
  }
}
