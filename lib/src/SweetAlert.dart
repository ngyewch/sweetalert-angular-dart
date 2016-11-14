// Copyright (c) 2016, Nick Ng. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';

import 'dart:js' as js;

class SweetAlert {

  static void swal(String title, {String text, String type, bool showCancelButton, String confirmButtonColor, String confirmButtonText, bool closeOnConfirm, String imageUrl}) {
    Map<String, dynamic> options = new Map<String, dynamic>();
    options['title'] = 'Hello';
    options['text'] = 'World';

    js.context.callMethod("swal", [new js.JsObject.jsify({
      'title': title,
      'text': text,
      'type': type,
      'showCancelButton': showCancelButton,
      'confirmButtonColor': confirmButtonColor,
      'confirmButtonText': confirmButtonText,
      'closeOnConfirm': closeOnConfirm,
      'imageUrl': imageUrl
    })]);
  }
}
