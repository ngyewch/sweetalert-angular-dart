import 'dart:async';

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
    SweetAlert.swal("Here's a message!",
        text: "It's pretty, isn't it?");
  }

  void example3() {
    SweetAlert.swal("Good job!",
        text: "You clicked the button!",
        type: "success");
  }

  void example4() {
    SweetAlert.swal("Are you sure?",
        text: "You will not be able to recover this imaginary file!",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#DD6B55",
        confirmButtonText: "Yes, delete it!",
        closeOnConfirm: false,
        callback: (bool isConfirm) =>
            SweetAlert.swal("Deleted!",
                text: "Your imaginary file has been deleted.",
                type: "success"));
  }

  void example5() {
    SweetAlert.swal("Are you sure?",
        text: "You will not be able to recover this imaginary file!",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#DD6B55",
        confirmButtonText: "Yes, delete it!",
        cancelButtonText: "No, cancel plx!",
        closeOnConfirm: false,
        closeOnCancel: false,
        callback: (bool isConfirm) => isConfirm
            ? SweetAlert.swal("Deleted!", text: "Your imaginary file has been deleted.", type: "success")
            : SweetAlert.swal("Cancelled", text: "Your imaginary file is safe :)", type: "error"));
  }

  void example6() {
    SweetAlert.swal("Sweet!",
        text: "Here's a custom image.",
        imageUrl: "images/thumbs-up.jpg");
  }

  void example7() {
    SweetAlert.swal("HTML <small>Title</small>!",
      text: 'A custom <span style="color:#F8BB86">html<span> message.',
      html: true);
  }

  void example8() {
    SweetAlert.swal("Auto close alert!",
      text: "I will close in 2 seconds.",
      timer: 2000,
      showConfirmButton: false);
  }

  void example9() {
    SweetAlert.swal("An input!",
      text: "Write something interesting:",
      type: "input",
      showCancelButton: true,
      closeOnConfirm: false,
      animation: "slide-from-top",
      inputPlaceholder: "Write something",
      callback: (inputValue) => (inputValue is bool)
          ? inputValue
          : ((inputValue != "")
              ? SweetAlert.swal("Nice!", text: "You wrote: " + inputValue, type: "success")
              : SweetAlert.showInputError("You need to write something!")));
  }

  void example10() {
    SweetAlert.swal("Ajax request example",
      text: "Submit to run ajax request",
      type: "info",
      showCancelButton: true,
      closeOnConfirm: false,
      showLoaderOnConfirm: true,
      callback: (bool isConfirm) => new Timer(const Duration(milliseconds: 2000), () => SweetAlert.swal("Ajax request finished!")));
  }
}
