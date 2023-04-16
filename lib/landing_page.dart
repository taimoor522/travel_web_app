import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/widgets.dart';

import 'constants.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.contain,
            alignment: Alignment.topRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/logo.png'),
                    const Spacer(),
                    ...navbarItems.map((navItem) => NavItemWidget(navItem: navItem)).toList(),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(width: 1.0, color: Colors.black),
                        foregroundColor: Colors.black,
                      ),
                      child: Text(
                        'Sign up',
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Best Destinations Around the World'.toUpperCase(),
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.orange.shade700,
                            ),
                          ),
                          Text(
                            'Travel, enjoy and live a new and full life',
                            style: GoogleFonts.volkhov(
                              fontWeight: FontWeight.w700,
                              fontSize: 60,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Built Wicket longer admire do barton vanity itself do in it. Preferred to sportsmen it engrossed listening. Park gate sell they west hard for the.',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Find out more',
                                ),
                              ),
                              const SizedBox(width: 20),
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red.shade400,
                                    ),
                                    child: const Icon(
                                      Icons.play_arrow_rounded,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  const Text(
                                    'Play Demo',
                                    style: TextStyle(),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Image.asset(
                        'assets/girl.png',
                        height: 700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
