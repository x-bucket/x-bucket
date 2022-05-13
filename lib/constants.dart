import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:x_bucket/controllers/auth_controller.dart';
import 'package:x_bucket/views/screens/add_video_screen.dart';
import 'package:x_bucket/views/screens/search_screen.dart';
import 'package:x_bucket/views/screens/video_screen.dart';

List pages = [
  VideoScreen(),
  SearchScreen(),
  const AddVideoScreen(),
  Text('Follower Screen'),
  Text('Profile Screen')
];
//color
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

//firebase
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

//contorllser
var authContoller = AuthController.instance;
