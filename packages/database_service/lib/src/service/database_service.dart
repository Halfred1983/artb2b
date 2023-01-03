import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/models.dart';

abstract class DatabaseService {

  Future<void> addUser({
    required Artb2bUserEntity userEntity,
  });

  Future<Artb2bUserEntity> getUser({
    required String userId,
  });

  Future<Artb2bUserEntity> updateUser({
    required Artb2bUserEntity artb2bUserEntity});

  Stream<List<DocumentSnapshot>> findUsersByTypeAndRadius({
    required Artb2bUserEntity artb2bUserEntity,
    required double radius});

}