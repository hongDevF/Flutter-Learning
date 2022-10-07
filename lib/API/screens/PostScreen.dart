// ignore: file_names
import 'package:flutter/material.dart';
import '../models/post_model.dart';
import '../service/PostService.dart';

class PostScreen extends StatefulWidget {
  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  List<Post>? posts;

  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    getData();
  }

  getData() async {
    posts = await PostService().getPosts();
    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post API"),
      ),
      body: Visibility(
        visible: isLoaded,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.builder(
          itemCount: posts!.length,
          itemBuilder: (context, index) {
            return Visibility(
              visible: isLoaded,
              replacement: const Center(child: CircularProgressIndicator()),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        color: Colors.black,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: const CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 35,
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundImage: NetworkImage(
                                      "https://imgs.search.brave.com/XwvOSFEI6RTHV7mp8g-VHinemqr5Uu3pjHiVXOAiNp0/rs:fit:632:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5Z/MlUzM0dFN0xkUTRt/VHoyVmhkMlJ3SGFG/aiZwaWQ9QXBp"),
                                ),
                              ),
                              title: Text(
                                posts![index].title ?? '',
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              subtitle: Text(
                                posts![index].body ?? '',
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
