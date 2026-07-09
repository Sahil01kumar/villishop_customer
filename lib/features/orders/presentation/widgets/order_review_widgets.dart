import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../location/data/models/address_model.dart';
import '../../../delivery/data/models/delivery_slot_model.dart';
import '../../../cart/data/models/shop_cart_model.dart';
import '../../../cart/data/models/cart_summary_model.dart';
import '../../../cart/presentation/widgets/quantity_stepper.dart';

class AddressReviewCard extends StatelessWidget {
  final AddressModel? address;
  final VoidCallback onTap;

  const AddressReviewCard({super.key, this.address, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppSpacing.m),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Delivery Address', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
              TextButton(
                onPressed: onTap,
                child: const Text('CHANGE', style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.w900, fontSize: 12)),
              ),
            ],
          ),
          if (address != null) ...[
            Row(
              children: [
                const Icon(Icons.location_on_rounded, color: AppColors.primary, size: 20),
                const SizedBox(width: 8),
                Text(address!.label, style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 14)),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              '${address!.receiverName ?? 'Customer'} • ${address!.phoneNumber ?? ''}',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
            Text(
              address!.fullAddress,
              style: TextStyle(color: Colors.grey[600], fontSize: 12),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ] else
            const Text('No address selected', style: TextStyle(color: Colors.red)),
        ],
      ),
    );
  }
}

class SlotReviewCard extends StatelessWidget {
  final DeliverySlotModel? slot;

  const SlotReviewCard({super.key, this.slot});

  @override
  Widget build(BuildContext context) {
    if (slot == null) return const SizedBox.shrink();

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.green.withAlpha(15), shape: BoxShape.circle),
            child: const Icon(Icons.timer_outlined, color: Colors.green, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Delivery Slot', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 14, color: Colors.grey)),
                Text(
                  slot!.label ?? 'Instant Delivery',
                  style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
                ),
                Text(
                  'Estimated Arrival in ${slot!.estimatedMinutes} mins',
                  style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ShopProductsReviewSection extends StatelessWidget {
  final ShopCartModel shopCart;

  const ShopProductsReviewSection({super.key, required this.shopCart});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(AppSpacing.m, AppSpacing.m, AppSpacing.m, 0),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.storefront_rounded, color: AppColors.primary, size: 18),
              const SizedBox(width: 8),
              Text(shopCart.shopName, style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 15)),
            ],
          ),
          const Divider(height: 24),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: shopCart.items.length,
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemBuilder: (context, index) {
              final item = shopCart.items[index];
              final product = item.product;
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      width: 60, height: 60,
                      color: Colors.grey[100],
                      child: product.imageUrl.isNotEmpty 
                          ? Image.network(product.imageUrl, fit: BoxFit.cover)
                          : const Icon(Icons.image_not_supported_outlined, color: Colors.grey),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(product.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                        Text(product.packaging.variant ?? '${product.packaging.weight} ${product.packaging.unit}', style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            Text('₹${product.pricing.sellingPrice.toStringAsFixed(0)}', style: const TextStyle(fontWeight: FontWeight.w900)),
                            const SizedBox(width: 6),
                            Text('₹${product.pricing.mrp.toStringAsFixed(0)}', 
                                style: const TextStyle(decoration: TextDecoration.lineThrough, color: Colors.grey, fontSize: 11)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  QuantityStepper(product: product, height: 36),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class DeliveryInfoCard extends StatelessWidget {
  final DeliverySlotModel? slot;
  final int totalItems;

  const DeliveryInfoCard({super.key, this.slot, required this.totalItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppSpacing.m),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          _infoRow(Icons.shopping_bag_outlined, 'Items in Order', '$totalItems items'),
          const Divider(height: 24),
          _infoRow(Icons.delivery_dining_rounded, 'Delivery Partner', 'Assigned on checkout'),
          const Divider(height: 24),
          _infoRow(Icons.straighten_rounded, 'Store Distance', '2.4 km'),
          const Divider(height: 24),
          _infoRow(Icons.monitor_weight_outlined, 'Total Weight', '1.2 kg'),
        ],
      ),
    );
  }

  Widget _infoRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey[600], size: 18),
        const SizedBox(width: 12),
        Text(label, style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w600, fontSize: 13)),
        const Spacer(),
        Text(value, style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 13)),
      ],
    );
  }
}

