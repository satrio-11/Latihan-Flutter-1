import 'package:flutter/material.dart';

import 'scaffold_page.dart';
import 'center_page.dart';
import 'text_page.dart';
import 'column_page.dart';
import 'container_page.dart';
import 'expanded_page.dart';
import 'sizedbox_page.dart';
import 'row_page.dart';
import 'row_column.dart';

import 'stack_page.dart';
import 'padding_page.dart';
import 'align_page.dart';
import 'elevated_button_page.dart';
import 'textfield_page.dart';
import 'image_local_page.dart';
import 'image_internet_page.dart';
import 'icon_page.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    final menus = <_MenuItem>[
      _MenuItem(
        title: 'Scaffold',
        subtitle: 'Struktur dasar halaman',
        icon: Icons.web,
        page: const ScaffoldPage(),
      ),
      _MenuItem(
        title: 'Center',
        subtitle: 'Membuat widget di tengah',
        icon: Icons.center_focus_strong,
        page: const CenterPage(),
      ),
      _MenuItem(
        title: 'Text',
        subtitle: 'Styling dan teks',
        icon: Icons.text_fields,
        page: const TextPage(),
      ),
      _MenuItem(
        title: 'Column',
        subtitle: 'Susun vertikal',
        icon: Icons.view_column,
        page: const ColumnPage(),
      ),
      _MenuItem(
        title: 'Container',
        subtitle: 'Box, padding, border',
        icon: Icons.crop_square,
        page: const ContainerPage(),
      ),
      _MenuItem(
        title: 'Expanded',
        subtitle: 'Bagi ruang fleksibel',
        icon: Icons.open_in_full,
        page: const ExpandedPage(),
      ),
      _MenuItem(
        title: 'SizedBox',
        subtitle: 'Jarak & ukuran',
        icon: Icons.space_bar,
        page: const SizedBoxPage(),
      ),
      _MenuItem(
        title: 'Row',
        subtitle: 'Susun horizontal',
        icon: Icons.view_stream,
        page: const RowPage(),
      ),
      _MenuItem(
        title: 'Row & Column',
        subtitle: 'Kombinasi layout',
        icon: Icons.grid_view,
        page: const RowColumnPage(),
      ),

      // ✅ 8 menu terbaru
      _MenuItem(
        title: 'Stack',
        subtitle: 'Tumpuk widget (overlay)',
        icon: Icons.layers,
        page: const StackPage(),
      ),
      _MenuItem(
        title: 'Padding',
        subtitle: 'Beri jarak di dalam',
        icon: Icons.padding,
        page: const PaddingPage(),
      ),
      _MenuItem(
        title: 'Align',
        subtitle: 'Atur posisi widget',
        icon: Icons.align_horizontal_center,
        page: const AlignPage(),
      ),
      _MenuItem(
        title: 'Elevated Button',
        subtitle: 'Tombol dengan style',
        icon: Icons.smart_button,
        page: const ElevatedButtonPage(),
      ),
      _MenuItem(
        title: 'TextField',
        subtitle: 'Input teks dari user',
        icon: Icons.edit,
        page: const TextFieldPage(),
      ),
      _MenuItem(
        title: 'Image Local',
        subtitle: 'Tampilkan gambar dari asset',
        icon: Icons.image,
        page: const ImageLocalPage(),
      ),
      _MenuItem(
        title: 'Image Internet',
        subtitle: 'Tampilkan gambar dari URL',
        icon: Icons.public,
        page: const ImageInternetPage(),
      ),
      _MenuItem(
        title: 'Icon',
        subtitle: 'Contoh penggunaan Icon',
        icon: Icons.emoji_emotions,
        page: const IconPage(),
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FB),
      appBar: AppBar(
        title: const Text('Home Menu'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: cs.primary,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 16),
        itemCount: menus.length,
        itemBuilder: (context, i) {
          final item = menus[i];

          return Card(
            elevation: 0,
            margin: const EdgeInsets.only(bottom: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(color: Colors.black.withValues(alpha: 0.06)),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 10,
              ),
              leading: Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: cs.primary.withValues(alpha: 0.10),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(item.icon, color: cs.primary),
              ),
              title: Text(
                item.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(
                item.subtitle,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black.withValues(alpha: 0.55),
                ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Colors.black.withValues(alpha: 0.35),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => item.page),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _MenuItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final Widget page;

  const _MenuItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.page,
  });
}
