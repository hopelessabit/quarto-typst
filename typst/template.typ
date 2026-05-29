// ============================================================
// Main Quarto Typst Template
// File: typst/template.typ
//
// Purpose:
// - Import global Typst modules.
// - Render title.
// - Render document body.
// ============================================================


// ------------------------------------------------------------
// 1. Import modules
// ------------------------------------------------------------

#import "../../../typst/theme.typ": *
#import "../../../typst/components.typ": *
#import "../../../typst/math.typ": *


// ------------------------------------------------------------
// 2. Page setup
//
// Keep page setup here for now because it is stable.
// Later, if desired, move it to layout.typ and header-footer.typ.
// ------------------------------------------------------------

#set page(
  paper: "a4",
  margin: (
    x: 1.5cm,
    y: 1.5cm,
  ),

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


// ------------------------------------------------------------
// 3. Render document title using Quarto variables
// ------------------------------------------------------------

$if(title)$
#align(center)[
  #text(size: 20pt, weight: "bold", fill: primary)[
    $title$
  ]
]
#v(0.5em)
$endif$

$if(subtitle)$
#align(center)[
  #text(size: 12pt, fill: muted)[
    $subtitle$
  ]
]
#v(1em)
$endif$


// ------------------------------------------------------------
// 4. Render document body
// ------------------------------------------------------------

$body$
