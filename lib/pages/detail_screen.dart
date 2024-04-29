import 'package:flutter/material.dart';
import '../module/dummy_data.dart';
import '../module/gallery.dart';
import '../untils/custom_color.dart';
import '../untils/utils.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.gallery});

  final Gallery gallery;

  @override
  Widget build(BuildContext context) {
    int randomIndex = Utils.getRandomIndex();
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // image
                Container(
                  width: double.infinity,
                  height: 325.0,
                  margin: const EdgeInsets.all(16.0),
                  child: Card(
                    elevation: 15.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    shadowColor: Color(CustomColor.charcoalGrey.value),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.asset(
                        gallery.img,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                // long title
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(20, 0, 16, 16),
                  child: Text(
                    textAlign: TextAlign.start,
                    gallery.longTitle,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                // description
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(20, 0, 16, 20),
                  child: Text(
                    textAlign: TextAlign.justify,
                    gallery.description,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ),
                // see more button
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(20, 0, 16, 20),
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: Color(CustomColor.primary.value),
                      padding: const EdgeInsets.all(8.0),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'See More',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                // suggestions text
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(20, 0, 16, 16),
                  child: Text(
                    textAlign: TextAlign.start,
                    'Suggestions',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.0,
                      color: Color(CustomColor.primary.value),
                      fontWeight: FontWeight.normal,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                // suggestions images row
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(20, 0, 16, 16),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        // random images
                        Container(
                          margin: const EdgeInsets.all(5.0),
                          width: 180,
                          height: 180,
                          child: Card(
                            elevation: 8.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            shadowColor: Color(CustomColor.charcoalGrey.value),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    DummyData.getImages()[randomIndex - 1].img,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                // for title text
                                Positioned(
                                    bottom: 10,
                                    left: 10,
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        DummyData.getImages()[randomIndex - 1]
                                            .title,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Roboto',
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5.0),
                          width: 180,
                          height: 180,
                          child: Card(
                            elevation: 8.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            shadowColor: Color(CustomColor.charcoalGrey.value),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    DummyData.getImages()[randomIndex].img,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                // for title text
                                Positioned(
                                    bottom: 10,
                                    left: 10,
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        DummyData.getImages()[randomIndex]
                                            .title,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Roboto',
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5.0),
                          width: 180,
                          height: 180,
                          child: Card(
                            elevation: 8.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            shadowColor: Color(CustomColor.charcoalGrey.value),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    DummyData.getImages()[randomIndex + 1].img,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                // for title text
                                Positioned(
                                    bottom: 10,
                                    left: 10,
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        DummyData.getImages()[randomIndex + 1]
                                            .title,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Roboto',
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        }
        else {
          return SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // image
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 372.0,
                    height: 298.0,
                    margin: const EdgeInsets.all(16.0),
                    child: Card(
                      elevation: 15.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      shadowColor: Color(CustomColor.charcoalGrey.value),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset(
                          gallery.img,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // long title
                      Container(
                        margin: const EdgeInsets.fromLTRB(20, 16, 16, 20),
                        width: double.infinity,
                        child: Text(
                          textAlign: TextAlign.start,
                          gallery.longTitle,
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      // description
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.fromLTRB(20, 0, 16, 20),
                        child: Text(
                          textAlign: TextAlign.justify,
                          gallery.description,
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 17.0,
                            fontWeight: FontWeight.normal,
                            overflow: TextOverflow.visible,
                          ),
                        ),
                      ),
                      // see more button
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.fromLTRB(20, 0, 16, 20),
                        child: FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor: Color(CustomColor.primary.value),
                            padding: const EdgeInsets.all(8.0),
                          ),
                          onPressed: () {  },
                          child: const Text('See More',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),),
                        ),
                      ),
                      // suggestions text
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.fromLTRB(20, 0, 16, 16),
                        child: Text(
                          textAlign: TextAlign.start,
                          'Suggestions',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20.0,
                            color: Color(CustomColor.primary.value),
                            fontWeight: FontWeight.normal,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      // suggestions images row
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.fromLTRB(20, 0, 16, 16),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              // random images
                              Container(
                                margin: const EdgeInsets.all(5.0),
                                width: 180,
                                height: 180,
                                child: Card(
                                  elevation: 8.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  shadowColor: Color(CustomColor.charcoalGrey.value),
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(15.0),
                                        child: Image.asset(
                                          DummyData.getImages()[randomIndex - 1].img,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      // for title text
                                      Positioned(
                                          bottom: 10,
                                          left: 10,
                                          child: Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Text(
                                              DummyData.getImages()[randomIndex - 1].title,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Roboto',
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(5.0),
                                width: 180,
                                height: 180,
                                child: Card(
                                  elevation: 8.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  shadowColor: Color(CustomColor.charcoalGrey.value),
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(15.0),
                                        child: Image.asset(
                                          DummyData.getImages()[randomIndex].img,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      // for title text
                                      Positioned(
                                          bottom: 10,
                                          left: 10,
                                          child: Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Text(
                                              DummyData.getImages()[randomIndex].title,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Roboto',
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(5.0),
                                width: 180,
                                height: 180,
                                child: Card(
                                  elevation: 8.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  shadowColor: Color(CustomColor.charcoalGrey.value),
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(15.0),
                                        child: Image.asset(
                                          DummyData.getImages()[randomIndex + 1].img,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      // for title text
                                      Positioned(
                                          bottom: 10,
                                          left: 10,
                                          child: Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Text(
                                              DummyData.getImages()[randomIndex + 1].title,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Roboto',
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        }
      },
    );
  }
}
