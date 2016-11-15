// Copyright (c) 2016, Nick Ng. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';

import 'dart:js' as js;

class SweetAlert {

  static void swal(String title,
      {String text, String type, bool showConfirmButton, bool showCancelButton, String confirmButtonColor, String confirmButtonText, String cancelButtonColor, String cancelButtonText, bool closeOnConfirm, bool closeOnCancel, String imageUrl, bool html, int timer, String animation, String inputPlaceholder, bool showLoaderOnConfirm, Function callback}) {
    var options = {
      'title': title
    };
    if (text != null) {
      options['text'] = text;
    }
    if (type != null) {
      options['type'] = type;
    }
    if (showConfirmButton != null) {
      options['showConfirmButton'] = showConfirmButton;
    }
    if (showCancelButton != null) {
      options['showCancelButton'] = showCancelButton;
    }
    if (confirmButtonColor != null) {
      options['confirmButtonColor'] = confirmButtonColor;
    }
    if (confirmButtonText != null) {
      options['confirmButtonText'] = confirmButtonText;
    }
    if (cancelButtonColor != null) {
      options['cancelButtonColor'] = cancelButtonColor;
    }
    if (cancelButtonText != null) {
      options['cancelButtonText'] = cancelButtonText;
    }
    if (closeOnConfirm != null) {
      options['closeOnConfirm'] = closeOnConfirm;
    }
    if (closeOnCancel != null) {
      options['closeOnCancel'] = closeOnCancel;
    }
    if (imageUrl != null) {
      options['imageUrl'] = imageUrl;
    }
    if (html != null) {
      options['html'] = html;
    }
    if (timer != null) {
      options['timer'] = timer;
    }
    if (animation != null) {
      options['animation'] = animation;
    }
    if (inputPlaceholder != null) {
      options['inputPlaceholder'] = inputPlaceholder;
    }
    if (showLoaderOnConfirm != null) {
      options['showLoaderOnConfirm'] = showLoaderOnConfirm;
    }

    var args = [];
    args.add(new js.JsObject.jsify(options));
    if (callback != null) {
      args.add(callback);
    }
    js.context.callMethod("swal", args);
  }
}
