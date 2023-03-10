import 'package:flutter/material.dart';
import 'package:circlight/constants.dart';
import 'package:circlight/responsive.dart';
import '../../components/background.dart';
import 'components/RequestParent.dart';
import 'components/sign_up_top_image.dart';
import 'components/signup_form.dart';
import 'components/socal_sign_up.dart';

class RequestForm extends StatelessWidget {
  const RequestForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: const MobileSignupScreen(),
          desktop: Row(
            children: [
              const Expanded(
                child: SignUpScreenTopImage(),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 450,
                      child: ParentReq(),
                    ),
                    SizedBox(height: defaultPadding / 2),
                    // SocalSignUp()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MobileSignupScreen extends StatelessWidget {
  const MobileSignupScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const SignUpScreenTopImage(),
        Row(
          children: const [
            Spacer(),
            Expanded(
              flex: 8,
              child: ParentReq(),
            ),
            Spacer(),
          ],
        ),
        // const SocalSignUp()
      ],
    );
  }
}
