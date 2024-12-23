import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/forgot_password_verify_email_screen.dart';
import 'package:task_manager/ui/screens/utils/app_colors.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const String name = '/sign-up';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordlTEController = TextEditingController();
  final TextEditingController _fristnameTEController = TextEditingController();
  final TextEditingController _lastnameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 100),
                  Text('Join With Us', style: textTheme.titleLarge),
                  const SizedBox(height: 24),
                  TextFormField(
                    controller: _emailTEController,
                    obscureText: true,
                    decoration: const InputDecoration(hintText: 'Email'),
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                    controller: _passwordlTEController,
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Password'),
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                    controller: _fristnameTEController,
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'First name'),
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                    controller: _lastnameTEController,
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Last name'),
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _mobileTEController,
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Mobile naumber'),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.arrow_circle_right_outlined),
                  ),
                  const SizedBox(height: 48),
                  _buildSignUpSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpSection() {
    return RichText(
      text: TextSpan(
        text: "Already have an account? ",
        style: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.w600,
        ),
        children: [
          TextSpan(
              text: 'Sign in',
              style: TextStyle(
                color: AppColors.themeColor,
              ),
              recognizer: TapGestureRecognizer()..onTap = () {
                Navigator.pop(context,ForgotPasswordVerifyEmailScreen.name);
              }),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    _mobileTEController.dispose();
    _fristnameTEController.dispose();
    _lastnameTEController.dispose();
    _passwordlTEController.dispose();
    super.dispose();
  }
}
