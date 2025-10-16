### ──────────────────────────────
### Custom Zsh Functions
### ──────────────────────────────


# c++ Compilation
compile_cpp() {
    if [ -z $1 ]; then
        g++ -o program *.cpp && ./program; rm program
        return
    fi
    g++ -o $1 *.cpp
}

# GitHub clone
clone_github() {
    git clone https://github.com/$1
}
