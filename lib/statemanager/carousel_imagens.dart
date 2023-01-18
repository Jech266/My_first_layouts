import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class CarouselImagen extends StatelessWidget {
  const CarouselImagen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://www.wildlensbyabrar.com/images/easyblog_articles/100/a1sx2_custom_DSC01603.jpg",
      "https://shepherdtraveller.com/wp-content/uploads/2021/04/oeschinensee-camping-Lakes-in-Switzerland-1024x683.jpg",
      "https://www.wildlensbyabrar.com/images/easyblog_articles/100/b2ap3_amp_DJI_0598.jpg"
    ];
    return SizedBox(
      width:  double.infinity,
      height: 250.0,
      child: Swiper(
        viewportFraction: 0.95,
        itemBuilder: (BuildContext context,int index){
          return Image.network(images[index] ,fit: BoxFit.fill,);
          
        },
        itemCount: images.length,
        pagination: const SwiperPagination(),
      ),
    );
  }
}