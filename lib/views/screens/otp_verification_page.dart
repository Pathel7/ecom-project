import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project/views/screens/page_switcher.dart';
import '../../constant/app_color.dart';

class OTPVerificationPage extends StatefulWidget {
  const OTPVerificationPage({super.key});

  @override
  State<OTPVerificationPage> createState() => _OTPVerificationPageState();
}

class _OTPVerificationPageState extends State<OTPVerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Verification',
            style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w600)),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: SvgPicture.asset('assets/icons/Arrow-left.svg'),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 8),
            child: const Text(
              'Email verification',
              style: TextStyle(
                color: AppColor.secondary,
                fontWeight: FontWeight.w700,
                fontFamily: 'poppins',
                fontSize: 20,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 32),
            child: Row(
              children: [
                Text(
                  'code OTP envoyé à votre email',
                  style: TextStyle(
                      color: AppColor.secondary.withOpacity(0.7), fontSize: 14),
                ),
                const SizedBox(width: 8),
                const Text(
                  'email@email.com',
                  style: TextStyle(
                      color: AppColor.primary,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          // PinCodeTextField(
          //   appContext: (context),
          //   length: 4,
          //   onChanged: (value) {},
          //   obscureText: false,
          // pinTheme: PinTheme(
          //   shape: PinCodeFieldShape.box,
          //   borderWidth: 1.5,
          //   borderRadius: BorderRadius.circular(8),
          //   fieldHeight: 70,
          //   fieldWidth: 70,
          //   activeColor: AppColor.primary,
          //   inactiveColor: AppColor.border,
          //   inactiveFillColor: AppColor.primarySoft,
          // ),
          //),
          Container(
            margin: const EdgeInsets.only(top: 32, bottom: 16),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PageSwitcher()));
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
                backgroundColor: AppColor.primary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                elevation: 0,
                shadowColor: Colors.transparent,
              ),
              child: const Text(
                'Verifier',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    fontFamily: 'poppins'),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: AppColor.primary,
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              backgroundColor: AppColor.primarySoft,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              elevation: 0,
              shadowColor: Colors.transparent,
            ),
            child: const Text(
              'Renvoyer le code OTP',
              style: TextStyle(
                color: AppColor.secondary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
