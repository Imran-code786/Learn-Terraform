variable "sample" {
  default     = 100
  
}


variable "sample1" {
  default     = "Hello world"
  
}

output "sample"{
    value = var.sample
}

output "sample1"{
    value = var.sample1
}


output "sample-ext"{
    value = "value of sample -${var.sample}"
}

#variable type

# 1 string
# 2 number
#3 Boolean

#variable types
# In ansible , 1 plain key , 2 list , 3. map

#In terrafor 
# Plain
# List
# Map



 # plain
variable "course"{
    default = "Devops Training"
}

#list

variable "courses"{
    default = [
        "DevOps",
        "AWS",
        "Python"
    ]
}
 
#map

variable "course_details"{
    default = {
        DevOps = {
            name ="DevOps"
            timing = "10am"
            duration = 90

        }
        AWS = {
            name = "AWS"
            timing ="11am"
            duration = 30
        }
         
    }
}

output "course"{
    value = var.course
}

output "courses"{
    value = var.courses[2]
}

output "course_details"{
    value = var.course_details["DevOps"]
}
