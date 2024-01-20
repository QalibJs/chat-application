import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class EditCubit extends Cubit<int> {
  EditCubit() : super(0);
  TextEditingController bioController = TextEditingController();

  File? image;

  void pickImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;

    final imageTemporary = File(image.path);
    this.image = imageTemporary;
  }

  @override
  Future<void> close() {
    bioController.dispose();
    return super.close();
  }
}
