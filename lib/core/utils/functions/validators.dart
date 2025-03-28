// تعريف دالة الـ validator التي تقوم بإرجاع دالة تحقق بناءً على النوع
String? Function(String?)? validator1(ValidatorType? type) {
  if (type == null)
    return null; // في حال كان النوع غير محدد، لا تقوم بعمل أي تحقق
  if (type == ValidatorType.email) {
    return (value) => value!.isNotEmpty &&
            !RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
                .hasMatch(value)
        ? 'Enter a valid email'
        : null;
  } else if (type == ValidatorType.password) {
    return (value) =>
        value!.isNotEmpty && value.length < 8 ? 'Enter a valid password' : null;
  } else if (type == ValidatorType.phone) {
    return (value) =>
        value!.isNotEmpty && value.length < 9 ? 'Enter a valid phone' : null;
  } else if (type == ValidatorType.name) {
    return (value) =>
        value!.isNotEmpty && value.length < 3 ? 'Enter a valid name' : null;
  } else if (type == ValidatorType.code) {
    return (value) =>
        value!.isNotEmpty && value.length < 6 ? 'Enter a valid code' : null;
  }
  return null;
}

enum ValidatorType { email, password, phone, name, code }

// class Coustmtextformauth extends StatelessWidget {
//   const Coustmtextformauth({
//     super.key,
//     required this.hinttext,
//     required this.icondata,
//     this.labltext,
//     this.type,  // جعل النوع اختياري
//   });

//   final String hinttext;
//   final String? labltext;
//   final IconData icondata;
//   final ValidatorType? type;  // جعل النوع اختياري (nullable)

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 20),
//       child: TextFormField(
//         validator: validator(type),  // استخدام الدالة بناءً على النوع
//         decoration: InputDecoration(
//           hintText: hinttext,
//           hintStyle: TextStyle(fontSize: 14),
//           floatingLabelBehavior: FloatingLabelBehavior.always,
//           contentPadding: EdgeInsets.symmetric(vertical: 9, horizontal: 30),
//           label: labltext != null
//               ? Container(
//                   margin: EdgeInsets.symmetric(horizontal: 9),
//                   child: Text(labltext!))
//               : null,
//           suffixIcon: Icon(icondata),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(30),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(30),
//           ),
//           focusColor: AppColors.primary,
//         ),
//       ),
//     );
//   }
// }
