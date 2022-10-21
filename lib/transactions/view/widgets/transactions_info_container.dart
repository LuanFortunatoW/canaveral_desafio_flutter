// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:nebraska/nebraska.dart';

class TransactionsInfoContainer extends StatelessWidget {
  const TransactionsInfoContainer({
    Key? key,
    required this.transactionsLenght,
  }) : super(key: key);

  final int transactionsLenght;

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
          _InfoText(transactionsLenght: transactionsLenght),
        ],
      ),
    );
  }
}

class _InfoText extends StatelessWidget {
  const _InfoText({
    Key? key,
    required this.transactionsLenght,
  }) : super(key: key);

  final int transactionsLenght;

  @override
  Widget build(BuildContext context) {
    final NebraskaThemeData theme =
        NebraskaTheme.of(context).copyWith(ContextTheme.brand);

    return Flexible(
      child: RichText(
        text: TextSpan(
          text: "São ",
          style: theme.typography.p5,
          children: [
            TextSpan(
              text: "$transactionsLenght movimentações",
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
