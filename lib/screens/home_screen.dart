import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //create a bloc and provide it to view
    return const HomeView();
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    //Create the homeview UI

    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'welcome',
              style: textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              "Maheel Lakshan",
              style: textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: colorScheme.secondary,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'UOR',
                  style: textTheme.bodySmall!
                      .copyWith(color: colorScheme.secondary),
                ),
                const SizedBox(
                  width: 4,
                ),
                Icon(
                  Icons.expand_more,
                  color: colorScheme.secondary,
                )
              ],
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
          const SizedBox(
            width: 8,
          )
        ],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(64),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search for Doctors .....',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: Container(
                    margin: const EdgeInsets.all(4),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: colorScheme.onSurfaceVariant,
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Icon(
                      Icons.filter_alt_outlined,
                      color: colorScheme.surfaceVariant,
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
