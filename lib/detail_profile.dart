import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailProfile extends StatelessWidget {
  const DetailProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 65, 0, 58),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(37, 0, 37, 18),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/left_arrow.png',
                      ),
                    ),
                  ),
                  child: const SizedBox(
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(37, 0, 37, 19),
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 31, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/dice_result_two_1.png',
                            ),
                          ),
                        ),
                        child: const SizedBox(
                          width: 75,
                          height: 75,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 11, 0, 19),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 7.1, 5),
                            child: Text(
                              'Claudia Alves',
                              style: GoogleFonts.getFont(
                                'Josefin Sans',
                                fontWeight: FontWeight.w400,
                                fontSize: 25,
                                color: const Color(0xFF000000),
                              ),
                            ),
                          ),
                          Text(
                            'hello@reallygreatsite.com',
                            style: GoogleFonts.getFont(
                              'Josefin Sans',
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                              color: const Color(0xCC000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 22),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0x1A000000),
                ),
                child: const SizedBox(
                  width: 381,
                  height: 1,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(37, 0, 37, 19),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Information',
                  style: GoogleFonts.getFont(
                    'Josefin Sans',
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    color: const Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 178.6, 10),
              child: SizedBox(
                width: 118.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/editing.png',
                          ),
                        ),
                      ),
                      child: const SizedBox(
                        width: 20,
                        height: 20,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Text(
                        'Edit Profile',
                        style: GoogleFonts.getFont(
                          'Josefin Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: const Color(0xCC000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 186.2, 10),
              child: SizedBox(
                width: 110.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/user.png',
                          ),
                        ),
                      ),
                      child: const SizedBox(
                        width: 20,
                        height: 20,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 4, 0, 1),
                      child: Text(
                        'Username',
                        style: GoogleFonts.getFont(
                          'Josefin Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: const Color(0xCC000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 210.8, 10),
              child: SizedBox(
                width: 86.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/email.png',
                          ),
                        ),
                      ),
                      child: const SizedBox(
                        width: 20,
                        height: 20,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 4, 0, 1),
                      child: Text(
                        'E-mail',
                        style: GoogleFonts.getFont(
                          'Josefin Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: const Color(0xCC000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 191.6, 25),
              child: SizedBox(
                width: 105.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/lock.png',
                          ),
                        ),
                      ),
                      child: const SizedBox(
                        width: 20,
                        height: 20,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 3, 0, 2),
                      child: Text(
                        'Password',
                        style: GoogleFonts.getFont(
                          'Josefin Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: const Color(0xCC000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 24),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0x1A000000),
                ),
                child: const SizedBox(
                  width: 381,
                  height: 1,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(37, 0, 37, 17),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Preferences',
                  style: GoogleFonts.getFont(
                    'Josefin Sans',
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    color: const Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 174, 10),
              child: SizedBox(
                width: 123,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/bell.png',
                          ),
                        ),
                      ),
                      child: const SizedBox(
                        width: 20,
                        height: 20,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 4, 0, 1),
                      child: Text(
                        'Notification',
                        style: GoogleFonts.getFont(
                          'Josefin Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: const Color(0xCC000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 176.5, 10),
              child: SizedBox(
                width: 120.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/globalization.png',
                          ),
                        ),
                      ),
                      child: const SizedBox(
                        width: 20,
                        height: 20,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 1, 0, 4),
                      child: Text(
                        'Languange',
                        style: GoogleFonts.getFont(
                          'Josefin Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: const Color(0xCC000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 191.2, 10),
              child: SizedBox(
                width: 105.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/push_pin.png',
                          ),
                        ),
                      ),
                      child: const SizedBox(
                        width: 20,
                        height: 20,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 2, 0, 3),
                      child: Text(
                        'Shortcuts',
                        style: GoogleFonts.getFont(
                          'Josefin Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: const Color(0xCC000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 209, 20),
              child: SizedBox(
                width: 88,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/exposure.png',
                          ),
                        ),
                      ),
                      child: const SizedBox(
                        width: 20,
                        height: 20,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 3, 0, 2),
                      child: Text(
                        'Theme',
                        style: GoogleFonts.getFont(
                          'Josefin Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: const Color(0xCC000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 19),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0x1A000000),
                ),
                child: const SizedBox(
                  width: 381,
                  height: 1,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(37, 0, 37, 17),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Account',
                  style: GoogleFonts.getFont(
                    'Josefin Sans',
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    color: const Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 166, 10),
              child: SizedBox(
                width: 129,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/plus_positive_add_mathematical_symbol.png',
                          ),
                        ),
                      ),
                      child: const SizedBox(
                        width: 18,
                        height: 18,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 3, 0, 0),
                      child: Text(
                        'Add Account',
                        style: GoogleFonts.getFont(
                          'Josefin Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: const Color(0xCC000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 152.2, 10),
              child: SizedBox(
                width: 144.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/share.png',
                          ),
                        ),
                      ),
                      child: const SizedBox(
                        width: 20,
                        height: 20,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Text(
                        'Switch Account',
                        style: GoogleFonts.getFont(
                          'Josefin Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: const Color(0xCC000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 196.3, 0),
              child: SizedBox(
                width: 100.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/logout.png',
                          ),
                        ),
                      ),
                      child: const SizedBox(
                        width: 20,
                        height: 20,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 4, 0, 1),
                      child: Text(
                        'Log Out',
                        style: GoogleFonts.getFont(
                          'Josefin Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: const Color(0xCC000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}