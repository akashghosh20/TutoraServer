import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UpdateTeacherPage extends StatefulWidget {
  final String id;
  const UpdateTeacherPage({Key? key, required this.id}) : super(key: key);

  @override
  _UpdateTeacherPageState createState() => _UpdateTeacherPageState();
}

class _UpdateTeacherPageState extends State<UpdateTeacherPage> {
  final _formKey = GlobalKey<FormState>();

  // Updaing Student
  CollectionReference teacherlist = // collection name is in the veriable
      FirebaseFirestore.instance.collection('teachers');

  Future<void> updateUser(
      id,
      name,
      username,
      phone,
      email,
      gender,
      age,
      religion,
      university,
      studysubject,
      teachingcity,
      teachingareas,
      experience,
      teachingsubject,
      teachingdays,
      askingsalary,
      targetstring,
      imageUrl) {
    return teacherlist
        .doc(id)
        .update({
          // first word in comma refers to the fuildname and the next one is veriable by which we will change
          'name': name,
          'user name': username,
          'phone number': phone,
          'email': email,
          'gender': gender,
          'age': age,
          'religion': religion,
          'university': university,
          'study subject': studysubject,
          'teaching city': teachingcity,
          'teaching areas': teachingareas,
          'experience': experience,
          'teaching subject': teachingsubject,
          'days': teachingdays,
          'asking salary': askingsalary,
          'target student': targetstring,
          'image url': imageUrl,
        })
        // ignore: avoid_print
        .then((value) => print("User Updated"))
        // ignore: avoid_print
        .catchError((error) => print("Failed to update user: $error"));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Update Student"),
          backgroundColor: Colors.redAccent,
        ),
        body: Form(
            key: _formKey,
            // Getting Specific Data by ID
            child: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
              future: FirebaseFirestore.instance
                  .collection('teachers')
                  .doc(widget.id)
                  .get(),
              builder: (_, snapshot) {
                if (snapshot.hasError) {
                  // ignore: avoid_print
                  print('Something Went Wrong');
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                var data = snapshot.data!.data();

                var name = data!['name'];
                var username = data['user name'];
                var phone = data['phone number'];
                var email = data['email'];
                var gender = data['gender'];
                var age = data['age'];
                var religion = data['religion'];
                var university = data['university'];
                var studysubject = data['study subject'];
                var teachingcity = data['teaching city'];
                var teachingareas = data['teaching areas'];
                var experience = data['experience'];
                var teachingsubject = data['teaching subject'];
                var teachingdays = data['days'];
                var askingsalary = data['asking salary'];
                var targetstring = data['target student'];
                var imageUrl = data['image url'];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: ListView(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextFormField(
                          initialValue: name,
                          autofocus: false,
                          onChanged: (value) => name = value,
                          decoration: const InputDecoration(
                            labelText: 'name: ',
                            labelStyle: TextStyle(fontSize: 20.0),
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter name';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextFormField(
                          initialValue: imageUrl,
                          autofocus: false,
                          onChanged: (value) => name = value,
                          decoration: const InputDecoration(
                            labelText: 'image url: ',
                            labelStyle: TextStyle(fontSize: 20.0),
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Image Url';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextFormField(
                          initialValue: username,
                          autofocus: false,
                          onChanged: (value) => username = value,
                          decoration: const InputDecoration(
                            labelText: 'username: ',
                            labelStyle: TextStyle(fontSize: 20.0),
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter username';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextFormField(
                          initialValue: phone,
                          autofocus: false,
                          onChanged: (value) => phone = value,
                          decoration: const InputDecoration(
                            labelText: 'phone: ',
                            labelStyle: TextStyle(fontSize: 20.0),
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter phone';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextFormField(
                          initialValue: email,
                          autofocus: false,
                          onChanged: (value) => email = value,
                          decoration: const InputDecoration(
                            labelText: 'email: ',
                            labelStyle: TextStyle(fontSize: 20.0),
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter email';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextFormField(
                          initialValue: gender,
                          autofocus: false,
                          onChanged: (value) => gender = value,
                          decoration: const InputDecoration(
                            labelText: 'gender: ',
                            labelStyle: TextStyle(fontSize: 20.0),
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter gender';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextFormField(
                          initialValue: age,
                          autofocus: false,
                          onChanged: (value) => age = value,
                          decoration: const InputDecoration(
                            labelText: 'age: ',
                            labelStyle: TextStyle(fontSize: 20.0),
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter age';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextFormField(
                          initialValue: religion,
                          autofocus: false,
                          onChanged: (value) => religion = value,
                          decoration: const InputDecoration(
                            labelText: 'religion: ',
                            labelStyle: TextStyle(fontSize: 20.0),
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter religion';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextFormField(
                          initialValue: university,
                          autofocus: false,
                          onChanged: (value) => university = value,
                          decoration: const InputDecoration(
                            labelText: 'university: ',
                            labelStyle: TextStyle(fontSize: 20.0),
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter university';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextFormField(
                          initialValue: studysubject,
                          autofocus: false,
                          onChanged: (value) => studysubject = value,
                          decoration: const InputDecoration(
                            labelText: 'studysubject: ',
                            labelStyle: TextStyle(fontSize: 20.0),
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter studysubject';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextFormField(
                          initialValue: teachingcity,
                          autofocus: false,
                          onChanged: (value) => teachingcity = value,
                          decoration: const InputDecoration(
                            labelText: 'teachingcity: ',
                            labelStyle: TextStyle(fontSize: 20.0),
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter teachingcity';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextFormField(
                          initialValue: teachingareas,
                          autofocus: false,
                          onChanged: (value) => teachingareas = value,
                          decoration: const InputDecoration(
                            labelText: 'teachingareas: ',
                            labelStyle: TextStyle(fontSize: 20.0),
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter teachingareas';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextFormField(
                          initialValue: experience,
                          autofocus: false,
                          onChanged: (value) => experience = value,
                          decoration: const InputDecoration(
                            labelText: 'experience: ',
                            labelStyle: TextStyle(fontSize: 20.0),
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter experience';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextFormField(
                          initialValue: teachingsubject,
                          autofocus: false,
                          onChanged: (value) => teachingsubject = value,
                          decoration: const InputDecoration(
                            labelText: 'subjectteaching: ',
                            labelStyle: TextStyle(fontSize: 20.0),
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter subjectteaching';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextFormField(
                          initialValue: teachingdays,
                          autofocus: false,
                          onChanged: (value) => teachingdays = value,
                          decoration: const InputDecoration(
                            labelText: 'teachingdays: ',
                            labelStyle: TextStyle(fontSize: 20.0),
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter teachingdays';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextFormField(
                          initialValue: askingsalary,
                          autofocus: false,
                          onChanged: (value) => askingsalary = value,
                          decoration: const InputDecoration(
                            labelText: 'askingsalary: ',
                            labelStyle: TextStyle(fontSize: 20.0),
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter askingsalary';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextFormField(
                          initialValue: targetstring,
                          autofocus: false,
                          onChanged: (value) => targetstring = value,
                          decoration: const InputDecoration(
                            labelText: 'targetstring: ',
                            labelStyle: TextStyle(fontSize: 20.0),
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(
                                color: Colors.redAccent, fontSize: 15),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter targetstring';
                            }
                            return null;
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Validate returns true if the form is valid, otherwise false.
                              if (_formKey.currentState!.validate()) {
                                updateUser(
                                  widget.id,
                                  name,
                                  username,
                                  phone,
                                  email,
                                  gender,
                                  age,
                                  religion,
                                  imageUrl,
                                  university,
                                  studysubject,
                                  teachingcity,
                                  teachingareas,
                                  experience,
                                  teachingsubject,
                                  teachingdays,
                                  askingsalary,
                                  targetstring,
                                );
                                Navigator.pop(context);
                              }
                            },
                            child: const Text(
                              'Update',
                              style: TextStyle(fontSize: 18.0),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.redAccent),
                          ),
                          ElevatedButton(
                            onPressed: () => {},
                            child: const Text(
                              'Reset',
                              style: TextStyle(fontSize: 18.0),
                            ),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.red),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            )),
      ),
    );
  }
}
