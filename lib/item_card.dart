import 'package:cart_assigment_mod11/quantity_button.dart';
import 'package:flutter/material.dart';


class ItemsCard extends StatelessWidget {
  final double screenHeight, screenWidth;
  final Orientation orientation;
  final Function increaseQuantity;
  final Function decreaseQuantity;
  final int itemPrice, itemQuantity;
  final String itemImage;
  final String itemName;
  final String itemColor;
  final String itemSize;

  const ItemsCard(
      {super.key,
      required this.screenHeight,
      required this.screenWidth,
      required this.orientation,
      required this.increaseQuantity,
      required this.decreaseQuantity,
      required this.itemPrice,
      required this.itemImage,
      required this.itemName,
      required this.itemColor,
      required this.itemSize,
      required this.itemQuantity});

  @override
  Widget build(BuildContext context) {
    if (orientation == Orientation.portrait){
      return Container(
        margin: const EdgeInsets.only(bottom: 22),
        height: screenHeight * 0.16,
        //width: screenWidth * 0.20,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.25),
              blurStyle: BlurStyle.normal,
              blurRadius: 6,
              spreadRadius: 2,
              offset: const Offset(2, 2),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: screenHeight,
              width: screenWidth * 0.34,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.00),
                    bottomLeft: Radius.circular(10.00),
                ),
                image: DecorationImage(
                    image:
                    NetworkImage(itemImage),
                    fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            itemName,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                         const Icon(Icons.more_vert),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          "Color:",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          itemColor,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Text(
                          "Size:",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          itemSize,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () => decreaseQuantity(),
                            child: const QuantityButton(icon: Icons.remove,),
                          ),
                          Text(
                            '$itemQuantity',
                            style: const TextStyle(fontSize: 18),
                          ),
                          GestureDetector(
                            onTap: () => increaseQuantity(),
                            child: const QuantityButton(
                              icon: Icons.add,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              "$itemPrice\$",
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        margin: const EdgeInsets.only(bottom: 22),
        height: screenHeight * 0.40,
        width: screenWidth * 0.9,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.00),
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.05),
              blurStyle: BlurStyle.normal,
              blurRadius: 20,
              spreadRadius: 2,
              offset: const Offset(0, 2),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: screenHeight,
              width: screenWidth * 0.20,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.00),
                    bottomLeft: Radius.circular(10.00),
                ),
                image: DecorationImage(
                    image:
                    NetworkImage(itemImage),
                    fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            itemName,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: (){},
                            child: const Icon(
                              Icons.more_vert,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          "Color:",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          itemColor,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "Size:",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          itemSize,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: ()=> decreaseQuantity(),
                            child: const QuantityButton(icon: Icons.remove,),
                          ),
                          const SizedBox(width: 36),
                          Text(
                            '$itemQuantity',
                            style: const TextStyle(fontSize: 20),
                          ),
                          const SizedBox(width: 36),
                          GestureDetector(
                            onTap: ()=> increaseQuantity(),
                            child: const QuantityButton(icon: Icons.add,),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              "$itemPrice\$",
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight:
                                  FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}