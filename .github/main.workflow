workflow "lint shell scripts" {
  on = "push"
  resolves = "lint scripts"
}

action "lint scripts" {
  uses = "fearphage/shellcheck-action@0.1.0-debug1"
  secrets = ["GITHUB_TOKEN"]
  env = {
    DEBUG_ACTION = "true"
  }
}
