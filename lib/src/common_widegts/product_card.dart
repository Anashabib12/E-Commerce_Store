import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final BoxConstraints constraints;
  final String image;
  final String text;
  final String reviewText;
  final String price;

  const ProductCard(
      {super.key,
      required this.image,
      required this.text,
      required this.reviewText,
      required this.price,
      required this.constraints});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isHeartSelected = false; //initially set this false
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.constraints.maxHeight * 0.48,
      width: widget.constraints.maxWidth * 0.44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: const Color(0xffFFFFFF),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Spacer(),
              IconButton(
                onPressed: () {
                  setState(() {
                    isHeartSelected = !isHeartSelected;
                  });
                },
                icon: isHeartSelected
                    ? const Icon(Icons.favorite)
                    : const Icon(Icons.favorite_border),
                color: isHeartSelected ? Colors.red : Colors.grey,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
                top: widget.constraints.maxHeight * 0.015,
                left: widget.constraints.maxWidth * 0.03,
                right: widget.constraints.maxWidth * 0.03),
            height: widget.constraints.maxHeight * 0.2,
            width: widget.constraints.maxWidth * 0.44,
            decoration: BoxDecoration(
                color: const Color(0xfff6f6f8),
                borderRadius: BorderRadius.circular(7)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Image.asset(
                widget.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: widget.constraints.maxHeight * 0.019,
                left: widget.constraints.maxWidth * 0.02),
            child: Text(
              widget.text,
              style: TextStyle(
                  color: const Color(0xff090F47),
                  fontWeight: FontWeight.w500,
                  fontSize: widget.constraints.maxWidth * 0.038),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: widget.constraints.maxHeight * 0.008,
                left: widget.constraints.maxWidth * 0.01
                ),
            child: Row(
              children: [
                 const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(
                  widget.reviewText,
                  style: TextStyle(
                      color: const Color(0xff9A9998),
                      fontWeight: FontWeight.w400,
                      fontSize: widget.constraints.maxWidth * 0.03),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: widget.constraints.maxHeight * 0.015,
                left: widget.constraints.maxWidth * 0.02),
            child: Text(
              widget.price,
              style: TextStyle(
                  color: const Color(0xffAA14F0),
                  fontWeight: FontWeight.w600,
                  fontSize: widget.constraints.maxWidth * 0.042),
            ),
          ),
        ],
      ),
    );
  }
}
