import 'package:get/get.dart';

// class Edu {
//   final String name;

//   Edu(this.name);
// }

class Counter extends GetxController {
  RxInt count = 0.obs;
  // Rx<Edu> edu = Edu("ictu").obs;

  void add() {
    count++;
  }
}
