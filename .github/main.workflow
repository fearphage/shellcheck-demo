workflow "lint shell scripts" {
  on = "push"
  resolves = "lint scripts"
}

action "lint scripts" {
  uses = "fearphage/shellcheck-action@0.0.2-debug"
  secrets = ["GITHUB_TOKEN"]
  env = {
    DEBUG_ACTION = "true"
  }
}
