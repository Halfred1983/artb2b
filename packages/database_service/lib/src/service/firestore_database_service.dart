import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:database_service/src/models/models.dart';
import 'package:database_service/src/service/database_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart' as firestore;
import 'package:geoflutterfire2/geoflutterfire2.dart';


class FirestoreDatabaseService implements DatabaseService {
  FirestoreDatabaseService({
    required firestore.FirebaseFirestore database
  }) : _firestore = database;

  final firestore.FirebaseFirestore _firestore;
  final geoLocation = GeoFlutterFire();


  @override
  Future<void> addUser({required Artb2bUserEntity userEntity}) {
    try  {
      userEntity = userEntity.copyWith(userStatus: UserStatus.initialised);
      return _firestore.collection('users')
          .doc(userEntity.id)
          .set(userEntity.toJson());
    } on Exception catch (e) {
      throw e;
    }
  }

  @override
  Future<Artb2bUserEntity> getUser({required String userId}) async {
    try  {
      var documentSnapshot = (await _firestore.collection('users')
          .doc(userId).get());

      var data = documentSnapshot.data();
      return Artb2bUserEntity.fromJson(data!);
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<Artb2bUserEntity> updateUser({required Artb2bUserEntity artb2bUserEntity}) async {
    try  {
      await _firestore.collection('users')
          .doc(artb2bUserEntity.id).update(artb2bUserEntity.toJson());
      return artb2bUserEntity;
    } on Exception {
      rethrow;
    }

  }

  @override
  Stream<List<DocumentSnapshot>> findUsersByTypeAndRadius({
    required Artb2bUserEntity artb2bUserEntity,
    required double radius})  {

    var collectionReference = _firestore.collection('users');

    String field = 'artb2bUserEntityInfo.address.location';

    return geoLocation.collection(collectionRef: collectionReference)
        .within(center: artb2bUserEntity.artb2bUserEntityInfo!.address!.location!,
        radius: radius, field: field);
  }



}

