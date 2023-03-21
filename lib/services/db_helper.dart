import 'package:appwrite/appwrite.dart';
import 'package:appwrite_project/appwrite_utils.dart';
import 'package:appwrite_project/main.dart';
import 'package:appwrite_project/model_class.dart';
import 'package:appwrite_project/services/appwrite.dart';

class DBHelper {
  DBHelper._privateConstructor();

  static final DBHelper _instance = DBHelper._privateConstructor();

  static DBHelper get instance => _instance;
  static Databases? databases;

  init() {
    databases = Databases(client);
  }

  createInfo(
      {required String name,
      required String password,
      required String address,
      required String email,
      required String phone}) async {
    databases ?? init();
    try {
      //String? userId = await AuthHelper.instance.getUserId();
      await databases!.createDocument(
          databaseId: appwriteDatabaseId,
          collectionId: appwriteCollectionId,
          documentId: ID.unique(),
          data: {
            'name': name,
            'password': password,
            'address': address,
            'email': email,
            'phone': phone,
            "createdAt": DateTime.now().toString(),
            //"userId": userId,
          });
      return true;
    } catch (e) {
      rethrow;
    }
  }
}
