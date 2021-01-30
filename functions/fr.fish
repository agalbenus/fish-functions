function fr
  set INITIAL_QUERY "" 
  set RG_PREFIX "rg --column --line-number --no-heading --color=always --smart-case " 
  set FZF_DEFAULT_COMMAND "$RG_PREFIX '$INITIAL_QUERY'" 
  set RESULT (fzf --bind "change:reload:$RG_PREFIX {q} || true" --ansi --phony --query "$INITIAL_QUERY" --height=50% --layout=reverse | cut -d ":" -f1) 
  if test -n "$RESULT"; nvim $RESULT; end
end
