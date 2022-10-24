// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:nebraska/nebraska.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NebraskaThemeData theme =
        NebraskaTheme.of(context).copyWith(ContextTheme.brand);

    return Container(
      padding: EdgeInsets.only(
        top: theme.sizes.spacing.x350,
        bottom: theme.sizes.spacing.x700,
        right: theme.sizes.spacing.x350,
        left: theme.sizes.spacing.x350,
      ),
      color: theme.colors.context.primary,
      child: const SectionTitle(
        title: _TitleTexts(),
        detailTitle: _IconDetail(),
      ),
    );
  }
}

class _TitleTexts extends StatelessWidget {
  const _TitleTexts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NebraskaThemeData theme =
        NebraskaTheme.of(context).copyWith(ContextTheme.brand);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Mobile',
          style: theme.typography.h4.copyWith(
            color: theme.colors.context.overPrimary,
          ),
        ),
        Text(
          'chalenge accelerate',
          style: theme.typography.h4.copyWith(
            color: theme.colors.context.overPrimary,
          ),
        ),
      ],
    );
  }
}

class _IconDetail extends StatelessWidget {
  const _IconDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NebraskaThemeData theme =
        NebraskaTheme.of(context).copyWith(ContextTheme.brand);

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: theme.colors.core.background.primary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(theme.sizes.radius.x400),
          topRight: Radius.circular(theme.sizes.radius.x400),
          bottomRight: Radius.circular(theme.sizes.radius.x400),
        ),
      ),
      child: Transform.rotate(
        angle: 15,
        child: NebraskaSvgIcon(
          asset: theme.icon.ba0040,
          color: theme.colors.core.asset.others,
        ),
      ),
    );
  }
}
