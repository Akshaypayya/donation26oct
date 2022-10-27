import 'package:donation/screens/LoginScreen.dart';
import 'package:donation/screens/OtpPage.dart';
import 'package:donation/screens/achievements.dart';
import 'package:donation/screens/appSettings.dart';
import 'package:donation/screens/checkMail.dart';
import 'package:donation/screens/confirmPassword.dart';
import 'package:donation/screens/confirmRegister.dart';
import 'package:donation/screens/donationScreen.dart';
import 'package:donation/screens/editProfile.dart';
import 'package:donation/screens/foodScreen.dart';
import 'package:donation/screens/forgotPassword.dart';
import 'package:donation/screens/homePage.dart';
import 'package:donation/screens/moneyScreen.dart';
import 'package:donation/screens/newPassword.dart';
import 'package:donation/screens/profilePage.dart';
import 'package:donation/screens/registerScreen.dart';
import 'package:flutter/material.dart';

const String homePage = 'home';
const String loginScreen = 'login';
const String registerScreen = 'register';
const String editProfile = 'editProf';
const String donationScreen='donation';
const String foodScreen='food';
const String moneyScreen='money';
const String forgotPassword='password';
const String confirmRegister='confirm';
const String profilePage='profile';
const String appSettings='settings';
const String achievements='achieve';
const String checkMail='mail';
const String newPassword='newpassword';
const String splashScreen='splash';
const String otpPage='otp';
const String confirmPassword='okPassword';


void home() {}
void login() {}
void register() {}
void editProf() {}
void donation() {}
void food() {}
void money() {}
void password() {}
void confirm() {}
void profile() {}
void settings() {}
void achieve() {}
void mail() {}
void newpassword() {}
void splash() {}
void otp() {}
void okPassword() {}


Route<dynamic> controller(RouteSettings settings){
  switch(settings.name)
  {
    case loginScreen:
      {
        return MaterialPageRoute(builder: (context)=>LoginScreen());
      }
    case splashScreen:
      {
        return MaterialPageRoute(builder: (context)=>LoginScreen());
      }
    case homePage:{
      return MaterialPageRoute(builder: (context) => HomePage());
    }
    case registerScreen:{
      return MaterialPageRoute(builder: (context) => RegisterScreen());
    }
    case forgotPassword:{
     return MaterialPageRoute(builder: (context) => ForgotPassword());
    }
    case checkMail:{
      return MaterialPageRoute(builder: (context) => CheckMail());
    }
    case otpPage:{
      return MaterialPageRoute(builder: (context) => OtpPage());
    }
    case newPassword:{
      return MaterialPageRoute(builder: (context) => NewPassword());
    }
    case donationScreen:{
      return MaterialPageRoute(builder: (context) => DonationScreen());
    }
    case foodScreen:{
      return MaterialPageRoute(builder: (context) => FoodScreen());
    }
    case moneyScreen:{
      return MaterialPageRoute(builder: (context) => Moneyscreen());
    }
    case confirmRegister:{
      return MaterialPageRoute(builder: (context) => ConfirmRegister());
    }
    case profilePage:{
      return MaterialPageRoute(builder: (context) => ProfilePage());
    }
    case appSettings:{
      return MaterialPageRoute(builder: (context) => AppSettings());
    }
    case achievements:{
      return MaterialPageRoute(builder: (context) => Achievements());
    }
    case editProfile:{
      return MaterialPageRoute(builder: (context) => EditProfile());
    }
    case confirmPassword:{
      return MaterialPageRoute(builder: (context) => ConfirmPassword());
    }


    default:
      throw ('it is error');
  }
}