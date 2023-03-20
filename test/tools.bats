#!/usr/bin/env bats

@test 'Command git is available.' {
  git --version
}

@test 'Command node is available.' {
  node --version
}

@test 'Command npm is available.' {
  npm --version
}

@test 'Command nvm is available.' {
  nvm --version
}

@test 'Command python3 is available.' {
  python3 --version
}