class SpecialInstructionsSection extends StatelessWidget {
  final List<String> selectedInstructions;
  final Function(String) onToggle;
  final Function(String) onOtherChanged;
  final String? otherText;

  const SpecialInstructionsSection({
    super.key, 
    required this.selectedInstructions, 
    required this.onToggle,
    required this.onOtherChanged,
    this.otherText,
  });

  @override
  Widget build(BuildContext context) {
    final instructions = ['Leave at Door', 'Ring Bell', 'Call Before Delivery', 'Do Not Call'];
    
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSpacing.m),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Special Instructions', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: instructions.map((ins) {
              final isSelected = selectedInstructions.contains(ins);
              return FilterChip(
                label: Text(ins),
                selected: isSelected,
                onSelected: (_) => onToggle(ins),
                selectedColor: AppColors.primary.withAlpha(20),
                labelStyle: TextStyle(
                  fontSize: 12, 
                  fontWeight: isSelected ? FontWeight.w900 : FontWeight.w600,
                  color: isSelected ? AppColors.primary : Colors.black87,
                ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12), side: BorderSide(color: isSelected ? AppColors.primary : Colors.grey[300]!)),
                showCheckmark: false,
              );
            }).toList(),
          ),
          const SizedBox(height: 16),
          TextField(
            onChanged: onOtherChanged,
            decoration: InputDecoration(
              hintText: 'Any other instructions? (Max 250 chars)',
              hintStyle: TextStyle(color: Colors.grey[400], fontSize: 13),
              fillColor: Colors.grey[50],
              filled: true,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
            ),
            maxLength: 250,
            maxLines: 2,
            style: const TextStyle(fontSize: 13),
          ),
        ],
      ),
    );
  }
}

class PriceBreakdownCard extends StatelessWidget {
  final CartSummaryModel summary;

  const PriceBreakdownCard({super.key, required this.summary});

  @override
  Widget build(BuildContext context) {
    final double savings = summary.totalDiscount + summary.couponDiscount;

    return Container(
      margin: const EdgeInsets.all(AppSpacing.m),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Bill Summary', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16)),
          const SizedBox(height: 16),
          _summaryRow('Item Total (MRP)', summary.subTotal),
          if (summary.totalDiscount > 0)
            _summaryRow('Product Discount', -summary.totalDiscount, isGreen: true),
          if (summary.couponDiscount > 0)
            _summaryRow('Coupon Discount', -summary.couponDiscount, isGreen: true),
          
          _summaryRow('Delivery Charge', summary.deliveryCharge, isFree: summary.deliveryCharge == 0),
          _summaryRow('Platform Fee', 2.0),
          _summaryRow('Handling & Packing', summary.packagingCharge),
          _summaryRow('Taxes & GST', summary.totalTax),
          
          const Divider(height: 32),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Grand Total', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18)),
              Text('₹${(summary.grandTotal + 2.0).toStringAsFixed(2)}', style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 18)),
            ],
          ),
          
          if (savings > 0)
            Container(
              margin: const EdgeInsets.only(top: 16),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: Colors.green.withAlpha(15), borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  const Icon(Icons.celebration_rounded, color: Colors.green, size: 20),
                  const SizedBox(width: 8),
                  Text(
                    'You saved ₹${savings.toStringAsFixed(0)} today!',
                    style: const TextStyle(color: Colors.green, fontWeight: FontWeight.w900, fontSize: 13),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _summaryRow(String label, double value, {bool isGreen = false, bool isFree = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w500, fontSize: 14)),
          if (isFree)
            const Text('FREE', style: TextStyle(color: Colors.green, fontWeight: FontWeight.w900, fontSize: 14))
          else
            Text(
              '${value < 0 ? "-" : ""}₹${value.abs().toStringAsFixed(2)}',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 14,
                color: isGreen ? Colors.green : Colors.black,
              ),
            ),
        ],
      ),
    );
  }
}
