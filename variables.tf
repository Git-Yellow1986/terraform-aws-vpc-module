variable "project_name" {
  type    = string
  default = ""
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "vpc_cidr_block" {
  type = string


}
variable "enable_dns_hostnames" {
  type = bool

}
variable "common_tags" {
  type = map(string)
  default = {

  }

}
variable "igw_tags" {
  type = map(string)
  default = {
  }
}

variable "public_subnet_cidrs" {
  type    = list(string)
  default = []
  validation {
    condition     = length(var.public_subnet_cidrs) == 2
    error_message = "please provide 2 valid public subnet CIDR"
  }
}
variable "private_subnet_cidrs" {
  type    = list(string)
  default = []
  validation {
    condition     = length(var.private_subnet_cidrs) == 2
    error_message = "please provide 2 valid private subnet CIDR"
  }
}

variable "database_subnet_cidrs" {
  type    = list(string)
  default = []
  validation {
    condition     = length(var.database_subnet_cidrs) == 2
    error_message = "please provide 2 valid database subnet CIDR"
  }
}


variable "public_subnet_tags" {
  type = map(string)
  default = {
  }
}

variable "private_subnet_tags" {
  type = map(string)
  default = {
  }
}

variable "database_subnet_tags" {
  type = map(string)
  default = {
  }
}

variable "database_subnet_group_tags" {
  type = map(string)
  default = {
  }
}

variable "nat_gatway_tag" {
  default = {}

}
variable "public_route_table_tags" {
  default = {}
}

variable "private_route_table_tags" {
  default = {}
}

variable "database_route_table_tags" {
  default = {}
}

# Peering Variable

variable "is_peering_required" {
  type = bool
  default = false
}

variable "vpc_peering_tags"{
  default = {}
}