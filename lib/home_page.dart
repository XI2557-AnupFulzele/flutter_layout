import 'package:flutter/material.dart';
import 'package:flutter_layout/utils/multiSelect_button.dart';
import 'package:flutter_layout/utils/postmate.dart';
import 'package:flutter_layout/utils/radio_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
            // color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(children: [
                  Icon(Icons.menu),
                  SizedBox(
                    width: 10,
                  ),
                  Text("PostMates")
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.red),
                      child: const Text(
                        "Container",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Icon(Icons.location_city),
                            Text("New-york. now")
                          ],
                        )),
                    ElevatedButton(
                        onPressed: () {}, child: const Text("Sign up")),
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          onPressed: () {}, child: const Text("Sign up")),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.person)),
                      ElevatedButton(
                          onPressed: () {}, child: const Text("Cart .0")),
                    ]),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            color: Colors.green,
          ),
          const Divider(),
          SizedBox(
            height: 410,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.red,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const Text("80 Stores"),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text("Clear All")),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("sort"),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.arrow_downward_rounded))
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const RadioComponent(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Price Range"),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.arrow_downward_rounded))
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const MultiSelectButton(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("From Postmates"),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.arrow_downward_rounded))
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            PostmateListView()
                          ],
                        ),
                      ),
                    )),
                Expanded(
                    flex: 5,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: MediaQuery.of(context).size.width /
                              (MediaQuery.of(context).size.height)),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 30,
                            color: Colors.blue,
                            child: const Center(
                              child: Text("container"),
                            ),
                          ),
                        );
                      },
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
