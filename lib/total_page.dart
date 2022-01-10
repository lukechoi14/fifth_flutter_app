import 'package:fifth_flutter_app/my_cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'my_controller.dart';
class TotalPage extends StatelessWidget {
  TotalPage({Key? key}) : super(key: key);
  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Total Items",
              style: TextStyle(fontSize: 30,color: Colors.blue),),
              SizedBox(height: 20,),
              Obx(()=>Text("${c.sum}",style: TextStyle(fontSize: 40,color: Colors.redAccent),)),
              SizedBox(height: 20,),
              Container(
                width: 170,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  // color: Colors.blue.shade900
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    //elvated button 색 바꾸기
                    primary: Colors.blue.shade900,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                  onPressed: ()=>Get.back(),
                  child: Text("Go back",
                    style: TextStyle(fontSize: 30,color: Colors.white),),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
