import 'package:flutter/material.dart';
import 'package:products_task/core/widgets/custom_icon_button.dart';

import '../../../../../constants.dart';
import '../../../data/models/product_model.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key,required this.product});

  final ProductModel product;
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
                 child: Align(
                   alignment: Alignment.center,
                   child: Padding(
                     padding: const EdgeInsets.only(top: 12.0),
                     child: Image.network(
                       product.image!,
                       height: 120,
                     fit: BoxFit.fill,
                     ),
                   ),
                 ),
               ),
               CustomIconButton(icon: Icons.favorite_outline,onPressed: (){}, backgroundColor: Colors.white, iconColor: kPrimaryColor,)
             ],
           ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10,left:10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '${product.title}',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 15.5,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '${'EGP'} ${product.price} ',
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
                              color: kSecondaryColor,
                              decoration: TextDecoration.lineThrough
                            )
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Review (${product.rating!.rate})',style: TextStyle(
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
