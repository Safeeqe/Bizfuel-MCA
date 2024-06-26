import 'package:cloud_firestore/cloud_firestore.dart';

class FeedbackModel {
  String feedbackId;
  String uid;
  String fromModule;
  String feedbackMessage;
  Timestamp timestamp;

  FeedbackModel(
      {required this.feedbackMessage,
      required this.fromModule,
      required this.timestamp,
      required this.feedbackId,
      required this.uid});

  Map<String, dynamic> toJson() => {
        "feedbackMessage": feedbackMessage,
        "uid": uid,
        "fromModule": fromModule,
        "feedbackId": feedbackId,
        "timestamp": Timestamp.now()
      };

  factory FeedbackModel.fromjson(Map<String, dynamic> json) {
    return FeedbackModel(
        feedbackMessage: json["feedbackMessage"],
        fromModule: json["fromModule"],
        timestamp: json["timestamp"],
        feedbackId: json["feedbackId"],
        uid: json["uid"]);
  }
}
