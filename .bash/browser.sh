# aliases to various browser functions
function so() {
  iexplore "https://www.google.com/?q=site:stackoverflow.com%20$*"
}

function google() {
  iexplore "https://www.google.com/?q=$*"
}

function ch() {
  chrome "$*" &
}
