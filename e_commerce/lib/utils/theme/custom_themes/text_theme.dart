import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class TTextTheme { 
  static TextTheme lightTextTheme = TextTheme (
    headlinelarge: TextStyle().copywith(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
    headlinemedium: TextStyle().copywith(fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.black87),
    headlineSmall: TextStyle().copywith(fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.black87),
    
    bodyLarge: TextStyle().copywith(fontSize: 16.0, color: Colors.black54),
    bodyMedium: TextStyle().copywith(fontSize: 14.0, color: Colors.black45),
    bodySmall: TextStyle().copywith(fontSize: 12.0, color: Colors.black38),

    titleLarge: TextStyle().copywith(fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.black87),
    titleMedium: TextStyle().copywith(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.black54),
    titleSmall: TextStyle().copywith(fontSize: 14.0, fontWeight: FontWeight.w300, color: Colors.black45),
    
    labellarge: textstyle().copywith(fontsize: 12.0, fontWeight: fontWeight.nornal, color: colors.black)
    labelmedium: textstyle().copywith(fontsize: 12.0, fontWeight: fontWeight.nornal, color: colors.black.withOpacity(0.5))


    bodySmall: TextStyle(fontSize: 12.0, color: Colors.grey),
  ); 

  /// Customizable Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headlinelarge: TextStyle().copywith(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
    headlinemedium: TextStyle().copywith(fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.white),
    headlineSmall: TextStyle().copywith(fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.white),
    
    bodyLarge: TextStyle().copywith(fontSize: 16.0, color: Colors.white),
    bodyMedium: TextStyle().copywith(fontSize: 14.0, color: Colors.white),
    bodySmall: TextStyle().copywith(fontSize: 12.0, color: Colors.white),

    titleLarge: TextStyle().copywith(fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.white),
    titleMedium: TextStyle().copywith(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.white),
    titleSmall: TextStyle().copywith(fontSize: 14.0, fontWeight: FontWeight.w300, color: Colors.white),
    
    labellarge: textstyle().copywith(fontsize: 12.0, fontWeight: fontWeight.nornal, color: colors.white)
    labelmedium: textstyle().copywith(fontsize: 12.0, fontWeight: fontWeight.nornal, color: colors.white.withOpacity(0.5))


    bodySmall: TextStyle(fontSize: 12.0, color: Colors.grey),
  ); 
  
   
}