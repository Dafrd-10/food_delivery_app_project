import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future addUserDetail(Map<String, dynamic> userInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .set(userInfoMap);
  }

  Future<void> UpdateUserwallet(String id, String amount) async {
    return await FirebaseFirestore.instance
        .collection("users")
        .doc(id)
        .update({"Wallet": amount});
  }

  Future<Stream?> getFoodCart(String s) async {
    return null;
  }

  Future<void> addFoodToCart(Map<String, dynamic> addFoodtoCart, String s) async {}

  void addFoodItem(Map<String, dynamic> addItem, String s) {}
}
