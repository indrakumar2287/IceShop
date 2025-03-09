// import 'package:flutter/material.dart';
//
// // Custom painter for top wave
// class TopWavePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..shader = const LinearGradient(
//         colors: [Color(0xFFA5E1EC), Color(0xFFBCE8CA)],
//         begin: Alignment.topLeft,
//         end: Alignment.bottomRight,
//       ).createShader(Rect.fromLTWH(0, 0, size.width, size.height))
//       ..style = PaintingStyle.fill;
//
//     final path = Path();
//     path.moveTo(0, 0);
//     path.lineTo(0, size.height * 0.75);
//
//     // First curve
//     path.quadraticBezierTo(
//         size.width * 0.25,
//         size.height * 0.9,
//         size.width * 0.5,
//         size.height * 0.75
//     );
//
//     // Second curve
//     path.quadraticBezierTo(
//         size.width * 0.75,
//         size.height * 0.6,
//         size.width,
//         size.height * 0.75
//     );
//
//     path.lineTo(size.width, 0);
//     path.close();
//
//     canvas.drawPath(path, paint);
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }
//
// // Custom painter for bottom wave
// class BottomWavePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..shader = const LinearGradient(
//         colors: [Color(0xFFCDE5F9), Color(0xFFE7D8F9)],
//         begin: Alignment.topLeft,
//         end: Alignment.bottomRight,
//       ).createShader(Rect.fromLTWH(0, 0, size.width, size.height))
//       ..style = PaintingStyle.fill;
//
//     final path = Path();
//     path.moveTo(0, size.height);
//     path.lineTo(0, size.height * 0.25);
//
//     // First curve
//     path.quadraticBezierTo(
//         size.width * 0.25,
//         size.height * 0.1,
//         size.width * 0.5,
//         size.height * 0.25
//     );
//
//     // Second curve
//     path.quadraticBezierTo(
//         size.width * 0.75,
//         size.height * 0.4,
//         size.width,
//         size.height * 0.25
//     );
//
//     path.lineTo(size.width, size.height);
//     path.close();
//
//     canvas.drawPath(path, paint);
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }
//
// // Alternative implementation using CustomPaint instead of image assets
// class SplashScreenAlternative extends StatefulWidget {
//   const SplashScreenAlternative({Key? key}) : super(key: key);
//
//   @override
//   State<SplashScreenAlternative> createState() => _SplashScreenAlternativeState();
// }
//
// class _SplashScreenAlternativeState extends State<SplashScreenAlternative> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//
//   @override
//   void dispose() {
//     _usernameController.dispose();
//     _phoneController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           color: Colors.white,
//         ),
//         child: SafeArea(
//           child: Stack(
//             children: [
//               // Top wave
//               Positioned(
//                 top: 0,
//                 left: 0,
//                 right: 0,
//                 child: CustomPaint(
//                   painter: TopWavePainter(),
//                   size: const Size(double.infinity, 150),
//                 ),
//               ),
//
//               // Bottom wave
//               Positioned(
//                 bottom: 0,
//                 left: 0,
//                 right: 0,
//                 child: CustomPaint(
//                   painter: BottomWavePainter(),
//                   size: const Size(double.infinity, 150),
//                 ),
//               ),
//
//               // Main content
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Padding(
//                       padding: EdgeInsets.only(top: 12.0, left: 4.0),
//                       child: Text(
//                         'Splash Screen',
//                         style: TextStyle(
//                           color: Color(0xFFBDBDBD),
//                           fontSize: 14,
//                         ),
//                       ),
//                     ),
//
//                     Expanded(
//                       child: Center(
//                         child: SingleChildScrollView(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               // Welcome Text
//                               const Text(
//                                 'Welcome',
//                                 style: TextStyle(
//                                   fontSize: 28,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               const SizedBox(height: 8),
//                               const Text(
//                                 'Login as a Guest',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   color: Color(0xFF757575),
//                                 ),
//                               ),
//                               const SizedBox(height: 30),
//
//                               // Login Form
//                               Form(
//                                 key: _formKey,
//                                 child: Column(
//                                   children: [
//                                     // Username field
//                                     Container(
//                                       decoration: BoxDecoration(
//                                         color: Colors.white,
//                                         borderRadius: BorderRadius.circular(30),
//                                         boxShadow: [
//                                           BoxShadow(
//                                             color: Colors.black.withOpacity(0.05),
//                                             blurRadius: 10,
//                                             offset: const Offset(0, 2),
//                                           ),
//                                         ],
//                                       ),
//                                       child: TextFormField(
//                                         controller: _usernameController,
//                                         decoration: InputDecoration(
//                                           hintText: 'User name',
//                                           hintStyle: TextStyle(
//                                             color: Colors.grey[400],
//                                             fontSize: 16,
//                                           ),
//                                           prefixIcon: Icon(
//                                             Icons.person_outline,
//                                             color: Colors.grey[400],
//                                           ),
//                                           border: InputBorder.none,
//                                           contentPadding: const EdgeInsets.symmetric(vertical: 15),
//                                         ),
//                                         validator: (value) {
//                                           if (value == null || value.isEmpty) {
//                                             return 'Please enter username';
//                                           }
//                                           return null;
//                                         },
//                                       ),
//                                     ),
//                                     const SizedBox(height: 16),
//
//                                     // Phone number field
//                                     Container(
//                                       decoration: BoxDecoration(
//                                         color: Colors.white,
//                                         borderRadius: BorderRadius.circular(30),
//                                         boxShadow: [
//                                           BoxShadow(
//                                             color: Colors.black.withOpacity(0.05),
//                                             blurRadius: 10,
//                                             offset: const Offset(0, 2),
//                                           ),
//                                         ],
//                                       ),
//                                       child: TextFormField(
//                                         controller: _phoneController,
//                                         keyboardType: TextInputType.phone,
//                                         decoration: InputDecoration(
//                                           hintText: 'Phone number',
//                                           hintStyle: TextStyle(
//                                             color: Colors.grey[400],
//                                             fontSize: 16,
//                                           ),
//                                           prefixIcon: Icon(
//                                             Icons.phone,
//                                             color: Colors.grey[400],
//                                           ),
//                                           border: InputBorder.none,
//                                           contentPadding: const EdgeInsets.symmetric(vertical: 15),
//                                         ),
//                                         validator: (value) {
//                                           if (value == null || value.isEmpty) {
//                                             return 'Please enter phone number';
//                                           }
//                                           return null;
//                                         },
//                                       ),
//                                     ),
//                                     const SizedBox(height: 16),
//
//                                     // Password field
//                                     Container(
//                                       decoration: BoxDecoration(
//                                         color: Colors.white,
//                                         borderRadius: BorderRadius.circular(30),
//                                         boxShadow: [
//                                           BoxShadow(
//                                             color: Colors.black.withOpacity(0.05),
//                                             blurRadius: 10,
//                                             offset: const Offset(0, 2),
//                                           ),
//                                         ],
//                                       ),
//                                       child: TextFormField(
//                                         controller: _passwordController,
//                                         obscureText: true,
//                                         decoration: InputDecoration(
//                                           hintText: 'Password',
//                                           hintStyle: TextStyle(
//                                             color: Colors.grey[400],
//                                             fontSize: 16,
//                                           ),
//                                           prefixIcon: Icon(
//                                             Icons.lock_outline,
//                                             color: Colors.grey[400],
//                                           ),
//                                           border: InputBorder.none,
//                                           contentPadding: const EdgeInsets.symmetric(vertical: 15),
//                                         ),
//                                         validator: (value) {
//                                           if (value == null || value.isEmpty) {
//                                             return 'Please enter password';
//                                           }
//                                           return null;
//                                         },
//                                       ),
//                                     ),
//                                     const SizedBox(height: 40),
//
//                                     // Login button
//                                     Container(
//                                       width: double.infinity,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(10),
//                                       ),
//                                       child: ElevatedButton(
//                                         onPressed: () {
//                                           if (_formKey.currentState!.validate()) {
//                                             Navigator.pushReplacementNamed(context, '/home');
//                                           }
//                                         },
//                                         style: ElevatedButton.styleFrom(
//                                           backgroundColor: const Color(0xFFE8903F),
//                                           foregroundColor: Colors.white,
//                                           elevation: 0,
//                                           padding: const EdgeInsets.symmetric(vertical: 16),
//                                           shape: RoundedRectangleBorder(
//                                             borderRadius: BorderRadius.circular(10),
//                                           ),
//                                         ),
//                                         child: const Text(
//                                           'Login Now',
//                                           style: TextStyle(
//                                             fontSize: 16,
//                                             fontWeight: FontWeight.w600,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }