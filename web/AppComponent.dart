import 'package:angular2/core.dart';

import 'package:sweetalert_angular_dart/sweetalert_angular_dart.dart';

@Component(
    selector: 'my-app',
    styleUrls: const ['AppComponent.css'],
    templateUrl: 'AppComponent.html')
class AppComponent {

  void example1() {
    SweetAlert.swal("Here's a message!");
  }

  void example2() {
    SweetAlert.swal("Here's a message!", text: "It's pretty, isn't it?");
  }

  void example3() {
    SweetAlert.swal("Good job!", text: "You clicked the button!", type: "success");
  }

  void example4() {
    //
  }

  void example5() {
    //
  }

  void example6() {
    SweetAlert.swal(
      "Sweet!",
      text: "Here's a custom image.",
        imageUrl: "images/thumbs-up.jpg");
  }
}
