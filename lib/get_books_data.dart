import 'package:book_sharing_management_application/data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void getBooksData() {
  FirebaseFirestore.instance
      .collection('BookUploadedDetails')
      .doc("suyashdahake410@gmail.com")
      .get()
      .then((DocumentSnapshot documentSnapshot) {
    if (documentSnapshot.exists) {
      bookUploadedDetails = documentSnapshot.data();
      bookUploadedList = bookUploadedDetails["Books"];

      for (int i = 0; i <= bookUploadedList.length; ++i) {
        if (bookUploadedList[i]['ForSell'] == true) {
          bookUploadedListBuy.add(bookUploadedList[i]);
        }
        if (bookUploadedDetails["Books"][i]['ForLending'] == true) {
          bookUploadedListBorrow.add(bookUploadedList[i]) ;
        }
        if (bookUploadedDetails["Books"][i]['ForDonation'] == true) {
          bookUploadedListDonate.add(bookUploadedList[i]);
        }
      }
      print("Book Data  $bookUploadedListBuy");
      print("Book Data  $bookUploadedListBorrow");
    }
  });
}




