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

  /// 1. 普通的构造方法
  /// 当有了自己的构造方法时，默认构造方法是失效的
  /// to do
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

  /// 2. 命名构造方法
  /// 如果我们确实需要更多的构造方法，那么我们就可以用-命名构造方法
  StartRating.heart({
    Key? key,
    required this.rating,
    this.maxRating = 10,
    this.count = 5,
    this.size = 30,
    this.unSelectedColor = Colors.grey,
    this.selectedColor = Colors.red,
  }) :  unSelectedImage = Icon(Icons.favorite_border, color: unSelectedColor, size: size),
        selectedImage = Icon(Icons.favorite, color: selectedColor, size: size),
        super(key: key);

  /// 3. 重定向构造方法
  /// 如果我们希望在一个构造方法中去调用另外一个构造方法, 那么就可以使用-重定向构造方法
  StartRating.circle(double rating, {Key? key}) : this._inCircle(rating: rating, key: key);
  /// 内部私有方法
  StartRating._inCircle({
    Key? key,
    required this.rating,
    this.maxRating = 10,
    this.count = 5,
    this.size = 30,
    this.unSelectedColor = Colors.grey,
    this.selectedColor = Colors.amber,
    Widget? unSelectedImage, // 可选类型
    Widget? selectedImage,
  }) :  unSelectedImage = unSelectedImage ?? Icon(Icons.circle_outlined, color: unSelectedColor, size: size),
        selectedImage = selectedImage ?? Icon(Icons.circle, color: selectedColor, size: size),
        super(key: key);

  /// 4. 常量构造方法
  /// 如果我们在传入相同值时，希望返回的是同一个对象，这时就可以用-常量构造方法
  /// 默认情况下，创建对象时，即使传入相同的参数，创建出来的也不是同一个对象
  /// 可以参见 person_const 示例
  const StartRating.triangle({
    Key? key,
    this.rating = 5,
    this.maxRating = 10,
    this.count = 5,
    this.size = 30,
    this.unSelectedColor = Colors.grey,
    this.selectedColor = Colors.red,
  }) :  unSelectedImage = const Icon(Icons.heart_broken_outlined, color: Colors.grey, size: 30),
        selectedImage = const Icon(Icons.heart_broken, color: Colors.red, size: 30),
        super(key: key);

  /// 5. 工厂构造方法
  /// 如果一个构造函数并不总是返回一个新的对象，则使用 factory 来定义 这个构造函数。
  /// 例如，一个工厂构造函数 可能从缓存中获取一个实例并返回，或者 返回一个子类型的实例。
  /// 区别：一般的构造函数是没有返回值的，而factory构造函数须要一个返回值
  /// 创建一个分数的缓存
  /// 具体参见 PersonFactory 示例
  static final Map<double, StartRating> _rating = {};
  factory StartRating.withRating(double rating,) {
    if (_rating.containsKey(rating)) {
      return _rating[rating] ?? StartRating(rating: rating);
    } else {
      final star = StartRating(rating: rating);
      _rating[rating] = star;
      return star;
    }
  }

  /// 6. 单例
  static StartRating? _startRating;
  factory StartRating.star(double rating) {
    // if (_startRating == null) {
    //   _startRating = StartRating(rating: rating,);
    // }
    // return _startRating;
    return _startRating ??= StartRating(rating: rating,);
  }

  @override
  State<StartRating> createState() => _StartRatingState();
}

class _StartRatingState extends State<StartRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// MainAxisSize.min 尽可能的小
        Row(mainAxisSize: MainAxisSize.min, children: buildUnselectedStar()),
        Row(mainAxisSize: MainAxisSize.min, children: buildSelectedStar()),
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
