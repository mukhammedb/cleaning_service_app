import 'package:cleaning_service_app/utils/color_schema.dart';
import 'package:flutter/material.dart';

Column extraWidget(String img, String name, bool isSelected) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: deepPurple400,
            ),
            child: Container(
              margin: const EdgeInsets.all(17),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/$img.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: isSelected == true
                ? Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.check_circle,
                        color: pink400,
                      ),
                    ),
                  )
                : Container(),
          ),
        ],
      ),
      const SizedBox(
        height: 5,
      ),
      Text(
        name,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      )
    ],
  );
}
