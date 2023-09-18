import 'package:flutter/material.dart';
import 'package:mobile_universitary_app/models/menu_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.width * 0.20,
        backgroundColor: Colors.red,
        title: const Text('My App'),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(12),
          ),
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: ((_, index) => Card(
                elevation: 4,
                child: Row(
                  children: [
                    Expanded(
                      child: ExpansionTile(
                        leading: null,
                        trailing: null,
                        collapsedIconColor: Colors.transparent,
                        iconColor: Colors.transparent,
                        title: Text(
                          items[index].title,
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  items[index].subtitle,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.track_changes),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Add your network image here
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                      child: Image.network(
                        items[index].image, // Replace with your image URL
                        height: 150, // Adjust the height as needed
                        fit: BoxFit
                            .cover, // You can choose the fit mode as needed
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
