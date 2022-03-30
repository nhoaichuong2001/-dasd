import 'package:app_thuc_pham/constant.dart';
import 'package:flutter/material.dart';

Widget email(controller) => TextFormField(
      style: const TextStyle(
        fontSize: 20,
        color: textColor,
      ),
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      onFieldSubmitted: (value) {},
      decoration: const InputDecoration(
        prefixIcon: Icon(
          Icons.email_outlined,
          color: textColor,
        ),
        floatingLabelStyle: TextStyle(
          fontSize: 22,
          color: textColor,
        ),
        focusColor: textColor,
        errorStyle: TextStyle(fontSize: 16),
        labelText: "Thư điện tử",
        labelStyle: TextStyle(
          fontSize: 22,
          color: textColor,
        ),
      ),
      validator: (value) {
        if (value.isEmpty ||
            !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(value)) {
          return 'Thư điện tử không hợp lệ!';
        }
        return null;
      },
    );

Widget password({controller,text, function}) => TextFormField(
      style: const TextStyle(
        fontSize: 22,
        color: textColor,
      ),
      controller: controller,
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock_open),
        suffixStyle: const TextStyle(
          color: textColor,
        ),
        suffixIcon: InkWell(
            onTap: function,
            child: Icon(
              Icons.visibility,
              color: Colors.grey.shade500,
            )),
        errorStyle: const TextStyle(fontSize: 16),
        labelStyle: const TextStyle(
          fontSize: 22,
          color: textColor,
        ),
        labelText: text,
      ),
      validator: (value) {
        if (value == null || value.length <= 8) {
          return 'Mật khẩu không được trống, và nhiều hơn 8 kí tự';
        }
        return null;
      },
    );

Widget input({controller, icon, text}) => TextFormField(
      style: const TextStyle(
        fontSize: 20,
        color: textColor,
      ),
      controller: controller,
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        prefixIcon: icon,
        suffixStyle: const TextStyle(
          color: textColor,
        ),
        floatingLabelStyle: const TextStyle(
          fontSize: 22,
          color: textColor,
        ),
        errorStyle: const TextStyle(fontSize: 16),
        labelStyle: const TextStyle(
          fontSize: 22,
          color: textColor,
        ),
        labelText: text,
      ),
      validator: (value) {
        if (value == null || value.length <= 8) {
          return 'Mật khẩu không được trống, và nhiều hơn 8 kí tự';
        }
        return null;
      },
    );

Widget button({String text, h, w, icon, radius}) => Container(
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.all(Radius.circular(radius))),
      height: h,
      width: w,
      child: Center(
        child: (text == null)
            ? icon
            : Text(
                text,
                style: const TextStyle(
                  fontSize: 20,
                  color: textColor,
                ),
              ),
      ),
    );
Widget textButton({String text, Function press}) => TextButton(
      onPressed: press,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          color: textColor,
        ),
      ),
    );
