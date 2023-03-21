import 'package:appwrite/appwrite.dart';

class Appwrite {
  static final Appwrite instance = Appwrite._internal();

  late final Client client;

  factory Appwrite._() {
    return instance;
  }

  Appwrite._internal() {
    client = Client()
        .setEndpoint('http://154.26.128.15:8081/v1')
        .setProject('641842074adc72d97413')
        .setSelfSigned(status: true);
  }
}
