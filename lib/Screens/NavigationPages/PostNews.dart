import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PostNews extends StatefulWidget {
  @override
  _PostNewsState createState() => _PostNewsState();
}

class _PostNewsState extends State<PostNews> {
  File image;
  TextEditingController headlineController = new TextEditingController();
  TextEditingController aboutController = new TextEditingController();
  TextEditingController categoryController = new TextEditingController();
  List category = [
    "Breaking",
    "International News",
    "Bangladesh News",
    "All-Division",
    "All-District",
    "Politics",
    "Sports",
    "Culture",
    "Technology",
    "Literature",
    "World",
    "Business",
    "Life Style",
    "Entertainment",
    "Job",
    "Opinion",
    "Reports",
    "Health",
    "Education",
  ];
  bool showDropdown = false;

  Future getImage() async {
    final pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width - 50,
            margin: EdgeInsets.only(top: 50, left: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: image != null
                        ? FileImage(image)
                        : AssetImage('assets/images/logo1.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: InkWell(
              onTap: () {
                getImage();
              },
              child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Choose Image",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 70,
            margin: EdgeInsets.only(top: 20, left: 20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          width: 0.6, color: Colors.grey.withOpacity(0.5))),
                  child: TextField(
                    controller: headlineController,
                    decoration: InputDecoration(
                      hintText: "News Headline",
                      labelText: "Enter News Headline",
                      labelStyle: TextStyle(fontSize: 15, color: Colors.blue),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          width: 0.6, color: Colors.grey.withOpacity(0.5))),
                  child: TextField(
                    maxLines: null,
                    minLines: 3,
                    controller: aboutController,
                    decoration: InputDecoration(
                      hintText: "About News",
                      labelText: "Enter About News",
                      labelStyle: TextStyle(fontSize: 15, color: Colors.blue),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (showDropdown) {
                        showDropdown = false;
                      } else {
                        showDropdown = true;
                      }
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            width: 0.6, color: Colors.grey.withOpacity(0.5))),
                    child: TextField(
                      controller: categoryController,
                      enabled: false,
                      decoration: InputDecoration(
                          hintText: "News Category",
                          labelText: "Enter News Category",
                          labelStyle:
                              TextStyle(fontSize: 15, color: Colors.blue),
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            showDropdown
                                ? Icons.expand_less
                                : Icons.expand_more,
                            size: 18,
                          )),
                    ),
                  ),
                ),
                showDropdown
                    ? Container(
                        width: MediaQuery.of(context).size.width - 50,
                        margin: EdgeInsets.only(top: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(category.length, (index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    categoryController.text = category[index];
                                    showDropdown = false;
                                  });
                                },
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Text(
                                          "${category[index]}",
                                          style: TextStyle(
                                              color: Colors.black54),
                                        ),
                                      ),
                                      Divider()
                                    ],
                                  ),
                                ),
                              );
                            })),
                      )
                    : Container(),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 20, left: 20),
            width: MediaQuery.of(context).size.width - 60,
            child: InkWell(
              onTap: () {},
              child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Post News",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
