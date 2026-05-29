// ============================================================
// Layout System
// File: typst/layout.typ
//
// Purpose:
// - Define page setup.
// - Define reusable spacing helpers.
// ============================================================


// ------------------------------------------------------------
// 1. Page setup
//
// Header/footer will be configured in header-footer.typ.
// This file focuses only on the physical page.
// ------------------------------------------------------------

#let setup-page() = {
  set page(
    paper: "a4",
    margin: (
      x: 1.5cm,
      y: 1.5cm,
    ),
  )
}


// ------------------------------------------------------------
// 2. Spacing helpers
// ------------------------------------------------------------

#let small-gap() = v(0.35em)
#let medium-gap() = v(0.65em)
#let large-gap() = v(1em)
