import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:donation/routing/routing_page.dart' as route;
import 'package:csc_picker/csc_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:http/http.dart' as http;


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _form = GlobalKey<FormState>();
  var size, width, height;
  String _selectedGender = 'male';
  String dropdownValue = 'Donor';
  String countryValue = "";
  String stateValue = "";
  String cityValue = "";
  String address = "";

  String name="";
  String email="";
  String phone="";
  String password="";
  String rpassword="";

  void writeData() async{
    _form.currentState?.save();

    var url="https://donationproject-8709c-default-rtdb.firebaseio.com/"+"donationproject.json";

    try{
      final response = await http.post(
        Uri.parse(url),
        body:json.encode({
          "name":name,
          "email":email,
          "phone":phone,
          "password":password,
          "rpassword":rpassword,
        }),
      );
    }
    catch(error){
      throw error;
    }
}

  @override
  bool _isObscure = true;

  Widget build(BuildContext context) {
    GlobalKey<CSCPickerState> _cscPickerKey = GlobalKey();
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Form(
      key: _form,
      child: Scaffold(
        body: Center(
          child: ListView(
            children: [
              SizedBox(height: 10),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    child: Text(
                      "Create new user",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Select user type :',
                                style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.w400),
                            ),
                            SizedBox(width: 99),
                            DropdownButton<String>(
                              value: dropdownValue,
                              items: <String>['Donor', 'NGO', 'Volunteer']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                );
                              }).toList(),
                              // Step 5.
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          SizedBox(height: 20),
          Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              CSCPicker(

                showStates: true,
                showCities: true,
                flagState: CountryFlag.ENABLE,

                dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    border:
                    Border.all(color: Colors.grey.shade300, width: 1)),

                disabledDropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.grey.shade300,
                    border:
                    Border.all(color: Colors.grey.shade300, width: 1)),

                countrySearchPlaceholder: "Country",
                stateSearchPlaceholder: "State",
                citySearchPlaceholder: "City",


                countryDropdownLabel: "*Country",
                stateDropdownLabel: "*State",
                cityDropdownLabel: "*City",

                defaultCountry: DefaultCountry.India,



                selectedItemStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),

                dropdownHeadingStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),


                dropdownItemStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),

                dropdownDialogRadius: 10.0,

                searchBarRadius: 10.0,


                onCountryChanged: (value) {
                  setState(() {
                    countryValue = value;
                  });
                },

                onStateChanged: (value) {
                  setState(() {
                    stateValue = value!;
                  });
                },

                onCityChanged: (value) {
                  setState(() {
                    cityValue = value!;
                  });
                },
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      address = "$cityValue, $stateValue, $countryValue";
                    });
                  },
                  child: Text("Print Data")),
              Text(address),


            ],
          ),),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Name",
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                          ),
                          label: Text(
                            "Name",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontSize: 20),
                          ),
                        ),
                        onSaved: (value){
                          name=value!;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter name';
                          }
                          if (!RegExp(r"^[A-Za-z]+$").hasMatch(value)) {
                            return 'Please input alphabet characters only';
                          }
                          return null;
                        },
                      )),
                  Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Email",
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontSize: 15,
                              ),
                              label: Text(
                                "Email",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontSize: 20),
                              ),
                            ),
                            onSaved: (value){
                              email=value!;
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'please enter email';
                              }
                              if (!RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$")
                                  .hasMatch(value)) {
                                return 'Email is not valid';
                              }
                            },
                          )),
                      Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),

                             child: IntlPhoneField(
                                decoration: InputDecoration(
                                  labelText: 'Phone Number',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(),
                                  ),
                                ),
                               onSaved: (value){
                                 phone=value! as String;
                               },
                                onChanged: (phone) {
                                  print(phone.completeNumber);
                                },
                                onCountryChanged: (country) {
                                  print('Country changed to: ' + country.name);
                                },

                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                            child: TextFormField(
                              obscureText: _isObscure,
                              decoration: InputDecoration(
                                focusedBorder:OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.black, width: 2.0),
                                ),
                                label:Text("New password",style: TextStyle(
                                    color: Colors.black,
                                  fontSize: 20,
                                ),
                                ),
                                border: OutlineInputBorder(),
                                hintText: "Enter new password",
                                hintStyle: TextStyle(fontSize: 15),
                                suffix: InkWell(
                                  onTap: _togglePasswordView,
                                  child: Icon(
                                    _isObscure
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                ),
                              ),
                              onSaved: (value){
                                password=value!;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                            child: TextFormField(
                              obscureText: _isObscure,
                              decoration: InputDecoration(
                                focusedBorder:OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.black, width: 2.0),
                                ),
                                label:Text("Confirm password",style: TextStyle(
                                    color: Colors.black,
                                  fontSize: 20,
                                ),
                                ),
                                border: OutlineInputBorder(),
                                hintText: "Re-enter password",
                                hintStyle: TextStyle(fontSize: 15),
                                suffix: InkWell(
                                  onTap: _togglePasswordView,
                                  child: Icon(
                                    _isObscure
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                ),
                              ),
                              onSaved: (value){
                                rpassword=value!;
                              },
                            ),
                          ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 7),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Select gender :',
                                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
                                  ),
                                  ListTile(
                                    leading: Radio<String>(
                                      activeColor: Colors.purple,
                                      value: 'male',
                                      groupValue: _selectedGender,
                                      onChanged: (value) {
                                        setState(() {
                                          _selectedGender = value!;
                                        });
                                      },
                                    ),
                                    title: Text('Male'),
                                  ),
                                  ListTile(
                                    leading: Radio<String>(
                                      activeColor: Colors.purple,
                                      value: 'female',
                                      groupValue: _selectedGender,
                                      onChanged: (value) {
                                        setState(() {
                                          _selectedGender = value!;
                                        });
                                      },
                                    ),
                                    title: Text('Female'),
                                  ),
                                  ListTile(
                                    leading: Radio<String>(
                                      activeColor: Colors.purple,
                                      value: 'Other',
                                      groupValue: _selectedGender,
                                      onChanged: (value) {
                                        setState(() {
                                          _selectedGender = value!;
                                        });
                                      },
                                    ),
                                    title: Text('Other'),
                                  ),
                                ],
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 7),
                            child: Divider(color: Colors.grey),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 7),
                            child: Text('We have sent an OTP on your registered mobile no. and email id. enter OTP to proceed further'
                            ),
                          ),


                          SizedBox(height: 10),
                          Center(
                            child: SizedBox(
                              width: 350,
                              height: 65,
                              child: ElevatedButton(
                                child: const Text(
                                  'Register',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1.25,
                                  ),
                                ),
                                onPressed: () {
                                  if (_form.currentState!.validate()) {
                                    Navigator.pushNamed(
                                        context, route.confirmRegister);
                                  }
                                  ;
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _togglePasswordView() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }
}
