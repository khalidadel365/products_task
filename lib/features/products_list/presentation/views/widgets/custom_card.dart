import 'package:flutter/material.dart';
import 'package:products_task/core/widgets/custom_icon_button.dart';

import '../../../../../constants.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:2.5),
      child: Card(
        shadowColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(color: kPrimaryColor.withOpacity(0.3),
                width: 1.8,
            ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           Stack(
             alignment: Alignment.topRight,
             clipBehavior: Clip.none,
             children: [
               ClipRRect(
                 borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                 child: Image.network(
                   "https://fakestoreapi.com/img/71kWymZ+c+L._AC_SX679_t.png",
                   height: 130,
                   width: double.infinity,
                 fit: BoxFit.fill,
                 ),
               ),
               CustomIconButton(icon: Icons.favorite_outline,onPressed: (){}, backgroundColor: Colors.white, iconColor: kPrimaryColor,)
             ],
           ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left:10),
              child: Column(
                children: [
                  Text(
                    'Silicon Power 256GB SSD 3D NAND A55 SLC Cache Performance Boost SATA III 2.5',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15.5,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'EGP 1.200',
                        style: TextStyle(
                            fontSize: 15.5,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                          '1500 EGP',
                          style: TextStyle(
                              fontSize: 14,
                            color: kSecondaryColor
                          )
                      )
                    ],
                  ),
                  const SizedBox(
                    height:2,
                  ),
                  Row(
                    children: [
                      Text(
                        'Review (4.6)',style: TextStyle(
                        fontWeight: FontWeight.w600
                      ),
                      ),
                      SizedBox(width: 5,),
                      Icon(Icons.star,color:Colors.amber,),
                      Spacer(),
                      CustomIconButton(
                          icon: Icons.add,
                          backgroundColor: kPrimaryColor,
                          iconColor: Colors.white,
                          onPressed: (){})
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
