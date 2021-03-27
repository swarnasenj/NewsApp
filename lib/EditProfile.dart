import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

   File image;
  TextEditingController nameController = new TextEditingController();

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
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
          size: 20,
          color: Colors.black,),


        ),
      ),

       body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image: image != null
                                  ? FileImage(image)
                                  : AssetImage('assets/images/logo.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.only(top: 20),
                      alignment: Alignment.bottomRight,
                      child: InkWell(
                        onTap: () {
                          getImage();
                        },
                        child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(25)),
                            child: Icon(
                              Icons.image,
                              color: Colors.white,
                              size: 17,
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "Hello,",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
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
                        controller: nameController,
                        decoration: InputDecoration(
                          hintText: "Name",
                          labelText: "Enter Name",
                          labelStyle:
                              TextStyle(fontSize: 15, color: Colors.blue),
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
                        decoration: InputDecoration(
                          hintText: "Phone Number",
                          labelText: "Enter Phone Number",
                          labelStyle:
                              TextStyle(fontSize: 15, color: Colors.blue),
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.number,
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
                        decoration: InputDecoration(
                          hintText: "Email",
                          labelText: "Enter Email",
                          labelStyle:
                              TextStyle(fontSize: 15, color: Colors.blue),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton.icon(
                        onPressed: () {
                          setState(() {
                          });
                          Object fullName;
                          print(fullName);
                        },
                        icon: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 18,
                        ),
                        label: Text(
                          "Edit",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
     
    );
  }
}