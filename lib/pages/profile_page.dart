import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isEditable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          style: GoogleFonts.raleway(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                isEditable = !isEditable;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Text(
                isEditable ? 'Save' : 'Edit',
                style: GoogleFonts.raleway(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue.shade800,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              // Profile Image Section
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
              const SizedBox(height: 20),
              // Name Input
              buildInputField(
                label: 'Name',
                isEditable: isEditable,
              ),
              const SizedBox(height: 20),
              // Email Input
              buildInputField(
                label: 'Email',
                isEditable: isEditable,
              ),
              const SizedBox(height: 20),
              // Password Input
              buildInputField(
                label: 'Password',
                isEditable: isEditable,
                obscureText: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInputField({
    required String label,
    required bool isEditable,
    bool obscureText = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.raleway(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 6),
        TextField(
          controller: TextEditingController(text: ''),
          obscureText: obscureText,
          enabled: isEditable,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade200,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          ),
          style: GoogleFonts.raleway(
            fontSize: 20,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
