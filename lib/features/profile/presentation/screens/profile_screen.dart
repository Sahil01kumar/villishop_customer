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
import '../../../../core/widgets/brand_logo.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    // Redirect if not authenticated on mount
    _checkAuth();
  }

  void _checkAuth() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final authState = ref.read(authProvider);
      authState.maybeWhen(
        unauthenticated: () => context.go(AppRoutes.login),
        orElse: () {},
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Listen for auth changes and redirect if logged out
    ref.listen(authProvider, (previous, next) {
      next.maybeWhen(
        unauthenticated: () {
          if (mounted) context.go(AppRoutes.login);
        },
        orElse: () {},
      );
    });

    final authState = ref.watch(authProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      body: authState.when(
        initial: () => const Center(child: LoadingWidget()),
        loading: () => const Center(child: LoadingWidget()),
        unauthenticated: () => const _UnauthenticatedProfileView(),
        error: (message) => _ErrorProfileView(message: message),
        authenticated: (user) => _AuthenticatedProfileView(user: user),
      ),
    );
  }
}

class _AuthenticatedProfileView extends ConsumerWidget {
  final UserModel user;
  const _AuthenticatedProfileView({required this.user});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          pinned: true,
          centerTitle: false,
          title: const Text('My Account',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontSize: 22,
                  letterSpacing: -0.5)),
          actions: [
            IconButton(
              icon: const Icon(Icons.support_agent_rounded, color: Colors.black),
              onPressed: () => context.push(AppRoutes.supportHub),
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              _buildProfileHeader(context, user),
              _buildStatsBar(user),
              if (user.membership.type == MembershipType.normal)
                _buildPremiumUpsell(context),
              _buildLoyaltyCard(context),
              const Divider(thickness: 8, color: Color(0xFFF8F9FB)),
            ],
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              _buildSectionTitle('Ordering'),
              _menuItem(Icons.receipt_long_outlined, 'Order History', () {
                ref.read(navigationIndexProvider.notifier).state = 3;
                context.go(AppRoutes.orders);
              }),
              _menuItem(Icons.favorite_border_rounded, 'My Wishlist',
                  () => context.push(AppRoutes.wishlist)),
              _menuItem(Icons.location_on_outlined, 'Saved Addresses',
                  () => context.push(AppRoutes.addresses)),
              const Divider(thickness: 8, color: Color(0xFFF8F9FB)),
              _buildSectionTitle('Payments & Rewards'),
              _menuItem(Icons.account_balance_wallet_outlined, 'Villi Wallet',
                  () => context.push(AppRoutes.wallet)),
              _menuItem(Icons.card_giftcard_outlined, 'Refer & Earn',
                  () => _showReferralDialog(context)),
              _menuItem(Icons.stars_rounded, 'Loyalty Rewards', () {}),
              _menuItem(Icons.payment_outlined, 'Saved Payments', () {}),
              const Divider(thickness: 8, color: Color(0xFFF8F9FB)),
              _buildSectionTitle('Personalization'),
              _menuItem(Icons.person_outline, 'Edit Profile',
                  () => context.push(AppRoutes.register)),
              _menuItem(Icons.notifications_active_outlined, 'Notifications',
                  () => context.push(AppRoutes.notifications)),
              _menuItem(Icons.language_rounded, 'App Language',
                  () => _showLanguageSelector(context)),
              const Divider(thickness: 8, color: Color(0xFFF8F9FB)),
              _buildSectionTitle('Support'),
              _menuItem(Icons.help_outline, 'Help & Support',
                  () => context.push(AppRoutes.supportHub)),
              _menuItem(Icons.policy_outlined, 'Terms & Privacy', () {}),
              _menuItem(Icons.info_outline, 'About VilliShop',
                  () => context.push(AppRoutes.about)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () => _showLogoutDialog(context, ref),
                      child: const Text('LOGOUT',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1.5,
                              fontSize: 14)),
                    ),
                    const SizedBox(height: 8),
                    Text('VilliShop Customer v1.0.0',
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 11,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const SizedBox(height: 40),
            ]),
          ),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          AppSpacing.l, AppSpacing.l, AppSpacing.l, AppSpacing.s),
      child: Text(title.toUpperCase(),
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 11,
              color: Colors.grey[500],
              letterSpacing: 1.2)),
    );
  }

  Widget _buildProfileHeader(BuildContext context, UserModel user) {
    final userProfilePic = user.profilePicture;
    final bool hasProfilePic = userProfilePic != null && userProfilePic.isNotEmpty;

    return Container(
      padding: const EdgeInsets.all(AppSpacing.l),
      child: Row(
        children: [
          Hero(
            tag: 'profile-pic',
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: AppColors.primary.withAlpha(50), width: 2),
              ),
              child: CircleAvatar(
                radius: 38,
                backgroundColor: AppColors.primary.withAlpha(20),
                backgroundImage: hasProfilePic
                    ? NetworkImage(userProfilePic)
                    : null,
                child: !hasProfilePic
                    ? const BrandLogo(height: 40, width: 40)
                    : null,
              ),
            ),
          ),
          AppSpacing.hM,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name ?? 'Villi Customer',
                  style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 22,
                      letterSpacing: -0.5),
                ),
                const SizedBox(height: 2),
                Text(
                  user.phoneNumber ?? user.email ?? 'Add mobile number',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                if (user.membership.type == MembershipType.premium)
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Color(0xFFFFD700), Color(0xFFFFA500)]),
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
            onPressed: () => context.push(AppRoutes.register),
            icon: const Icon(Icons.arrow_forward_ios_rounded,
                size: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildStatsBar(UserModel user) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.l),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F9FB),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _statItem('Wallet', '₹${user.wallet.balance.toStringAsFixed(0)}',
              Colors.blue),
          _verticalDivider(),
          _statItem('Points', '${user.rewards.points}', Colors.orange),
          _verticalDivider(),
          _statItem('Saved', '₹240', Colors.green),
        ],
      ),
    );
  }

  Widget _verticalDivider() {
    return Container(height: 30, width: 1, color: Colors.grey.withAlpha(30));
  }

  Widget _statItem(String label, String value, Color color) {
    return Column(
      children: [
        Text(value,
            style: TextStyle(
                fontWeight: FontWeight.w900, fontSize: 18, color: color)),
        const SizedBox(height: 4),
        Text(label.toUpperCase(),
            style: TextStyle(
                color: Colors.grey[600],
                fontSize: 10,
                fontWeight: FontWeight.w900,
                letterSpacing: 0.5)),
      ],
    );
  }

  Widget _menuItem(IconData icon, String title, VoidCallback onTap,
      {String? trailingText}) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: AppSpacing.l),
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Colors.black87, size: 20),
      ),
      title: Text(title,
          style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 15)),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (trailingText != null)
            Text(trailingText,
                style: const TextStyle(
                    color: AppColors.primary,
                    fontSize: 13,
                    fontWeight: FontWeight.w900)),
          const SizedBox(width: 8),
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        title: const Text('Logout?',
            style: TextStyle(fontWeight: FontWeight.w900)),
        content: const Text(
            'Are you sure you want to exit from VilliShop? We will miss you!'),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('CANCEL',
                  style: TextStyle(fontWeight: FontWeight.bold))),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              ref.read(navigationIndexProvider.notifier).state = 0;
              ref.read(authProvider.notifier).signOut();
            },
            child: const Text('LOGOUT',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w900)),
          ),
        ],
      ),
    );
  }

  void _showLanguageSelector(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        padding: const EdgeInsets.all(AppSpacing.l),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Select Language',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18)),
            const SizedBox(height: 24),
            _languageTile('English', true),
            _languageTile('Hindi (हिंदी)', false),
            _languageTile('Rajasthani', false),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _languageTile(String label, bool isSelected) {
    return ListTile(
      title: Text(label,
          style: TextStyle(
              fontWeight: isSelected ? FontWeight.w900 : FontWeight.w600)),
      trailing: isSelected
          ? const Icon(Icons.check_circle_rounded, color: AppColors.primary)
          : null,
      onTap: () {},
    );
  }

  Widget _buildPremiumUpsell(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: AppSpacing.l, vertical: AppSpacing.m),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF0F172A), Color(0xFF1E293B)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withAlpha(20),
              blurRadius: 15,
              offset: const Offset(0, 8))
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Join Villi Premium',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 18),
                ),
                const SizedBox(height: 6),
                Text(
                  'Unlimited FREE delivery and extra village fresh discounts.',
                  style: TextStyle(
                      color: Colors.white.withAlpha(180),
                      fontSize: 12,
                      height: 1.4,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFFD700),
              foregroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              elevation: 0,
            ),
            child: const Text('JOIN',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 13,
                    letterSpacing: 0.5)),
          ),
        ],
      ),
    );
  }

  Widget _buildLoyaltyCard(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(
          AppSpacing.l, 0, AppSpacing.l, AppSpacing.m),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.indigo.shade50,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.indigo.withAlpha(10)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              color: Colors.indigo,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.auto_awesome_rounded,
                color: Colors.white, size: 24),
          ),
          const SizedBox(width: 16),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'VilliShop Rewards',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                      color: Colors.indigo),
                ),
                Text(
                  'Redeem points for fresh surprises from your village.',
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 11,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showReferralDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
        contentPadding: EdgeInsets.zero,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: AppColors.primary.withAlpha(10),
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(28)),
              ),
              child: const Center(
                child: Icon(Icons.card_giftcard_rounded,
                    size: 72, color: AppColors.primary),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const Text('Refer & Earn ₹100',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
                          letterSpacing: -0.5)),
                  const SizedBox(height: 12),
                  Text(
                    'Invite friends to VilliShop and get ₹100 when they place their first order!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                        height: 1.5,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 32),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 16),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.grey.withAlpha(30)),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('VILLI500',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                letterSpacing: 1)),
                        Icon(Icons.copy_rounded,
                            size: 22, color: AppColors.primary),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                      ),
                      child: const Text('SHARE INVITE LINK',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, letterSpacing: 0.5)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _UnauthenticatedProfileView extends StatelessWidget {
  const _UnauthenticatedProfileView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.l),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.account_circle_outlined,
              size: 80, color: Colors.grey),
          const SizedBox(height: 24),
          const Text(
            'Sign in to see your profile',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 12),
          const Text(
            'Track orders, save addresses and manage your account in one place.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey, height: 1.5),
          ),
          const SizedBox(height: 40),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => context.go(AppRoutes.login),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 18),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
              ),
              child: const Text('LOGIN / SIGNUP',
                  style: TextStyle(fontWeight: FontWeight.w900)),
            ),
          ),
        ],
      ),
    );
  }
}

class _ErrorProfileView extends ConsumerWidget {
  final String message;
  const _ErrorProfileView({required this.message});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 48, color: Colors.red),
          const SizedBox(height: 16),
          Text(message),
          TextButton(
            onPressed: () => ref.read(authProvider.notifier).signOut(),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
