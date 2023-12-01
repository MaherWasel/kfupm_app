import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kfupm_app/features/authentication/data/user.dart';
import 'package:kfupm_app/features/constants/Sizes.dart';

class HomePageAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const HomePageAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      title: Container(
        margin: const EdgeInsets.all(Sizes.p8),
        child: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.calendar_month,
                  size: Sizes.p32,
                )),
            Expanded(
              child: Column(
                children: [
                  Text(
                    "WELCOME",
                    style: midTextL.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Ahmed Khalid ",
                    style: smallTextL,
                  ),
                ],
              ),
            ),
            IconButton(
                onPressed: () {
                  ref.read(userRepoProvider).signOut();
                },
                icon: const Icon(
                  Icons.person,
                  size: Sizes.p32,
                ))
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
