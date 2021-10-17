require'trouble'.setup {}
require'todo-comments'.setup
{
  highlight = {
    pattern = [[.*<(KEYWORDS)\s*]], -- pattern or table of patterns, used for highlightng (vim regex)
  },
  search = {
     pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon.
  },
}
