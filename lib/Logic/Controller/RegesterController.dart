import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:proflutter1/Routes/rourte.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;


class RegesterController extends GetxController{


  var isfile=0;
  var isimage=0;
  late File image;
   late File certifcat;
  late String imagePath;
  late String filePath;
  final _picker = ImagePicker();
  late TextEditingController
  UsernameController,
      emailController,
      passwordController,
      ConfirmpasswordController,
      Mobile_NumberController;
  final storage = const FlutterSecureStorage();
  String temp = '';
  final SigninFormkey = GlobalKey<FormState>();
  var hidePassword = true.obs;
  var hideConfirmPassword = true.obs;

  Future<void> uploadDataWithFiles(File imageFile,  String pdfFile) async {
    final dio.Dio dioInstance = dio.Dio(); // Use the dio.Dio class
    const url = 'https://task5-riham-esmail.trainees-mad-s.com/api/auth/signup'; // Replace with your API endpoint
    final formData = dio.FormData.fromMap({
      'username': UsernameController.text,
      'email': emailController.text,
      'password': passwordController.text,
      'phone_number': Mobile_NumberController.text,
      'photo': await dio.MultipartFile.fromFile(imageFile.path, filename: 'image.jpg',),
      'certificate': await dio.MultipartFile.fromFile(pdfFile, filename: 'document.pdf',),
      'password_confirmation': ConfirmpasswordController.text,

    },
    );

    try {
      final response = await dioInstance.post(url, data: formData);
      if (response.statusCode == 200||  response.statusCode==201) {
        await storage.write(key: "email", value:emailController.text);

        print(response.data);
        print('Data uploaded successfully!');
        Get.toNamed(Routes.Verification);

      } else {
        Get.snackbar(
          "Warning!",
          "some thing was wrong!",
          icon: Icon(Icons.warning, color: Colors.green),
          snackPosition: SnackPosition.BOTTOM,
        );
        print('Error uploading data: ${response.data}');

      }
    } catch (e) {
      Get.snackbar(
        "Warning!",
        "some thing was wrong!",
        icon: Icon(Icons.warning, color: Colors.green),
        snackPosition: SnackPosition.BOTTOM,
      );
      print('Exception during data upload: $e');
    }
  }
  Future<void> getImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      isimage=1;
      image = File(pickedFile.path);
      imagePath = pickedFile.path;
      print(imagePath);
      update();
    } else {
      isimage=0;
      print('No image selected.');
    }
  }


  Future<void> getFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result == null) return;
    PlatformFile? certificate = result.files.first;
      filePath=certificate.path!;
    if (certificate == null) {
       isfile=0;
      print('Certificate file not selected.'); // Handle the case where no file is selected
      return;


    }

    else{
    isfile=1;

      print(filePath);
    }


  }

  @override
  void onInit() {
    UsernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    ConfirmpasswordController = TextEditingController();
    Mobile_NumberController = TextEditingController() ;
    super.onInit();
  }


  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return 'This Email is not valid';
    } else {
      return null;
    }
  }

  String? validatePassword(String value) {
    if (value.length == 0) {
      return " Required!";
    }
    if (value.length <= 8) {
      return "So short";
    }
    return null;

  }

}
