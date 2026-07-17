import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:villishop_customer/core/constants/app_colors.dart';
import 'package:villishop_customer/core/constants/app_dimensions.dart';
import 'package:villishop_customer/features/authentication/providers/auth_provider.dart';
import 'package:villishop_customer/features/authentication/data/models/user_model.dart';
import 'package:villishop_customer/core/router/app_router.dart';
import 'package:villishop_customer/core/widgets/loading_widget.dart';
import 'package:villishop_customer/features/main/providers/navigation_provider.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);

    return authState.maybeWhen(
      authenticated: (user) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          scrolledUnderElevation: 0,
          title: const Text('My Account',
              style:
                  TextStyle(fontWeight: FontWeight.w900, color: Colors.black)),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings_outlined, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              _buildProfileHeader(context, user),
              _buildStatsBar(user),
              const Divider(thickness: 8, color: Color(0xFFF3F4F6)),
              _buildSection(context, 'Ordering', [
                _menuItem(Icons.receipt_long_outlined, 'Order History', () {
                  ref.read(navigationIndexProvider.notifier).state = 3;
                }),
                _menuItem(Icons.favorite_border_rounded, 'My Wishlist',
                    () => context.push(AppRoutes.wishlist)),
                _menuItem(Icons.location_on_outlined, 'Saved Addresses',
                    () => context.push(AppRoutes.addresses)),
              ]),
              const Divider(thickness: 8, color: Color(0xFFF3F4F6)),
              _buildSection(context, 'Payments & Rewards', [
                _menuItem(Icons.account_balance_wallet_outlined, 'Villi Wallet',
                    () => context.push(AppRoutes.wallet)),
                _menuItem(Icons.card_giftcard_outlined, 'Refer & Earn', () {}),
                _menuItem(Icons.payment_outlined, 'Saved Payments', () {}),
              ]),
              const Divider(thickness: 8, color: Color(0xFFF3F4F6)),
              _buildSection(context, 'Personalization', [
                _menuItem(Icons.person_outline, 'Edit Profile',
                    () => context.push(AppRoutes.onboarding)),
                _menuItem(Icons.notifications_active_outlined, 'Notifications',
                    () => context.push(AppRoutes.notifications)),
                _menuItem(Icons.settings_outlined, 'Settings',
                    () => context.push(AppRoutes.supportHub)), // Support Hub for now
              ]),
              const Divider(thickness: 8, color: Color(0xFFF3F4F6)),
              _buildSection(context, 'Support', [
                _menuItem(Icons.help_outline, 'Help & Support',
                    () => context.push(AppRoutes.supportHub)),
                _menuItem(Icons.policy_outlined, 'Terms & Privacy', () {}),
                _menuItem(Icons.info_outline, 'About VilliShop', () {}),
              ]),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: TextButton(
                  onPressed: () => _showLogoutDialog(context, ref),
                  child: const Text('LOGOUT',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1.2)),
                ),
              ),
              const Text('VilliShop Customer v1.0.0',
                  style: TextStyle(color: Colors.grey, fontSize: 12)),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
      orElse: () => const Scaffold(body: LoadingWidget()),
    );
  }

  Widget _buildProfileHeader(BuildContext context, UserModel user) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.m),
      child: Row(
        children: [
          Hero(
            tag: 'profile-pic',
            child: CircleAvatar(
              radius: 40,
              backgroundColor: AppColors.primary.withAlpha(20),
              backgroundImage: user.profilePicture != null
                  ? NetworkImage(user.profilePicture!)
                  : null,
              child: user.profilePicture == null
                  ? const Icon(Icons.person, size: 40, color: AppColors.primary)
                  : null,
            ),
          ),
          AppSpacing.hM,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name ?? 'Guest User',
                  style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 22,
                      letterSpacing: -0.5),
                ),
                Text(
                  user.phoneNumber ?? user.email ?? 'Add mobile number',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                if (user.membership.type == MembershipType.premium)
                  Container(
                    margin: const EdgeInsets.only(top: 6),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                        color: const Color(0xFFFFD700),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Text('PREMIUM MEMBER',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w900,
                            color: Colors.black)),
                  ),
              ],
            ),
          ),
          IconButton(
            onPressed: () => context.push(AppRoutes.onboarding),
            icon: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildStatsBar(UserModel user) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _statItem('Wallet', '₹${user.wallet.balance.toStringAsFixed(0)}',
              Colors.blue),
          _statItem('Points', '${user.rewards.points}', Colors.orange),
          _statItem('Saved', '₹240', Colors.green),
        ],
      ),
    );
  }

  Widget _statItem(String label, String value, Color color) {
    return Column(
      children: [
        Text(value,
            style: TextStyle(
                fontWeight: FontWeight.w900, fontSize: 18, color: color)),
        const SizedBox(height: 2),
        Text(label,
            style: const TextStyle(
                color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildSection(BuildContext context, String title, List<Widget> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(
              AppSpacing.m, AppSpacing.m, AppSpacing.m, AppSpacing.s),
          child: Text(title,
              style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 13,
                  color: Colors.grey,
                  letterSpacing: 0.5)),
        ),
        ...items,
      ],
    );
  }

  Widget _menuItem(IconData icon, String title, VoidCallback onTap,
      {String? trailingText}) {
    return ListTile(
      leading: Icon(icon, color: Colors.black87, size: 24),
      title: Text(title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (trailingText != null)
            Text(trailingText,
                style: const TextStyle(
                    color: AppColors.primary,
                    fontSize: 13,
                    fontWeight: FontWeight.bold)),
          const SizedBox(width: 4),
          const Icon(Icons.arrow_forward_ios_rounded,
              size: 12, color: Colors.grey),
        ],
      ),
      onTap: onTap,
    );
  }

  void _showLogoutDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text('Logout?',
            style: TextStyle(fontWeight: FontWeight.w900)),
        content: const Text('Are you sure you want to exit from VilliShop?'),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('CANCEL')),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              ref.read(authProvider.notifier).signOut();
            },
            child: const Text('LOGOUT',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
