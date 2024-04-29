import 'package:flutter/material.dart';
import '../models/gallery.dart';
import '../module/gallery.dart';
import '../untils/custom_color.dart';
import '../untils/utils.dart';
import '../utils/custom_color.dart';
import '../utils/utils.dart';
import 'detail_screen.dart';


class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Gallery gallery = ModalRoute.of(context)?.settings.arguments as Gallery;
    return Scaffold(
      appBar: buildAppBar(gallery.title),
      body: DetailScreen(gallery: gallery),
    );
  }

  AppBar buildAppBar(String title) {
    return AppBar(
      title: Text(
        title,
        style: Utils.buildTitleTextStyle(),
      ),
      centerTitle: true,
      backgroundColor: Color(CustomColor.primary.value),
      leading: Container(
        width: 40,
        height: 40,
        margin: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          color: Color(CustomColor.secondary.value),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
      ),
      actions: const [
        Icon(
          Icons.more_vert,
          color: Colors.white,
        ),
      ],
    );
  }
}
