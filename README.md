# Basic-Docker-Container-Creation-with-Terraform

A simple Terraform project that uses the [Docker Provider](https://registry.terraform.io/providers/kreuzwerker/docker/latest) to pull and run an Nginx container locally.  
Demonstrates basic Docker container provisioning with Terraform.

![Terraform](https://img.shields.io/badge/Terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)

---

## 📌 Overview

This project:
- Connects Terraform to a local Docker Engine
- Pulls the `nginx:latest` image from Docker Hub
- Starts an Nginx container mapped from port **8000** (host) to **80** (container)

It’s a minimal working example to get started with **Terraform + Docker** for local development or learning.

---

## 📂 Project Structure

```plaintext
basic-docker-container/
├── main.tf         # Terraform configuration for Docker image & container
├── README.md       # Project documentation
