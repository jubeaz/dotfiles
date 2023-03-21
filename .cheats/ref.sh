BASE_SEARCH="$HOME/.local/pipx/venvs/arsenal-cli/lib64/python3.10/site-packages/arsenal/data/cheats/ $HOME/.cheats/"

grep -rEh '^%' $BASE_SEARCH | sed "s/%//g" | tr ',' '\n' | sort | uniq > ~/.cheats/tags
grep -rEh '^#[a-Z]' $BASE_SEARCH | tr '#' '\n#' | sort | uniq > ~/.cheats/cmd-tags


