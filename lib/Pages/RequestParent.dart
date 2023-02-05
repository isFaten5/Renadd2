import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class RequestParent {
  String Title = " "; //

  String Type = " "; //
  String Content = ""; //
  String ParentID = " ";

  String SUsername = " "; //
  String Date = " "; //
//

  RequestParent(
      {required this.Title,
      required this.Type,
      required this.Content,
      required this.ParentID,
      required this.Date});
//to update student

// to delete student

// to add student
  AddRequestParent(Title, Type, Content, ParentID, SID, Date, Res) async {
    final ParentRequest = FirebaseFirestore.instance;
    await ParentRequest.collection("RequestParent").add({
      "Title": Title,
      "Status": Type,
      'Content': Content,
      'ParentID': ParentID,
      "StudentID": SID,
      "Date": Date,
      "Response": Res
    });
  }

  UpdateRequestParent(DocId, Field, Updated) async {
    CollectionReference RequestParent =
        FirebaseFirestore.instance.collection("RequestParent");

    switch (Field) {
      case 'Title':
        await RequestParent.doc(DocId).update({
          'Title': Updated,
        });
        break;

      case "Status":
        await RequestParent.doc(DocId).update({
          'Status': Updated,
        });
        break;

      case "Content":
        await RequestParent.doc(DocId).update({
          'Content': Updated,
        });
        break;
      case "ParentID":
        await RequestParent.doc(DocId).update({
          'ParentID': Updated,
        });
        break;
      case "StudentID":
        await RequestParent.doc(DocId).update({
          'StudentID': Updated,
        });
        break;
      case "Date":
        await RequestParent.doc(DocId).update({
          'Date': Updated,
        });
        break;
      case "Response":
        await RequestParent.doc(DocId).update({
          'Response': Updated,
        });
        break;
    }
  }

  DeleteRequestsParent(DocId) async {
    CollectionReference Parents =
        FirebaseFirestore.instance.collection("RequestParent");
    await Parents.doc(DocId).delete();
  }
} //END OF CLASS
