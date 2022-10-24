// ignore_for_file: depend_on_referenced_packages
import 'package:api_example/transactions/providers/list_all_transactions_provider.dart';
import 'package:flutter/material.dart';
import 'package:nebraska/nebraska.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TransactionsInfoContainer extends StatelessWidget {
  const TransactionsInfoContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NebraskaThemeData theme =
        NebraskaTheme.of(context).copyWith(ContextTheme.brand);

    return Container(
      decoration: BoxDecoration(
        color: theme.colors.core.background.primary,
        borderRadius: BorderRadius.circular(theme.sizes.radius.x300),
        boxShadow: [
          BoxShadow(
            blurRadius: theme.sizes.radius.x100,
            offset: const Offset(0, 2),
            color: theme.colors.core.divider.opacity,
          ),
        ],
      ),
      margin: EdgeInsets.only(
        right: theme.sizes.spacing.x500,
        left: theme.sizes.spacing.x500,
        top: theme.sizes.spacing.x1400,
        bottom: theme.sizes.spacing.x300,
      ),
      width: double.infinity,
      height: 64,
      padding: EdgeInsets.symmetric(vertical: theme.sizes.spacing.x350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const _AvatarIcon(),
          VerticalDivider(
            thickness: 1,
            color: theme.colors.core.divider.opacity,
          ),
          const _InfoText(),
        ],
      ),
    );
  }
}

class _InfoText extends ConsumerWidget {
  const _InfoText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final NebraskaThemeData theme =
        NebraskaTheme.of(context).copyWith(ContextTheme.brand);
    final int length = ref.watch(listAllTransactionsProvider).value!.length;

    return Flexible(
      child: RichText(
        text: TextSpan(
          text: "São ",
          style: theme.typography.p5,
          children: [
            TextSpan(
              text: "$length movimentações",
              style: theme.typography.p5.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
                text: "\ndisponíveis para visualização",
                style: theme.typography.p5)
          ],
        ),
      ),
    );
  }
}

class _AvatarIcon extends StatelessWidget {
  const _AvatarIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NebraskaThemeData theme =
        NebraskaTheme.of(context).copyWith(ContextTheme.brand);

    return InitialAvatarIcon(
      icon: NebraskaSvgIcon(
        asset: theme.icon.ba0040,
      ),
      size: InitialAvatarSize.large,
      backgroundColor: theme.colors.core.background.primary,
    );
  }
}
