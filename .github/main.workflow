workflow "lint shell scripts" {
  on = "push"
  resolves = "lint scripts"
}

action "lint scripts" {
  uses = "fearphage/shellcheck-action@1.0.0"
  secrets = ["GITHUB_TOKEN"]
}
