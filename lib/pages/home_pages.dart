import 'package:flutter/material.dart';
import 'package:learning/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Profile Picture',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Image(
                    image: AssetImage('assets/images/primary.png'),
                    height: 140,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text('Anne Margaritha',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text('UX Designer',
                      style: TextStyle(fontSize: 16, color: textColor)),
                  const SizedBox(
                    height: 70,
                  ),
                  const Wrap(
                    spacing: 38,
                    runSpacing: 40,
                    children: [
                      Image(
                        image: AssetImage('assets/images/item-4.png'),
                        height: 80,
                      ),
                      Image(
                        image: AssetImage('assets/images/item-2.png'),
                        height: 80,
                      ),
                      Image(
                        image: AssetImage('assets/images/item-3.png'),
                        height: 80,
                      ),
                      Image(
                        image: AssetImage('assets/images/item-1.png'),
                        height: 80,
                      ),
                      Image(
                        image: AssetImage('assets/images/item-5.png'),
                        height: 80,
                      ),
                      Image(
                        image: AssetImage('assets/images/item-2.png'),
                        height: 80,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  SizedBox(
                    width: 224,
                    height: 55,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: textColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: ((context) {
                              return Container(
                                height: 290,
                                color: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 50, horizontal: 60),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      const Text('Update Photo',
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w500,
                                              color: textColor)),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      const Text(
                                          'You are only able to change the picture profile once',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: textColorSecondary)),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: primaryColor,
                                          foregroundColor: secondaryColor,
                                          minimumSize: const Size(224, 55),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                        ),
                                        child: const Text(
                                          'Continue',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        onPressed: () => Navigator.pop(context),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }));
                      },
                      child: const Text(
                        'Update Profile',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
