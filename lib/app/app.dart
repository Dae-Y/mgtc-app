// ---------------------------------------------------------------------------
// MGTC Owners Club App
// ---------------------------------------------------------------------------
// This Flutter application serves as a digital companion for the MG TC Owners 
// Club of Western Australia. It provides quick access to key club resources:
//   • Impromptu Runs – spontaneous drives and meetups
//   • Calendar – scheduled events, rallies, and meetings
//   • Membership – join or renew club membership
//
// Features:
//   • Material 3 design with custom color scheme
//   • Responsive layout using SliverAppBar and CustomScrollView
//   • External URL launching with graceful fallback handling
//   • Clean, modular widget structure for maintainability
//
// Author: Daehwan Yeo
// Last Updated: August 2025
// ---------------------------------------------------------------------------

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MgtcApp extends StatelessWidget {
  const MgtcApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MGTC Club',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF7A1C1C)),
        useMaterial3: true,
      ),
      home: const _HomeScreen(),
    );
  }
}

class _HomeScreen extends StatelessWidget {
  const _HomeScreen();

  static final Uri _impromptuUri =
      Uri.parse('https://www.mgtcownersclub.com/impromptu-runs');
  static final Uri _calendarUri =
      Uri.parse('https://www.mgtcownersclub.com/calendar');
  static final Uri _membershipUri =
      Uri.parse('https://www.mgtcownersclub.com/about');
  static final Uri _carRegisterUri =
      Uri.parse('https://transport.wa.gov.au/licensing/vehicle/license-vehicle');

  Future<void> _openUri(BuildContext context, Uri uri) async {
    final mode = kIsWeb ? LaunchMode.platformDefault : LaunchMode.externalApplication;
    final ok = await launchUrl(uri, mode: mode);
    if (!ok && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Couldn't open the page.")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    const spacing = 16.0;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 220,
            backgroundColor: Theme.of(context).colorScheme.surface,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              titlePadding: const EdgeInsets.only(left: 16, bottom: 16, right: 16),
              title: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MG TC Owners Club',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.w800, color: Colors.white),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Perth: Western Australia',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.white70),
                  ),
                ],
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/images/blueprint.png',
                    fit: BoxFit.cover,
                  ),
                  // Soft gradient overlay for text legibility
                  DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.25),
                          Colors.black.withOpacity(0.05),
                          Colors.black.withOpacity(0.45),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(spacing),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                _LinkTile(
                  title: 'Impromptu Runs',
                  subtitle: 'Log you run for WA DoT compliance',
                  icon: Icons.directions_car_filled,
                  onTap: () => _openUri(context, _impromptuUri),
                ),
                const SizedBox(height: spacing),
                _LinkTile(
                  title: 'Calendar',
                  subtitle: 'Club meetings and events',
                  icon: Icons.calendar_month,
                  onTap: () => _openUri(context, _calendarUri),
                ),
                const SizedBox(height: spacing),
                _LinkTile(
                  title: 'Membership',
                  subtitle: 'About the club membership',
                  icon: Icons.card_membership,
                  onTap: () => _openUri(context, _membershipUri),
                ),
                const SizedBox(height: spacing),
                _LinkTile(
                  title: 'Car Registration',
                  subtitle: 'Vehicle license information',
                  icon: Icons.app_registration,
                  onTap: () => _openUri(context, _carRegisterUri),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class _LinkTile extends StatelessWidget {
  const _LinkTile({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 120,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Row(
            children: [
              Icon(icon, size: 48, color: cs.primary),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.w600)),
                    const SizedBox(height: 6),
                    Text(subtitle,
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right, size: 28),
            ],
          ),
        ),
      ),
    );
  }
}
