import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_fonix/modules/dashboard/view/dashboard_screen.dart';
import 'package:shopping_fonix/utils/app_exports/app_exports.dart';
import 'package:shopping_fonix/utils/widgets/text_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            // Top wavy design
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.topWave),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),

            // Bottom wavy design
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                  // height: 300,
                  child: Image.asset(
                AppImages.bottomWave,
                fit: BoxFit.fill,
              )),
            ),

            BottomRightGradientDot(),

            // Main content
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Welcome Text
                            TextWidget(
                              text: 'Welcome',
                              fontSize: 46,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            const SizedBox(height: 8),
                            TextWidget(
                              text: 'Login as a Guest',
                              isOutFitFont: true,
                              fontSize: 18,
                              color: Color(0xFF262626),
                            ),
                            SizedBox(height: h*0.04),

                            // Login Form
                            Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  // Username field
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.05),
                                          blurRadius: 10,
                                          offset: const Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: TextFormField(
                                      controller: _usernameController,
                                      decoration: InputDecoration(
                                        hintText: 'User name',
                                        hintStyle: GoogleFonts.outfit(
                                          color: const Color(0xffC8C8C8),
                                          fontSize: 15,
                                        ),
                                        prefixIcon: const Icon(
                                          Icons.person,
                                          color: Color(0xff9A9A9A),
                                        ),
                                        border: InputBorder.none,
                                        contentPadding: const EdgeInsets.symmetric(vertical: 15),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return '      Please enter username';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(height: h*0.02),

                                  // Phone number field
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.05),
                                          blurRadius: 10,
                                          offset: const Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: TextFormField(
                                      controller: _phoneController,
                                      keyboardType: TextInputType.phone,
                                      decoration: InputDecoration(
                                        hintText: 'Phone number',
                                        hintStyle: GoogleFonts.outfit(
                                          color: const Color(0xffC8C8C8),
                                          fontSize: 15,
                                        ),
                                        prefixIcon: const Icon(
                                          Icons.phone,
                                          color: Color(0xff9A9A9A),
                                        ),
                                        border: InputBorder.none,
                                        contentPadding: const EdgeInsets.symmetric(vertical: 15),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return '      Please enter phone number';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                   SizedBox(height: h*0.02),

                                  // Password field
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.05),
                                          blurRadius: 10,
                                          offset: const Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: TextFormField(
                                      controller: _passwordController,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        hintText: 'Password',
                                        hintStyle: GoogleFonts.outfit(
                                          color: const Color(0xffC8C8C8),
                                          fontSize: 15,
                                        ),
                                        prefixIcon: const Icon(
                                          Icons.lock,
                                          color: Color(0xff9A9A9A),
                                        ),
                                        border: InputBorder.none,
                                        contentPadding: const EdgeInsets.symmetric(vertical: 15),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return '      Please enter password';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 40),

                                  // Login button
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          // Navigator.pushReplacementNamed(context, '/home');
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen()));
                                        }
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0xFFE8903F),
                                        foregroundColor: Colors.white,
                                        elevation: 0,
                                        padding: const EdgeInsets.symmetric(vertical: 16),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                      ),
                                      child: const Text(
                                        'Login Now',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}



class BottomRightGradientDot extends StatelessWidget {
  const BottomRightGradientDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: h * 0.1,
      right: -w * 0.15,
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color(0xff9895EE).withOpacity(0.0), // Main color
          boxShadow: [
            BoxShadow(
              color: const Color(0xff9895EE).withOpacity(0.35), // Fading effect
              blurRadius: 50, // The larger, the smoother the fade
              spreadRadius: 50, // Controls the fade-out distance
            ),
          ],
        ),
      ),
    );
  }
}
