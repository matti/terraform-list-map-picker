output "result" {
  value = "${split(",", data.external.picker.result["result"])}"
}
