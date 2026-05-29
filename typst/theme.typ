// ============================================================
// Theme System
// File: typst/theme.typ
//
// Purpose:
// - Define global colors.
// - Define text style.
// - Define paragraph style.
// - Keep visual identity in one place.
// ============================================================


// ------------------------------------------------------------
// 1. Color palette
// ------------------------------------------------------------

#let primary = rgb("#1D4ED8")
#let accent = rgb("#16A34A")
#let light-bg = rgb("#EFF6FF")
#let border = rgb("#CBD5E1")
#let muted = rgb("#64748B")
#let danger = rgb("#DC2626")
#let warning = rgb("#F59E0B")


// ------------------------------------------------------------
// 2. Global text settings
// ------------------------------------------------------------

#set text(
  font: "Times New Roman",
  size: 11pt,
)


// ------------------------------------------------------------
// 3. Paragraph settings
// ------------------------------------------------------------

#set par(
  justify: true,
  leading: 0.65em,
)


// ------------------------------------------------------------
// 4. Heading settings
//
// Headings are not numbered automatically because
// lessons usually use manual names like "Phần 1", "Bài 1".
// ------------------------------------------------------------

#set heading(numbering: none)
