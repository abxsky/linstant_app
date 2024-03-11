import 'package:flutter/material.dart';
import 'package:linstant_app/models/event.dart';
import 'package:transparent_image/transparent_image.dart';

class EventItem extends StatelessWidget {
  const EventItem({super.key, required this.event});
  final Event event;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).devicePixelRatio * 5),
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        margin: const EdgeInsets.only(top: 8),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () {},
          child: Stack(
            children: [
              FadeInImage(
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                  placeholder: MemoryImage(kTransparentImage),
                  image: NetworkImage(event.pictureList[0].imageUrl)),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.black45,
                  child: Column(
                    children: [
                      Text(
                        event.title,
                        style: const TextStyle(
                            fontSize: 15,
                            overflow: TextOverflow.ellipsis,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      //MealItemTrait(meal: meal)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
