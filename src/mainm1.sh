while :; do

    echo "Welcome to MacOS Setupper"
    echo "Here is what you can do"
    echo "Help: for a list of commands"
    read -p "Do something? ";
    if [ $REPLY == "1" ]; then
        echo "installing command line tools for xcode";
        xcode-select --install
        echo "Installed"
    fi
    if [ $REPLY == "2" ]; then
        echo "installing homebrew";
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        echo "export PATH=/opt/homebrew/bin:$PATH" >> ~/.bash_profile && source ~/.bash_profile
        echo "Installed"
    fi
    if [ $REPLY == "3" ]; then
        echo "updateing gnu core utils";
        brew install coreutils
        brew install gnu-sed
        brew install gnu-tar
        brew install gnu-indent
        brew install gnu-which
        brew install findutils
        echo "Installed"
    fi
    if [ $REPLY == "4" ]; then
        echo "installing chrome";
        brew install --cask google-chrome
        echo "Installed"
    fi
    if [ $REPLY == "^C" ]; then
        echo "\nexiting";
        exit 1;
    fi
    if [ $REPLY == "5" ]; then
        echo "installing brave";
        brew install --cask brave-browser
        echo "Installed"
    fi
    if [ $REPLY == "6" ]; then
        echo "installing vivaldi";
        brew install --cask vivaldi
        echo "Installed"
    fi
    if [ $REPLY == "7" ]; then
        echo "installing firefox";
        brew install --cask firefox
        echo "Installed"
    fi
    if [ $REPLY == "8" ]; then
        echo "installing waterefox";
        brew install --cask waterfox
        echo "Installed"
    fi
    if [ $REPLY == "9" ]; then
        echo "attention! this browser is deprecated"
        echo "installing waterefox classic";
        brew install --cask waterfox-classic
        echo "Installed"
    fi
    if [ $REPLY == "10" ]; then
        echo "installing NodeJS";
        brew install node
        echo "Installed"
    fi
    if [ $REPLY == "11" ]; then
        echo "installing Deno";
        brew install deno
        echo "Installed"
    fi
    if [ $REPLY == "12" ]; then
        echo "installing python";
        brew install python@3.10
        echo "Installed"
    fi
    if [ $REPLY == "13" ]; then
        echo "installing ruby";
        brew install ruby
        echo "Installed"
    fi
    if [ $REPLY == "help" ]; then
        echo "(rb = requires homebrew)"
        echo "1-install command line tools for xcode"
        echo "2-install homebrew"
        echo "3-update gnu core utils (default are outdated) (rb)"
        echo "4-chrome (rb)"
        echo "5-brave (rb)"
        echo "6-vivaldi (rb)"
        echo "7-firefox (rb)"
        echo "8-waterfox (rb)"
        echo "9-waterfox classic (rb)"
        echo "10-NodeJs (rb)"
        echo "11-Deno (rb)"
        echo "12-Python (rb)"
        echo "13-Ruby (rb)"
    fi
done