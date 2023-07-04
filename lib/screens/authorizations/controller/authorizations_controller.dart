import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:get/get.dart';

class AuthorizationController extends GetxController{

  CountryCode? countryCode;
  final countryPicker = const FlCountryCodePicker();

 

  void flagPicker(CountryCode code){
   countryCode=code;
   update(); 
  }
}