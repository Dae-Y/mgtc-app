import 'package:go_router/go_router.dart';
import '../../features/events/presentation/pages/events_page.dart';


GoRouter buildRouter() => GoRouter(
  initialLocation: '/cars',
  routes: [
    GoRoute(path: '/events', builder: (_, __) => const EventsPage()),
  ],
);
