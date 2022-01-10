import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController{
  var books = 0.obs;
  var pens = 0.obs;

  incrementBooks() {
    books.value++;
  }
  decrementBooks() {
    if(books.value<=0){
      Get.snackbar("Buying Books", "Can not be less than zero",
      icon: const Icon(Icons.alarm),
      barBlur: 20,
      isDismissible: true,
      duration: const Duration(seconds: 3));
    }else {
      books.value--;
    }
  }
  incrementPens() {
    pens.value++;
  }
  decrementPens() {
    if(pens.value<=0){
      Get.snackbar("Buying Pens", "Can not be less than zero",
          icon: const Icon(Icons.alarm),
          barBlur: 20,
          isDismissible: true,
          duration: const Duration(seconds: 3));
    }else {
      pens.value--;
    }
  }
}