# sweetalert_angular_dart

[SweetAlert](http://t4t5.github.io/sweetalert/) for [Angular Dart](https://angular.io/dart).

[Demo/Docs](https://ngyewch.github.io/sweetalert-angular-dart/)

## Setup

pubspec.yaml:

    dependencies:
      sweetalert_angular_dart: 

HTML:

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />

    <script type="text/javascript" src="packages/sweetalert_angular_dart/sweetalert-dev.js"></script>

Dart:

    import 'package:sweetalert_angular_dart/sweetalert_angular_dart.dart';

## Usage

Dart:

    SweetAlert.swal("Good job!", text: "You clicked the button!", type: "success");
