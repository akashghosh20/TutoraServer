import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:webcheck2/pages/teacherspages/list_teacher_page.dart';

class AddTeachersPage extends StatefulWidget {
  AddTeachersPage({Key? key}) : super(key: key);

  @override
  _AddStudentPageState createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddTeachersPage> {
  final _formKey = GlobalKey<FormState>();

  var name = "";
  var username = "";
  var phone = "";
  var email = "";
  var gender = "";
  var age = "";
  var religion = "";
  var city = "";
  var university = "";
  var studysubject = "";
  var teachingcity = "";
  var teachingareas = "";
  var experience = "";
  var teachingsubject = "";
  var days = "";
  var askingsalary = "";
  var targetstring = "";
  var imageUrl = "";
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final genderController = TextEditingController();
  final ageController = TextEditingController();
  final religionController = TextEditingController();
  final universityController = TextEditingController();
  final studySubjectController = TextEditingController();
  final teachingCityController = TextEditingController();
  final teachingSubjectController = TextEditingController();
  final teachingAreasController = TextEditingController();
  final experienceController = TextEditingController();
  final subjectteachingController = TextEditingController();
  final teachingdaysController = TextEditingController();
  final askingsalaryController = TextEditingController();
  final targetStudentsController = TextEditingController();
  final imageUrlController = TextEditingController();
  final teachingDaysController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
    usernameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    genderController.dispose();
    ageController.dispose();
    religionController.dispose();
    universityController.dispose();
    studySubjectController.dispose();
    teachingCityController.dispose();
    teachingAreasController.dispose();
    experienceController.dispose();
    subjectteachingController.dispose();
    teachingdaysController.dispose();
    askingsalaryController.dispose();
    targetStudentsController.dispose();
    imageUrlController.dispose();
    teachingSubjectController.dispose();
    teachingDaysController.dispose();

    super.dispose();
  }

  clearText() {
    nameController.clear();
    usernameController.clear();
    phoneController.clear();
    emailController.clear();
    genderController.clear();
    ageController.clear();
    religionController.clear();
    universityController.clear();
    studySubjectController.clear();
    teachingCityController.clear();
    teachingAreasController.clear();
    experienceController.clear();
    subjectteachingController.clear();
    teachingdaysController.clear();
    askingsalaryController.clear();
    targetStudentsController.clear();
    imageUrlController.clear();
    teachingSubjectController.clear();
    teachingDaysController.clear();
  }

  // Adding Student
  CollectionReference teachers =
      FirebaseFirestore.instance.collection('teachers');

  Future<void> addUser() {
    return teachers
        .add({
          'email': email,
          'user name': username,
          'name': name,
          'gender': gender,
          'religion': religion,
          'phone number': phone,
          'age': age,
          'university': university,
          'teaching city': teachingcity,
          'teaching areas': teachingareas,
          'image url': imageUrl,
          'experience': experience,
          'study subject': studysubject,
          'asking salary': askingsalary,
          'days': days,
          'target student': targetstring,
          'teaching subject': teachingsubject,
        })
        .then((value) => print('User Added'))
        .catchError((error) => print('Failed to Add user: $error'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Teacher"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: ListView(
            children: [
              Container(
                // this container is the value box for taking inputs
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Email: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Your Emial';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                // this container is the value box for taking inputs
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'User Name: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: usernameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter User Name';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                // this container is the value box for taking inputs
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Name : ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Your Name';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                // this container is the value box for taking inputs
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Gender: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: genderController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter your gender';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                // this container is the value box for taking inputs
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Religion : ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: religionController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter your religion';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                // this container is the value box for taking inputs
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Phone: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: phoneController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Phone Number';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                // this container is the value box for taking inputs
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Age: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: ageController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter gender';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                // this container is the value box for taking inputs
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'University : ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: universityController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter your University';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Study Subject',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: studySubjectController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Your Study Subject';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Teaching Subjects ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: teachingSubjectController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Ener Image Url';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Teaching City: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: teachingCityController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Teaching City';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Teaching Areas: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: teachingAreasController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Teaching Areas';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Experience : ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: experienceController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Your Experience';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Target Students : ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: targetStudentsController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Target Students';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Teaching Days : ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: teachingDaysController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Teaching days';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Asking Salary : ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: askingsalaryController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Teaching days';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Image Url: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: imageUrlController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Asking Salary';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, otherwise false.
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            name = nameController.text;
                            username = usernameController.text;
                            phone = phoneController.text;
                            email = emailController.text;
                            gender = genderController.text;
                            age = ageController.text;
                            religion = religionController.text;
                            imageUrl = imageUrlController.text;
                            university = universityController.text;
                            studysubject = studySubjectController.text;
                            teachingcity = teachingCityController.text;
                            teachingareas = teachingAreasController.text;
                            experience = experienceController.text;
                            teachingsubject = teachingSubjectController.text;
                            days = teachingDaysController.text;
                            askingsalary = askingsalaryController.text;
                            targetstring = targetStudentsController.text;
                            addUser();
                            clearText();
                          });
                        }
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListTeacherPage()));
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => {clearText()},
                      child: Text(
                        'Reset',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
                    ),
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
