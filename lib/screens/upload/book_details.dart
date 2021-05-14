import 'package:book_sharing_management_application/components/customized_button.dart';
import 'package:book_sharing_management_application/data.dart';
import 'package:book_sharing_management_application/screens/upload/purpose_of_upload.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class BookDetails extends StatefulWidget {
  final uploadedBookNo;

  const BookDetails({Key key, this.uploadedBookNo}) : super(key: key);
  @override
  _BookDetails createState() => _BookDetails();
}

class _BookDetails extends State<BookDetails> {
  String frontViewUrl;
  String backViewUrl;
  String threeDViewUrl;
  final picker = ImagePicker();
  String imagePicked="Front";
  File _image;

  _getFromCamera() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
      uploadFile(_image);
    }
  }
  _getFromGallery() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
      uploadFile(_image);
    }
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _getFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _getFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
  Future uploadFile(File img) async {
    if (imagePicked=="Front"){
    Reference ref = FirebaseStorage.instance
        .ref()
        .child('bookImages/$loggedInEmail/bookNo${widget.uploadedBookNo}/FrontView');
    await ref.putFile(img).whenComplete(() {
      ref.getDownloadURL().then((fileUrl) {
        print(fileUrl);
        setState(() {
          FirebaseFirestore.instance.collection('BookUploadedDetails')
              .doc(loggedInEmail)
              .update({
            "BookDetails":{
              "Book$widget.uploadedBookNo":{
                'FrontView': fileUrl,
              }
            },
          });
           frontViewUrl= fileUrl;
        });
      });
    });
  }
    if (imagePicked=="Back") {
      Reference ref = FirebaseStorage.instance
          .ref()
          .child('bookImages/$loggedInEmail/bookNo${widget.uploadedBookNo}/BackView');
      await ref.putFile(img).whenComplete(() {
        ref.getDownloadURL().then((fileUrl) {
          print(fileUrl);
          setState(() {
            FirebaseFirestore.instance.collection('BookUploadedDetails')
                .doc(loggedInEmail)
                .update({
              "BookDetails":{
                "Book$widget.uploadedBookNo":{
                  'BackView': fileUrl,
                }
              },
            });
            backViewUrl= fileUrl;
          });
        });
      });
    }
    if (imagePicked=="3D") {
      Reference ref = FirebaseStorage.instance
          .ref()
          .child('bookImages/$loggedInEmail/bookNo${widget.uploadedBookNo}/3DView');
      await ref.putFile(img).whenComplete(() {
        ref.getDownloadURL().then((fileUrl) {
          print(fileUrl);
          setState(() {
            FirebaseFirestore.instance.collection('BookUploadedDetails')
                .doc(loggedInEmail)
                .update({
              "BookDetails":{
                "Book$widget.uploadedBookNo":{
                  '3DView': fileUrl,
                }
              },
            });
            threeDViewUrl= fileUrl;
          });
        });
      });
    }
    }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF223D6B),
          title: Text(
            "Book Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        backgroundColor: Color(0xFFECF0F3),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: height*0.03,),
              Icon(
                CupertinoIcons.book_circle_fill,
                size: 60,
                color: Color(0xFF193566),
              ),
              Text(
                'Upload Book Images Like the Reference Images Given',
                style: TextStyle(
                  color: Color(0xFF193566),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: height*0.02,),
              Image.asset("assets/images/BookImageUpload.jpeg"),
        SizedBox(height: height*0.02,),
              Row(
                children: [
                  SizedBox(width: width*0.23,),
                  GestureDetector(
                    onTap: () {
                      imagePicked="Front";
                      _showPicker(context);
                    },
                    child: Container(
                      height: height*0.1,
                      child: frontViewUrl != null
                          ? Stack(
                        children: [
                          Image.network(
                              frontViewUrl,
                              fit: BoxFit.cover
                          )
                        ],
                      )
                          : Container(
                          child: Image.network(
                              frontViewDummyUrl,
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                  ),
                  SizedBox(width: width*0.05,),
                  GestureDetector(
                    onTap: () {
                      imagePicked="Back";
                      _showPicker(context);
                    },
                    child: Container(
                      height: height*0.1,
                      child: backViewUrl != null
                          ? Stack(
                        children: [
                          Image.network(
                              backViewUrl,
                              fit: BoxFit.cover
                          )
                        ],
                      )
                          : Container(
                          child: Image.network(
                              backViewDummyUrl,
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                  ),
                  SizedBox(width: width*0.05,),
                  GestureDetector(
                    onTap: () {
                      imagePicked="3D";
                      _showPicker(context);
                    },
                    child: Container(
                      height: height*0.1,
                      child: threeDViewUrl != null
                          ? Stack(
                        children: [
                          Image.network(
                              threeDViewUrl,
                              fit: BoxFit.cover
                          )
                        ],
                      )
                          : Container(
                          child: Image.network(
                              threeDViewDummyUrl,
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height*0.02,),
              CustomizedNeumorphicButton(
                fontSize: 24.0,
                buttonText: "Next",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PurposeOfUpload(uploadedBookNo:widget.uploadedBookNo);
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
