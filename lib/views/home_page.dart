import 'package:cleaning_service_app/utils/color_schema.dart';
import 'package:cleaning_service_app/utils/utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedType = "Тандалган";
  String selectedFrequency = "Тандалган эмес";

  void onChangePaketType(String type) {
    selectedType = type;
    setState(() {});
  }

  void changeFrequency(String frequency) {
    selectedFrequency = frequency;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepPurple400,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Керектүсүн белгилеңиз",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Кызмат Пакеттери",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    onChangePaketType("Тандалган");
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.40,
                        decoration: BoxDecoration(
                          color: deepPurple50,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/img1.png'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Үй жыйноо кызматы",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: deepPurple50,
                        ),
                        child: selectedType == "Тандалган"
                            ? Icon(
                                Icons.check_circle,
                                color: Colors.pink[400],
                                size: 30,
                              )
                            : Container(),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    onChangePaketType("Тандалган эмес");
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.43,
                        decoration: BoxDecoration(
                          color: deepPurple50, //Color(0xffdfdeff),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/img2.png'),
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Айнек тазалоо",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: deepPurple50,
                        ),
                        child: selectedType == "Тандалган эмес"
                            ? Icon(
                                Icons.check_circle,
                                color: pink400,
                                size: 30,
                              )
                            : Container(),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Кызмат көргөзү",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    changeFrequency("weekly");
                  },
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: selectedFrequency == "weekly"
                        ? BoxDecoration(
                            color: pink400,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          )
                        : BoxDecoration(
                            border: Border.all(
                              color: Colors.black.withOpacity(0.3),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                    child: Center(
                      child: Text(
                        "Батир",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: selectedFrequency == "weekly"
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    changeFrequency("biweekly");
                  },
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: selectedFrequency == "biweekly"
                        ? BoxDecoration(
                            color: pink400,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          )
                        : BoxDecoration(
                            border: Border.all(
                              color: Colors.black.withOpacity(0.3),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                    child: Center(
                      child: Text(
                        "Жер үй",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: selectedFrequency == "biweekly"
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    changeFrequency("monthly");
                  },
                  child: Container(
                    height: 50,
                    width: 110,
                    decoration: selectedFrequency == "monthly"
                        ? BoxDecoration(
                            color: pink400,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          )
                        : BoxDecoration(
                            border: Border.all(
                              color: Colors.black.withOpacity(0.3),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                    child: Center(
                      child: Text(
                        "Соода түйүн",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: selectedFrequency == "monthly"
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Кызмат түрү',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                extraWidget("es", "Муздадкыч", true),
                extraWidget("belanja", "Күнөскана", false),
                extraWidget("tirai", "Айнек жуу", false),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                extraWidget("teras", "Терасса", true),
                extraWidget("belanja", "Күнөскана", true),
                extraWidget("tirai", "Айнек жуу", true),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                extraWidget("teras", "Терасса", false),
                extraWidget("belanja", "Күнөскана", true),
                extraWidget("tirai", "Айнек жуу", false),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                extraWidget("teras", "Терасса", false),
                extraWidget("belanja", "Күнөскана", true),
                extraWidget("tirai", "Айнек жуу", true),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
