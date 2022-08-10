import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CostumTextInput extends StatefulWidget {
  const CostumTextInput({
    Key? key,
    this.isPassword = false,
    this.isEmail = false,
    this.isPassowrdVerification = false,
  }) : super(key: key);
  final bool isPassword;
  final bool isEmail;
  final bool isPassowrdVerification;

  @override
  State<CostumTextInput> createState() => _CostumTextInputState();
}

class _CostumTextInputState extends State<CostumTextInput> {
  late bool isVisible = widget.isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xff161825),
      ),
      margin: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
      child: ListTile(
        title: TextFormField(
          obscureText:
              (widget.isPassword | widget.isPassowrdVerification) && isVisible,
          keyboardType: widget.isEmail
              ? TextInputType.emailAddress
              : widget.isPassword | widget.isPassowrdVerification
                  ? TextInputType.visiblePassword
                  : TextInputType.text,
          initialValue: widget.isEmail
              ? 'email adress'
              : widget.isPassword
                  ? 'password here'
                  : 'password confirmation',
          style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Montserrat',
              overflow: TextOverflow.visible),
        ),
        trailing: widget.isPassword
            ? GestureDetector(
                onTap: () => {
                  log('tapped'),
                  setState(() {
                    isVisible = !isVisible;
                  })
                },
                child: isVisible
                    ? const Card(
                        elevation: 10,
                        child: Padding(
                          padding: EdgeInsets.all(3),
                          child: Text(
                            'SHOW',
                            style: TextStyle(fontFamily: 'Montserrat'),
                          ),
                        ),
                      )
                    : const Card(
                        elevation: 10,
                        child: Padding(
                          padding: EdgeInsets.all(3),
                          child: Text(
                            'HIDE',
                            style: TextStyle(fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
              )
            : widget.isPassowrdVerification
                ? GestureDetector(
                    onTap: () => setState(() {
                      isVisible = !isVisible;
                    }),
                    child: Image.asset(
                      'images/eye-off.png',
                      fit: BoxFit.contain,
                    ),
                  )
                : const Icon(
                    Icons.done,
                    color: Colors.green,
                  ),
      ),
    );
  }
}
