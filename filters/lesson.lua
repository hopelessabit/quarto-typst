-- ============================================================
-- Lesson Lua Filter
-- File: filters/lesson.lua
--
-- Purpose:
-- - Convert semantic Markdown blocks into raw Typst components.
-- - Example:
--
--   ::: {.part}
--   Phần 1: Nhân đơn thức, đa thức
--   :::
--
--   becomes:
--
--   #part-box[
--     Phần 1: Nhân đơn thức, đa thức
--   ]
--
-- Notes:
-- - This filter only affects Typst output.
-- - It returns RawBlock("typst", ...), so Quarto/Pandoc passes it
--   directly into the generated .typ file.
-- ============================================================

io.stderr:write(">>> lesson.lua loaded\n")


-- ------------------------------------------------------------
-- Helper: check whether an element has a class
-- ------------------------------------------------------------

local function has_class(el, class_name)
  for _, class in ipairs(el.classes) do
    if class == class_name then
      return true
    end
  end

  return false
end


-- ------------------------------------------------------------
-- Helper: convert Pandoc blocks to Typst text
-- ------------------------------------------------------------

local function blocks_to_typst(blocks)
  return pandoc.write(
    pandoc.Pandoc(blocks),
    "typst"
  )
end


-- ------------------------------------------------------------
-- Helper: wrap content in a Typst function
-- ------------------------------------------------------------

local function typst_block(function_name, blocks)
  local content = blocks_to_typst(blocks)

  return pandoc.RawBlock(
    "typst",
    "#" .. function_name .. "[" .. content .. "]"
  )
end


-- ------------------------------------------------------------
-- Main Div handler
-- ------------------------------------------------------------

function Div(el)
  if has_class(el, "part") then
    io.stderr:write(">>> converting .part block\n")
    return typst_block("part-box", el.content)
  end

  if has_class(el, "exercise") then
    io.stderr:write(">>> converting .exercise block\n")
    return typst_block("exercise-title", el.content)
  end

  if has_class(el, "example") then
    io.stderr:write(">>> converting .example block\n")
    return typst_block("example-box", el.content)
  end

  if has_class(el, "solution") then
    io.stderr:write(">>> converting .solution block\n")
    return typst_block("solution-box", el.content)
  end

  if has_class(el, "note") then
    io.stderr:write(">>> converting .note block\n")
    return typst_block("note-box", el.content)
  end

  return nil
end