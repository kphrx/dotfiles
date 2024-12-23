# Regists funtions
fpath+=$ZSH_FUNCTIONS/Git

for config_file ($ZSH_FUNCTIONS/Git/*(N)); do
    autoload -Uz $config_file
done

# This is unlikely to change so make it all statically assigned
POST_1_7_2_GIT=`git_compare_version "1.7.2"`