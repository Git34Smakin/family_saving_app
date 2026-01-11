import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  static final auth = FirebaseAuth.instance;
  static final firestore = FirebaseFirestore.instance;
}
