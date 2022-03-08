import 'package:flutter/material.dart';
import 'package:instagram_clone/app/home/controllers/home_controller.dart';
import 'package:instagram_clone/app/home/models/home_model.dart';
import 'package:instagram_clone/app/home/widgets/icon_widget.dart';
import 'package:instagram_clone/app/home/widgets/stories_widget.dart';

class BodyComponent extends StatefulWidget {
  const BodyComponent({Key? key}) : super(key: key);

  @override
  State<BodyComponent> createState() => _BodyComponentState();
}

class _BodyComponentState extends State<BodyComponent> {
  final controller = HomeController();
  late Future<List<HomeModel>> listFuture;

  @override
  void initState() {
    super.initState();
    listFuture = controller.getData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: listFuture,
      builder: (context, snapshot) {
        dynamic loadList = snapshot.data;

        if (snapshot.hasData) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: loadList.length,
                    itemBuilder: (context, index) {
                      return StoriesWidgets(
                        imageUrl: loadList[index].imageUrl ?? '',
                        name: loadList[index].name ?? '',
                        isLive: loadList[index].isLive ?? false,
                      );
                    },
                  ),
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://instagram.fcpv20-1.fna.fbcdn.net/v/t51.2885-19/30077967_1916892131934863_2907957060010246144_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fcpv20-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=Iy0fzVKWIFQAX9amWmi&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT_pUbhfLpV5NvEToJfhORM9JmKKyrL3rMIpRCi9pH39Ww&oe=622BD3DE&_nc_sid=7bff83"),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'eliziariodm',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    IconWidget(icon: Icons.more_horiz),
                  ],
                ),
                const SizedBox(height: 5),
                Container(
                  height: MediaQuery.of(context).size.height * 0.49,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://scontent.fcpv20-1.fna.fbcdn.net/v/t39.30808-6/214311655_4375442579185080_4469271568835051073_n.png?_nc_cat=101&ccb=1-5&_nc_sid=730e14&_nc_ohc=MkWicNXNbuQAX8kN_YI&_nc_ht=scontent.fcpv20-1.fna&oh=00_AT_Y_IzKupIOCFWN-CJBWaMvk1aLwiyCBTuTlxHZXRdx0Q&oe=622B2525'),
                        fit: BoxFit.cover),
                  ),
                ),
                Row(
                  children: const [
                    IconWidget(icon: Icons.favorite_border),
                    IconWidget(icon: Icons.mode_comment_outlined),
                    IconWidget(icon: Icons.near_me),
                    SizedBox(width: 225),
                    Expanded(child: IconWidget(icon: Icons.bookmark_border)),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 6.0, left: 12),
                  child: Text(
                    '1.463 curtidas',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 6.0, left: 12),
                  child: Text(
                    'eliziariodm GESTANTES, A 2ª DOSE É ESSENCIAL PARA A SUA PROTEÇÃO...',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 6.0, left: 12),
                  child: Text(
                    'Ver todos os 73 comentários',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
              ],
            ),
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('Erro'),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
