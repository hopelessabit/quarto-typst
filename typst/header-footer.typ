// ============================================================
// Header and Footer System
// File: typst/header-footer.typ
//
// Purpose:
// - Define reusable header and footer.
// - Keep page numbering logic in one place.
// ============================================================

#import "theme.typ": muted


// ------------------------------------------------------------
// 1. Default page setup with header/footer
//
// Important:
// `counter(page).display()` requires `context`.
// ------------------------------------------------------------

#let setup-header-footer() = {
  set page(
    header: [
      #text(size: 9pt, fill: muted)[Tài liệu học tập]
      #h(1fr)
      #text(size: 9pt, fill: muted)[GoodMath]
    ],

    footer: context [
      #h(1fr)
      #text(size: 9pt, fill: muted)[Trang #counter(page).display()]
    ],
  )
}
