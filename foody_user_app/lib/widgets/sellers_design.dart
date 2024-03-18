import 'package:flutter/material.dart';

import '../mainScreens/menus_screen.dart';
import '../models/sellers.dart';
class SellersDesignWidget extends StatefulWidget {
  Sellers? model;
  BuildContext? context;

  SellersDesignWidget({this.context, this.model});

  @override
  _SellersDesignWidgetState createState() => _SellersDesignWidgetState();
}

class _SellersDesignWidgetState extends State<SellersDesignWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3,
            offset: Offset(1, 1),
          )
        ],
      ),
      child: InkWell(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            height: 90,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    widget.model!.sellerAvatarUrl!,
                    height: 150,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.model!.sellerName!,
                      style: const TextStyle(
                        color: Colors.orange,
                        fontSize: 25,
                        fontFamily: "Acme",
                      ),
                    ),
                    Text(
                      widget.model!.sellerEmail!,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontFamily: "Acme",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (c) => MenusScreen(model: widget.model),
            ),
          );
        },
      ),
    );
  }
}

// class SellersDesignWidget extends StatefulWidget
// {
//   Sellers? model;
//   BuildContext? context;
//
//   SellersDesignWidget({this.model, this.context});
//
//   @override
//   _SellersDesignWidgetState createState() => _SellersDesignWidgetState();
// }
//
//
//
// class _SellersDesignWidgetState extends State<SellersDesignWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: ()
//       {
//         Navigator.push(context, MaterialPageRoute(builder: (c)=> MenusScreen(model: widget.model)));
//       },
//       splashColor: Colors.amber,
//       child: Padding(
//         padding: const EdgeInsets.all(5.0),
//         child: Container(
//           height: 280,
//           width: MediaQuery.of(context).size.width,
//           child: Column(
//             children: [
//               Divider(
//                 height: 4,
//                 thickness: 3,
//                 color: Colors.grey[300],
//               ),
//               Image.network(
//                   widget.model!.sellerAvatarUrl!,
//                   height: 220.0,
//                 fit: BoxFit.cover,
//               ),
//               const SizedBox(height: 1.0,),
//               Text(
//                 widget.model!.sellerName!,
//                 style: const TextStyle(
//                   color: Colors.cyan,
//                   fontSize: 20,
//                   fontFamily: "Train",
//                 ),
//               ),
//               Text(
//                 widget.model!.sellerEmail!,
//                 style: const TextStyle(
//                   color: Colors.grey,
//                   fontSize: 12,
//                 ),
//               ),
//               Divider(
//                 height: 4,
//                 thickness: 3,
//                 color: Colors.grey[300],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
