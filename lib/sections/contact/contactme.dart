import 'package:flutter/material.dart';
import 'package:my_protfolio/components/default_button.dart';
import 'package:my_protfolio/components/section_title.dart';
import 'package:my_protfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({super.key});

  @override
  _ContactMeState createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  Future<void> _sendEmail() async {
    if (_formKey.currentState!.validate()) {
      final Uri emailUri = Uri(
        scheme: 'mailto',
        path: 'simonvillasis.que@gmail.com',
        query: Uri.encodeFull(
          'subject=Inquiry from ${_nameController.text}&body=Name: ${_nameController.text}\n'
          'Email: ${_emailController.text}\n'
          'Message: ${_messageController.text}',
        ),
      );

      if (!await launchUrl(emailUri)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Could not send email')),
        );
      }
    }
  }

  void _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not open $url')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/3.png"),
        ),
      ),
      child: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 1110),
          padding: EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              // Section Title
              SectionTitle(
                title: "Contact Me",
                subTitle: "For Inquiry",
                color: Color(0xFF07E24A),
              ),
              SizedBox(height: kDefaultPadding * 2),
              // Constrain Content Within Section Width
              Container(
                constraints: BoxConstraints(maxWidth: 1110),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Left: Form and Button
                    Expanded(
                      flex: 2,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            // Name Input
                            TextFormField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                labelText: "Your Name",
                                labelStyle: TextStyle(
                                  fontFamily: "Doctor Soos", // Custom font
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black, // Label text color
                                ),
                                hintText: "Enter your name",
                                hintStyle: TextStyle(
                                  fontFamily: "Doctor Soos",
                                  fontSize: 14,
                                  color: Colors.grey[700], // Hint text color
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black, // Default border color
                                    width: 2,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors
                                        .green, // Custom border color when focused
                                    width: 2,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors
                                        .red, // Border color when there's an error
                                    width: 2,
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors
                                        .red, // Border color when focused and there's an error
                                    width: 2,
                                  ),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your name';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: kDefaultPadding),
                            // Email Input
                            TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                labelText: "Your Email",
                                labelStyle: TextStyle(
                                  fontFamily: "Doctor Soos", // Custom font
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black, // Label text color
                                ),
                                hintText: "Enter your email",
                                hintStyle: TextStyle(
                                  fontFamily: "Doctor Soos",
                                  fontSize: 14,
                                  color: Colors.grey[700], // Hint text color
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black, // Default border color
                                    width: 2,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors
                                        .green, // Custom border color when focused
                                    width: 2,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors
                                        .red, // Border color when there's an error
                                    width: 2,
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors
                                        .red, // Border color when focused and there's an error
                                    width: 2,
                                  ),
                                ),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                    .hasMatch(value)) {
                                  return 'Please enter a valid email address';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: kDefaultPadding),
                            // Message Input
                            TextFormField(
                              controller: _messageController,
                              decoration: InputDecoration(
                                labelText: "Your Message",
                                labelStyle: TextStyle(
                                  fontFamily: "Doctor Soos", // Custom font
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black, // Label text color
                                ),
                                hintText: "Enter your message",
                                hintStyle: TextStyle(
                                  fontFamily: "Doctor Soos",
                                  fontSize: 14,
                                  color: Colors.grey[700], // Hint text color
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black, // Default border color
                                    width: 2,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors
                                        .green, // Custom border color when focused
                                    width: 2,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors
                                        .red, // Border color when there's an error
                                    width: 2,
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors
                                        .red, // Border color when focused and there's an error
                                    width: 2,
                                  ),
                                ),
                              ),
                              maxLines: 5,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a message';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: kDefaultPadding * 2),
                            // Contact Me Button
                            ElevatedButton(
                              onPressed: _sendEmail,
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 18,
                                    horizontal: 24), // Larger padding
                                minimumSize: const Size(150,
                                    60), // Minimum button size (width, height)
                                backgroundColor: Color(0xFFE8F0F9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize
                                    .min, // Button size adjusts to content
                                children: [
                                  Image.asset(
                                    "assets/images/contact_icon.png",
                                    height: 24,
                                    width: 24,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(width: 8), // Spacing
                                  const Text(
                                    "Contact Me!",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Doctor Soos",
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: kDefaultPadding * 2),
                    // Right: Contact Details and Social Links
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Contact",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: "Doctor Soos",
                                ),
                          ),
                          SizedBox(height: kDefaultPadding / 2),
                          Text(
                            "simonvillasis.que@gmail.com",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: Colors.grey[700],
                                      fontFamily: "Doctor Soos",
                                    ),
                          ),
                          SizedBox(height: kDefaultPadding),
                          Text(
                            "Based in",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: "Doctor Soos",
                                ),
                          ),
                          SizedBox(height: kDefaultPadding / 2),
                          Text(
                            "Manila, Philippines",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: Colors.grey[700],
                                      fontFamily: "Doctor Soos",
                                    ),
                          ),
                          SizedBox(height: kDefaultPadding * 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Tooltip(
                                message: "GitHub",
                                child: IconButton(
                                  icon: Icon(Icons.code),
                                  color: Colors.black,
                                  iconSize: 30,
                                  onPressed: () {
                                    _launchUrl("https://github.com/simonvque");
                                  },
                                ),
                              ),
                              const SizedBox(width: kDefaultPadding),
                              Tooltip(
                                message: "LinkedIn",
                                child: IconButton(
                                  icon: Icon(Icons.link),
                                  color: Colors.black,
                                  iconSize: 30,
                                  onPressed: () {
                                    _launchUrl(
                                        "https://www.linkedin.com/in/simon-que-018361264/");
                                  },
                                ),
                              ),
                              const SizedBox(width: kDefaultPadding),
                              Tooltip(
                                message: "Instagram",
                                child: IconButton(
                                  icon: Icon(Icons.camera_alt),
                                  color: Colors.black,
                                  iconSize: 30,
                                  onPressed: () {
                                    _launchUrl(
                                        "https://www.instagram.com/oddballorange/");
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
