variable "tags" {
  type = map(string)
  validation {
    condition = alltrue([for t in ["Team", "service"] : contains(keys(var.tags), t)])
    error_message = "Please enter Team and service tags"
  }
}
