
import 'package:flutter/material.dart';

class AddressCard extends StatelessWidget {
  final String title;
  final String phoneNumber;
  final String address;
  final bool isSelected;

  const AddressCard({
    super.key,
    required this.title,
    required this.phoneNumber,
    required this.address,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        border: Border.all(
          color: isSelected ? Colors.blue : Colors.grey.shade300,
          width: 1.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                isSelected
                    ? Icons.radio_button_checked
                    : Icons.radio_button_off,
                color: isSelected ? Colors.blue : Colors.grey,
              ),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              const Icon(Icons.edit, color: Colors.grey),
            ],
          ),
          const SizedBox(height: 6),
          Text(phoneNumber, style: const TextStyle(color: Colors.grey)),
          Text(address, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}

class Checkoutpaymentinfo extends StatelessWidget {
  const Checkoutpaymentinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            "Delivery Address",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),

   
        SizedBox(
          height: 250,
          child: ListView(
            children: const [
              AddressCard(
                title: "Home",
                phoneNumber: "(205) 555-024",
                address: "1786 Wheeler Bridge",
                isSelected: false, 
              ),
              AddressCard(
                title: "Office",
                phoneNumber: "(205) 555-024",
                address: "1786 W Dallas St Underfield",
                isSelected: false,
              ),
              AddressCard(
                title: "Office",
                phoneNumber: "(205) 555-024",
                address: "1786 W Dallas St Underfield",
                isSelected: false,
              ),
            ],
          ),
        ),

        // زر إضافة عنوان جديد
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.add, color: Colors.blue),
              SizedBox(width: 5),
              Text(
                "Add Address",
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}



// import 'package:flutter/material.dart';

// class CheckoutPaymentInfo extends StatelessWidget {
//   const CheckoutPaymentInfo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 20, right: 16, top: 10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             width: 331,
//             height: 110,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(9),
//               border: Border.all(
//                 color: const Color.fromARGB(89, 0, 0, 0),
//                 width: 1.0,
//               ),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(top: 16, left: 16),
//                       child: Icon(Icons.circle_outlined),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(top: 16, left: 15),
//                       child: Text(
//                         'Home',
//                         style: Theme.of(context).textTheme.bodyLarge,
//                       ),
//                     ),
//                     Spacer(),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 16, right: 20),
//                       child: Icon(Icons.mode_edit_outline_sharp),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 6),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 50),
//                   child: Text('(205) 555-024'),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 50),
//                   child: Text('1786 Wheeler Bridge'),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
