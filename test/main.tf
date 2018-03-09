module "picker" {
  source = ".."

  list = [
    {
      first  = 1
      second = 2
    },
    {
      first  = 10
      second = 20
    },
  ]

  key = "first"
}

output "result" {
  value = "${module.picker.result}"
}
