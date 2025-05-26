import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // TODO get collection of orders
  final CollectionReference orders =
      FirebaseFirestore.instance.collection('orders');

  // TODO saver order to db
  Future<void> saveOrderToDatabase(String receipt) async {
    await orders.add({
      'date': DateTime.now(),
      'order': receipt,
    // TODO add more fields as necessary..

    });
  }
}