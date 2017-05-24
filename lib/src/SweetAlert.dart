// Copyright (c) 2016, Nick Ng. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:js' as js;

class SweetAlert {

  static void swal(String title,
      {
      String text,
      String type,
      bool allowEscapeKey,
      String customClass,
      bool allowOutsideClick,
      bool showCancelButton,
      bool showConfirmButton,
      String confirmButtonText,
      String confirmButtonColor,
      String cancelButtonText,
      bool closeOnConfirm,
      bool closeOnCancel,
      String imageUrl,
      String imageSize,
      int timer,
      bool html,
      String animation,
      String inputType,
      String inputPlaceholder,
      String inputValue,
      bool showLoaderOnConfirm,
      Function callback}) {
    var options = { 'title': title};
    if (text != null) {
      options['text'] = text;
    }
    if (type != null) {
      options['type'] = type;
    }
    if (allowEscapeKey != null) {
      options['allowEscapeKey'] = allowEscapeKey;
    }
    if (customClass != null) {
      options['customClass'] = customClass;
    }
    if (allowOutsideClick != null) {
      options['allowOutsideClick'] = allowOutsideClick;
    }
    if (showCancelButton != null) {
      options['showCancelButton'] = showCancelButton;
    }
    if (showConfirmButton != null) {
      options['showConfirmButton'] = showConfirmButton;
    }
    if (confirmButtonText != null) {
      options['confirmButtonText'] = confirmButtonText;
    }
    if (confirmButtonColor != null) {
      options['confirmButtonColor'] = confirmButtonColor;
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
    if (imageSize != null) {
      options['imageSize'] = imageSize;
    }
    if (timer != null) {
      options['timer'] = timer;
    }
    if (html != null) {
      options['html'] = html;
    }
    if (animation != null) {
      options['animation'] = animation;
    }
    if (inputType != null) {
      options['inputType'] = inputType;
    }
    if (inputPlaceholder != null) {
      options['inputPlaceholder'] = inputPlaceholder;
    }
    if (inputValue != null) {
      options['inputValue'] = inputValue;
    }
    if (showLoaderOnConfirm != null) {
      options['showLoaderOnConfirm'] = showLoaderOnConfirm;
    }

    var args = [];
    args.add(new js.JsObject.jsify(options));
    if (callback is Function) {
      args.add(callback);
    }
    js.context.callMethod("swal", args);
  }

  static void setDefaults({
  String text,
  String type,
  bool allowEscapeKey,
  String customClass,
  bool allowOutsideClick,
  bool showCancelButton,
  bool showConfirmButton,
  String confirmButtonText,
  String confirmButtonColor,
  String cancelButtonText,
  bool closeOnConfirm,
  bool closeOnCancel,
  String imageUrl,
  String imageSize,
  int timer,
  bool html,
  String animation,
  String inputType,
  String inputPlaceholder,
  String inputValue,
  bool showLoaderOnConfirm
  }) {
    var options = {};
    if (text != null) {
      options['text'] = text;
    }
    if (type != null) {
      options['type'] = type;
    }
    if (allowEscapeKey != null) {
      options['allowEscapeKey'] = allowEscapeKey;
    }
    if (customClass != null) {
      options['customClass'] = customClass;
    }
    if (allowOutsideClick != null) {
      options['allowOutsideClick'] = allowOutsideClick;
    }
    if (showCancelButton != null) {
      options['showCancelButton'] = showCancelButton;
    }
    if (showConfirmButton != null) {
      options['showConfirmButton'] = showConfirmButton;
    }
    if (confirmButtonText != null) {
      options['confirmButtonText'] = confirmButtonText;
    }
    if (confirmButtonColor != null) {
      options['confirmButtonColor'] = confirmButtonColor;
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
    if (imageSize != null) {
      options['imageSize'] = imageSize;
    }
    if (timer != null) {
      options['timer'] = timer;
    }
    if (html != null) {
      options['html'] = html;
    }
    if (animation != null) {
      options['animation'] = animation;
    }
    if (inputType != null) {
      options['inputType'] = inputType;
    }
    if (inputPlaceholder != null) {
      options['inputPlaceholder'] = inputPlaceholder;
    }
    if (inputValue != null) {
      options['inputValue'] = inputValue;
    }
    if (showLoaderOnConfirm != null) {
      options['showLoaderOnConfirm'] = showLoaderOnConfirm;
    }

    js.context["swal"].callMethod(
        "setDefaults", [new js.JsObject.jsify(options)]);
  }

  static void close() {
    js.context["swal"].callMethod("close", []);
  }

  static void showInputError(String error) {
    js.context["swal"].callMethod("showInputError", [error]);
  }

  static void enableButtons() {
    js.context["swal"].callMethod("enableButtons", []);
  }

  static void disableButtons(String error) {
    js.context["swal"].callMethod("disableButtons", []);
  }
}
