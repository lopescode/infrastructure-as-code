# Infrastructure as Code (IaC) Study Repository

Welcome to the Infrastructure as Code (IaC) study repository. This project aims to provide practical examples and tutorials on using various IaC tools such as Terraform and CloudFormation.

## Table of Contents

- [About](#about)
- [Main benefits](#main-benefits)
- [Prerequisites](#prerequisites)
- [Project Structure](#project-structure)
- [How to Use](#how-to-use)
  - [Terraform](terraform/README.md)
  - [Cloud Formation](cloudformation/README.md)
- [Contributing](#contributing)
- [License](#license)

## About

This repository contains examples of how to use IaC tools to manage infrastructure declaratively. The examples are organized into folders, each dedicated to a specific tool.

## Main benefits

- Automate the infrastructure creation process
- Stardardize infrastructure
- Easily replicate

## Prerequisites

To reproduce the examples in this repository, you will need the following software installed on your machine:

- [Terraform](https://www.terraform.io/downloads.html)
- [AWS CLI](https://aws.amazon.com/cli/)
- [AWS CloudFormation](https://aws.amazon.com/cloudformation/)

Additionally, you will need an AWS account and to configure your credentials locally.

## Project Structure

The repository structure is as follows:

```plaintext
.
├── terraform
│   ├── ec2-aws
│   ├── s3-aws-bucket-static
│   ├── vpc
│   └── README.md
├── cloudformation
│   ├── ec2-aws
│   ├── s3-aws-bucket-static
│   ├── vpc
│   └── README.md
└── README.md
```

- **terraform/**: Contains examples of using Terraform.
- **cloudformation/**: Contains examples of using AWS CloudFormation.

## How to use

See the README of each project to understand how it works.

- [Terraform](terraform/README.md)
- [Cloud Formation](cloudformation/README.md)

## Contributing

Contributions are welcome! Feel free to open issues and pull requests.

## License

This project is licensed under the [MIT License](LICENSE).
