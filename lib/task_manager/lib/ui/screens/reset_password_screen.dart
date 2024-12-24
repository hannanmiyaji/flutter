import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/sign_in_screen.dart';
import 'package:task_manager/ui/screens/utils/app_colors.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  static const String name = '/forgot-password/reset-password';

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController _resetTEController = TextEditingController();
  final TextEditingController _confirmTEController = TextEditingController();
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
                  Text('Set Password', style: textTheme.titleLarge),
                  const SizedBox(height: 4),
                  Text(
                    'Minimum lenth password 8 charactter with Latter and number combination',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 24),
                  TextFormField(
                    controller: _resetTEController,
                    decoration: InputDecoration(
                      hintText: 'New Password',
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: _confirmTEController,
                    decoration: InputDecoration(
                      hintText: 'Confirm New Password',
                    ),
                  ),
                  SizedBox(height: 16),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Confirm'),
                  ),
                  const SizedBox(height: 48),
                  _buildSignInSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignInSection() {
    return RichText(
      text: TextSpan(
        text: "Have an account? ",
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
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, SignInScreen.name, (value) => false);
                }),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _resetTEController.dispose();
    _confirmTEController.dispose();
    super.dispose();
  }
}
