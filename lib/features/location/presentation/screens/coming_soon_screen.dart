import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';


import '../../../../core/constants/app_dimensions.dart';

import '../../../../core/widgets/primary_button.dart';
import '../../providers/location_provider.dart';
import '../../providers/zone_provider.dart';
import '../widgets/location_selector_sheet.dart';
import '../../data/models/zone_model.dart';
import '../../../../core/widgets/brand_logo.dart';

class ComingSoonScreen extends ConsumerWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationProvider);
    final zonesAsync = ref.watch(allZonesProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFF0B5D1E).withAlpha(20),
              Colors.white,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(AppSpacing.l),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      const BrandLogo(height: 120, width: 120)
                          .animate()
                          .scale(duration: 600.ms, curve: Curves.elasticOut),
                      const SizedBox(height: 40),
                      const Text(
                        'VilliShop is Coming Soon',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          letterSpacing: -1,
                          color: Color(0xFF0B5D1E),
                        ),
                      ).animate().fadeIn().slideY(begin: 0.2, end: 0),
                      const SizedBox(height: 12),
                      Text(
                        "We're currently not serving in this village. Join the priority waitlist or partner with us to bring VilliShop to your area!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          height: 1.4,
                        ),
                      )
                          .animate()
                          .fadeIn(delay: 200.ms)
                          .slideY(begin: 0.2, end: 0),
                      const SizedBox(height: 40),
                      _buildLocationCard(context, locationState),
                      const SizedBox(height: 32),
                      _buildPartnerOptions(context),
                      const SizedBox(height: 32),
                      _buildWaitlistForm(context, ref),
                      const SizedBox(height: 40),
                      zonesAsync.when(
                        data: (zones) => _buildZonesInfo(zones),
                        loading: () => const CircularProgressIndicator(),
                        error: (_, __) => const SizedBox.shrink(),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLocationCard(BuildContext context, LocationState state) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(5),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
        border: Border.all(color: Colors.grey.withAlpha(20)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.orange.withAlpha(15),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.location_off_rounded,
                    color: Colors.orange, size: 20),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Unserviceable Village',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 14,
                          color: Colors.orange),
                    ),
                    Text(
                      state.selectedAddress?.fullAddress ??
                          'Detecting location...',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () => _showLocationSelector(context),
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(double.infinity, 48),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
            child: const Text('CHANGE LOCATION',
                style: TextStyle(
                    fontWeight: FontWeight.w900, color: Color(0xFF0B5D1E))),
          ),
        ],
      ),
    );
  }

  Widget _buildPartnerOptions(BuildContext context) {
    return Column(
      children: [
        _partnerTile(
          icon: Icons.storefront_rounded,
          title: 'Become Shop Partner',
          onTap: () {},
        ),
        const SizedBox(height: 12),
        _partnerTile(
          icon: Icons.delivery_dining_rounded,
          title: 'Become Delivery Partner',
          onTap: () {},
        ),
      ],
    );
  }

  Widget _partnerTile({required IconData icon, required String title, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF0B5D1E).withAlpha(30)),
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xFF0B5D1E).withAlpha(5),
        ),
        child: Row(
          children: [
            Icon(icon, color: const Color(0xFF0B5D1E)),
            const SizedBox(width: 16),
            Expanded(child: Text(title, style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 15))),
            const Icon(Icons.chevron_right_rounded, color: Colors.grey),
          ],
        ),
      ),
    );
  }

  Widget _buildWaitlistForm(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Join Priority Waitlist',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w900, fontSize: 18),
          ),
          const SizedBox(height: 8),
          Text(
            'Get ₹100 VilliCash on launch in your area.',
            style: TextStyle(
                color: Colors.white.withAlpha(150),
                fontSize: 13,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 24),
          _buildTextField('Enter Name'),
          const SizedBox(height: 12),
          _buildTextField('Enter Phone Number',
              keyboardType: TextInputType.phone),
          const SizedBox(height: 24),
          PrimaryButton(
            text: 'NOTIFY ME ON LAUNCH',
            onPressed: () => _showSuccessDialog(context),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String hint, {TextInputType? keyboardType}) {
    return TextField(
      keyboardType: keyboardType,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white.withAlpha(80)),
        fillColor: Colors.white.withAlpha(30),
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none),
      ),
    );
  }

  Widget _buildZonesInfo(List<ZoneModel> zones) {
    final launchingSoon =
        zones.where((z) => z.status == ZoneStatus.launchingSoon).toList();

    if (launchingSoon.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Launching Near You',
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
        ),
        const SizedBox(height: 16),
        ...launchingSoon.map((zone) => Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey.withAlpha(20)),
              ),
              child: Row(
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        color: const Color(0xFF0B5D1E).withAlpha(10),
                        shape: BoxShape.circle),
                    child: const Icon(Icons.bolt_rounded,
                        color: Color(0xFF0B5D1E)),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(zone.name,
                            style: const TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 16)),
                        Text('By ${zone.estimatedLaunchDate}',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                        color: Colors.orange.withAlpha(15),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Text('SOON',
                        style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.w900,
                            fontSize: 10)),
                  ),
                ],
              ),
            )),
      ],
    );
  }

  void _showLocationSelector(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const LocationSelectorSheet(),
    );
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.check_circle_rounded,
                color: Colors.green, size: 64),
            const SizedBox(height: 24),
            const Text('You\'re on the list!',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
            const SizedBox(height: 12),
            Text(
              'Thank you for your interest. We will notify you as soon as we start delivering in your area.',
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.grey[600], fontSize: 14, height: 1.5),
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                child: const Text('DONE',
                    style: TextStyle(fontWeight: FontWeight.w900)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
