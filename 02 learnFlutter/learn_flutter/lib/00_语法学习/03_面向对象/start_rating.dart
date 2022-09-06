import 'package:flutter/material.dart';

class StartRating extends StatefulWidget {
  final double rating;
  final double maxRating;
  final int count;
  final double size;
  final Color unSelectedColor;
  final Color selectedColor;
  final Widget unSelectedImage;
  final Widget selectedImage;

  // 构造函数
  StartRating({
    Key? key,
    required this.rating,
    this.maxRating = 10,
    this.count = 5,
    this.size = 30,
    this.unSelectedColor = Colors.grey,
    this.selectedColor = Colors.amber,
    Widget? unSelectedImage, // 可选类型
    Widget? selectedImage,
  }) :  unSelectedImage = unSelectedImage ?? Icon(Icons.star_border, color: unSelectedColor, size: size),
        selectedImage = selectedImage ?? Icon(Icons.star, color: selectedColor, size: size),
        super(key: key);

  @override
  State<StartRating> createState() => _StartRatingState();
}

class _StartRatingState extends State<StartRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(children: buildUnselectedStar()),
        Row(children: buildSelectedStar()),
      ],
    );
  }

  List<Widget> buildUnselectedStar() {
    return List.generate(widget.count, (index) {
      return widget.unSelectedImage;
    });
  }

  List<Widget> buildSelectedStar() {
    List<Widget> stars = [];
    final star = widget.selectedImage;

    double oneValue = widget.maxRating / widget.count;
    int entireCount = (widget.rating / oneValue).floor(); // 向下取整
    for (var i = 0; i < entireCount; i++) {
      stars.add(star);
    }

    double leftWidth = ((widget.rating / oneValue) - entireCount) * widget.size;
    final halfStar = ClipRect(
      clipper: _StarClipper(leftWidth),
      child: star,
    );
    stars.add(halfStar);

    // 计算出的个数大于了实际的个数，进行截取
    if (stars.length > widget.count) {
      return stars.sublist(0, widget.count);
    }

    return stars;
  }
}

class _StarClipper extends CustomClipper<Rect> {
  double width;

  _StarClipper(this.width);

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(_StarClipper oldClipper) {
    return oldClipper.width != width;
  }
}
