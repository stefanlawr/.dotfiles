git --version > /dev/null 2>&1
git_exists=$? 

bashrc() {
    echo "Getting .bashrc from repo..."
}

git_credentials() {
    if [ $git_exists -eq 0 ]; then
        read -p "Configure global git credentials? [y/N]: " git_prompt

        if [[ ${git_prompt,,} =~ \s*"y"\s* ]]; then
            read -p "Enter git username: " git_username
            git config --global user.name $git_username

            read -p "Enter git email: " git_user_email
            git config --global user.email $git_user_email

            git config --global credential.helper store
        fi
    fi
}

main() {
    git_credentials
    bashrc
}

main