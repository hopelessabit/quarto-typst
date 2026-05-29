// ============================================================
// Math Components
// File: typst/math.typ
//
// Purpose:
// - Define reusable math-related helpers.
// - Keep math result formatting consistent.
// ============================================================

#import "theme.typ": accent, border


// ------------------------------------------------------------
// 1. Final answer box
// ------------------------------------------------------------

#let final-answer(body) = {
  box(
    stroke: accent,
    inset: 4pt,
    radius: 3pt,
  )[
    #body
  ]
}


// ------------------------------------------------------------
// 2. Formula box
// ------------------------------------------------------------

#let formula-box(body) = {
  block(
    stroke: border,
    inset: 8pt,
    radius: 4pt,
    width: 100%,
  )[
    #body
  ]
}
