// ============================================================
// Lesson Components
// File: typst/components.typ
//
// Purpose:
// - Define reusable blocks for lesson content.
// - Keep repeated layout patterns out of lesson files.
// ============================================================

#import "theme.typ": accent, border, light-bg, muted, primary


// ------------------------------------------------------------
// 1. Lesson title
// ------------------------------------------------------------

#let lesson-title(title, subtitle: none) = {
  align(center)[
    #text(size: 20pt, weight: "bold", fill: primary)[#title]
  ]

  if subtitle != none {
    v(0.5em)
    align(center)[
      #text(size: 12pt, fill: muted)[#subtitle]
    ]
  }

  v(1em)
}


// ------------------------------------------------------------
// 2. Part title block
// Example:
// Phần 1: Nhân đơn thức, đa thức
// ------------------------------------------------------------

#let part-box(body) = {
  v(0.8em)

  block(
    fill: light-bg,
    stroke: primary,
    radius: 4pt,
    inset: 8pt,
    width: 100%,
  )[
    #text(weight: "bold", fill: primary)[#body]
  ]

  v(0.5em)
}


// ------------------------------------------------------------
// 3. Exercise title
// Example:
// Bài 1: Tính
// ------------------------------------------------------------

#let exercise-title(body) = {
  v(0.6em)
  text(weight: "bold")[#body]
  v(0.2em)
}


// ------------------------------------------------------------
// 4. Example box
// ------------------------------------------------------------

#let example-box(body) = {
  v(0.4em)

  block(
    fill: rgb("#F8FAFC"),
    stroke: border,
    radius: 4pt,
    inset: 8pt,
    width: 100%,
  )[
    #text(weight: "bold", fill: accent)[Ví dụ: ]
    #body
  ]

  v(0.4em)
}


// ------------------------------------------------------------
// 5. Solution box
// ------------------------------------------------------------

#let solution-box(body) = {
  v(0.4em)

  block(
    fill: rgb("#F0FDF4"),
    stroke: accent,
    radius: 4pt,
    inset: 8pt,
    width: 100%,
  )[
    #text(weight: "bold", fill: accent)[Hướng dẫn giải]
    linebreak()
    #body
  ]

  v(0.4em)
}


// ------------------------------------------------------------
// 6. Note box
// ------------------------------------------------------------

#let note-box(body) = {
  v(0.4em)

  block(
    fill: rgb("#F8FAFC"),
    stroke: muted,
    radius: 4pt,
    inset: 8pt,
    width: 100%,
  )[
    #text(weight: "bold", fill: muted)[Ghi chú: ]
    #body
  ]

  v(0.4em)
}
