import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/forgot_password_verify_email_screen.dart';
import 'package:task_manager/ui/screens/forgot_password_verify_otp_screen.dart';
import 'package:task_manager/ui/screens/main_bottom_nav_screen.dart';
import 'package:task_manager/ui/screens/reset_password_screen.dart';
import 'package:task_manager/ui/screens/sign_in_screen.dart';
import 'package:task_manager/ui/screens/sign_up_screen.dart';
import 'package:task_manager/ui/screens/splash_screen.dart';
import 'package:task_manager/ui/screens/utils/app_colors.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute: '/',

      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.themeColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)),
            fixedSize: const Size.fromWidth(double.maxFinite),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            foregroundColor: Colors.white,
            textStyle: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        colorSchemeSeed: AppColors.themeColor,
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),

        ),
      ),


      onGenerateRoute: (RouteSettings settings){
      late Widget widget;
      if (settings.name == SplashScreen.name) {
        widget = const SplashScreen();
        } else if (settings.name == SignInScreen.name) {
       widget = const SignInScreen();
      }else if (settings.name == SignInScreen.name){
        widget = const SignInScreen();
      }else if (settings.name == SignUpScreen.name){
        widget = const SignUpScreen();
      }else if (settings.name == ForgotPasswordVerifyEmailScreen.name){
        widget = const ForgotPasswordVerifyEmailScreen();
      }else if (settings.name == ForgotPasswordVerifyOtpScreen.name){
        widget = ForgotPasswordVerifyOtpScreen();
      }else if (settings.name == ResetPasswordScreen.name){
        widget = ResetPasswordScreen();
      }else if (settings.name == MainBottomNavScreen.name){
        widget = MainBottomNavScreen();
      }




      return MaterialPageRoute(builder:(_)=> widget);
       }
    );
  }
}
