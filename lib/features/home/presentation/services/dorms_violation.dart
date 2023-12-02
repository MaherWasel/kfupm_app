import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DormsVailoationsScreen extends StatelessWidget {
  const DormsVailoationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceData = MediaQuery.of(context).size;

    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection("students")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else {
          final violations = snapshot.data!['dormsViolation'];

          return Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromRGBO(15, 71, 40, 1),
              title: const Text(
                "Dorms Violations",
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 244, 241, 241),
                ),
              ),
            ),
            body: Container(
              color: const Color.fromRGBO(15, 71, 40, 1),
              height: deviceData.height,
              width: deviceData.width,
              child: Center(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(8),
                  height: deviceData.height * 0.7,
                  width: deviceData.width * 0.9,
                  child: Card(
                    child: ListView.builder(
                      itemCount: violations.length,
                      itemBuilder: (context, index) {
                        final violation = violations[index];

                        final List<String> violationValues = [
                          violation["name"],
                          violation["number"],
                          violation["date"],
                          violation["fee"],
                        ];
                        return Center(
                          child: ExpansionTile(
                            title: Text(violation["name"]),
                            children: [
                              ListTile(
                                title: Text(
                                    "Ticket Number: " + violation["number"]),
                              ),
                              ListTile(
                                title: Text("Fee: " + violation["fee"]),
                              ),
                              ListTile(
                                title: Text(
                                    "Violation Date: " + violation["date"]),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
// snapshot.data!['vailations']['name'],