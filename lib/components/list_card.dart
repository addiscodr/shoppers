import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../utils/custom_theme.dart';

class ListCart extends StatelessWidget {
  const ListCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
      decoration: CustomTheme.getCardDecoration(),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: SizedBox(
                  height: double.infinity,
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://plus.unsplash.com/premium_photo-1741194732662-5c20c90f46b8?q=80&w=1468&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",

                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(bottom: 8),
                    child: Text('title', style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                      Padding(padding: EdgeInsets.only(bottom: 8),
                        child: Text('Qty: 1', style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 8),
                        child: Text('\$ price', style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
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
