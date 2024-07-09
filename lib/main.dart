import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Donor Form'),
          backgroundColor: Colors.red,
        ),
        body: DonorForm(),
        backgroundColor: Colors.red, // Red background color
      ),
    );
  }
}

class DonorForm extends StatefulWidget {
  @override
  _DonorFormState createState() => _DonorFormState();
}

class _DonorFormState extends State<DonorForm> {
  final _formKey = GlobalKey<FormState>();

  String? _gender;
  String? _bloodGroup;
  String? _donatedPlatelets;
  String? _medicalCondition;
  String? _drinkingSmoking;
  String? _donateCloseBy;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Email ID',
                    filled: true,
                    fillColor: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Name of the donor',
                    filled: true,
                    fillColor: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the name of the donor';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'USN', filled: true, fillColor: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter USN';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Donor Age',
                    filled: true,
                    fillColor: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the donor age';
                  }
                  return null;
                },
              ),
              Text('Donor Gender'),
              RadioListTile(
                title: const Text('Male'),
                value: 'Male',
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value as String?;
                  });
                },
              ),
              RadioListTile(
                title: const Text('Female'),
                value: 'Female',
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value as String?;
                  });
                },
              ),
              RadioListTile(
                title: const Text('Non binary'),
                value: 'Non binary',
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value as String?;
                  });
                },
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                    labelText: 'Donor Blood group',
                    filled: true,
                    fillColor: Colors.white),
                items: [
                  'A RhD positive (A+)',
                  'A RhD negative (A-)',
                  'B RhD positive (B+)',
                  'B RhD negative (B-)',
                  'O RhD positive (O+)',
                  'O RhD negative (O-)',
                  'AB RhD positive (AB+)',
                  'AB RhD negative (AB-)'
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _bloodGroup = newValue;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Donor mobile number',
                    filled: true,
                    fillColor: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter donor mobile number';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Donor Additional mobile number',
                    filled: true,
                    fillColor: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter donor additional mobile number';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Address Pin code',
                    filled: true,
                    fillColor: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter address pin code';
                  }
                  return null;
                },
              ),
              Text('Have you donated platelets?'),
              RadioListTile(
                title: const Text('Yes'),
                value: 'Yes',
                groupValue: _donatedPlatelets,
                onChanged: (value) {
                  setState(() {
                    _donatedPlatelets = value as String?;
                  });
                },
              ),
              RadioListTile(
                title: const Text('No'),
                value: 'No',
                groupValue: _donatedPlatelets,
                onChanged: (value) {
                  setState(() {
                    _donatedPlatelets = value as String?;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Number of donations',
                    filled: true,
                    fillColor: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter number of donations';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Last date of donation',
                    filled: true,
                    fillColor: Colors.white),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the last date of donation';
                  }
                  return null;
                },
                keyboardType: TextInputType.datetime,
              ),
              Text('Are you under any medical condition?'),
              RadioListTile(
                title: const Text('Yes'),
                value: 'Yes',
                groupValue: _medicalCondition,
                onChanged: (value) {
                  setState(() {
                    _medicalCondition = value as String?;
                  });
                },
              ),
              RadioListTile(
                title: const Text('No'),
                value: 'No',
                groupValue: _medicalCondition,
                onChanged: (value) {
                  setState(() {
                    _medicalCondition = value as String?;
                  });
                },
              ),
              Text('Drinking and smoking?'),
              RadioListTile(
                title: const Text('Yes'),
                value: 'Yes',
                groupValue: _drinkingSmoking,
                onChanged: (value) {
                  setState(() {
                    _drinkingSmoking = value as String?;
                  });
                },
              ),
              RadioListTile(
                title: const Text('No'),
                value: 'No',
                groupValue: _drinkingSmoking,
                onChanged: (value) {
                  setState(() {
                    _drinkingSmoking = value as String?;
                  });
                },
              ),
              Text('Will you donate blood if you stay close to needy?'),
              RadioListTile(
                title: const Text('Yes'),
                value: 'Yes',
                groupValue: _donateCloseBy,
                onChanged: (value) {
                  setState(() {
                    _donateCloseBy = value as String?;
                  });
                },
              ),
              RadioListTile(
                title: const Text('No'),
                value: 'No',
                groupValue: _donateCloseBy,
                onChanged: (value) {
                  setState(() {
                    _donateCloseBy = value as String?;
                  });
                },
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.red, // Red background color for the button
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Process data.
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')));
                    }
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
