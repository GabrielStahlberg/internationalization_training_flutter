import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internationalization_training/language_action.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("internationalization".tr, style: const TextStyle(color: Colors.white),),
        actions: const [LanguageAction()]
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: widthSize * 0.02, bottom: widthSize * 0.02),
        itemCount: ItemsClass.itemsList().length,
        itemBuilder: (context, index) {
          ItemsClass item = ItemsClass.itemsList()[index];
          return Padding(
            padding: EdgeInsets.only(
                left: widthSize * 0.02,
                right: widthSize * 0.02,
                bottom: widthSize * 0.02
            ),
            child: Column(
              children: [
                SizedBox(
                  height: widthSize * 0.9,
                  width: widthSize,
                  child: Card(
                    elevation: 5,
                    child: Column(
                      children: [
                        SizedBox(
                          width: widthSize,
                          height: widthSize * 0.7,
                          child: Image.asset(item.imageUrl, fit: BoxFit.fill),
                        ),
                        SizedBox(height: widthSize * 0.03),
                        Center(child: Text(item.word, style: TextStyle(fontSize: widthSize * 0.08, fontWeight: FontWeight.bold))),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        }
      ),
    );
  }
}

class ItemsClass {
  final String imageUrl;
  final String word;

  ItemsClass(this.imageUrl, this.word);

  static List<ItemsClass> itemsList() {
    return <ItemsClass> [
      ItemsClass("assets/dog.PNG", "dog".tr),
      ItemsClass("assets/cat.PNG", "cat".tr),
      ItemsClass("assets/refri.PNG", "refrigerator".tr),
      ItemsClass("assets/ball.PNG", "ball".tr),
      ItemsClass("assets/book.PNG", "book".tr)
    ];
  }
}
