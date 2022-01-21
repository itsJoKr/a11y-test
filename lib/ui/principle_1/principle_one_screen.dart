import 'package:a11y/ui/principle_1/widgets/story_circle.dart';
import 'package:flutter/material.dart';

class PrincipleOneScreen extends StatelessWidget {
  const PrincipleOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 24),
          Semantics(
            header: true,
            label: 'Stories',
            child: Row(
              children: [
                StoryCircle(name: 'Patrick', color: Colors.pink),
                StoryCircle(name: 'Sponge Bob', color: Colors.yellow),
                StoryCircle(name: 'Mr. Krabs', color: Colors.red,),
              ],
            ),
          ),
          SizedBox(height: 24),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            width: double.infinity,
            child: Semantics(
              header: true,
              child: Text(
                'Principle 1',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Click here'),
          ),
          SizedBox(height: 16),
          IconButton(icon: Icon(Icons.ac_unit, semanticLabel: 'Turn A/C on',), onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('A/C turned on')));
          },),
          SizedBox(height: 16),
          Image.asset('assets/png/manhattan.jpg', semanticLabel: 'Manhattan'),
        ],
      ),
    );
  }
}

