# AWS ECS Placeholder

The purpose of this project is to provide a small placeholder image with a `/health` HTTP endpoint for use with AWS ECS and Terraform / OpenTofu.

Since Terraform is primarily an infrastructure management tool and not an application deployment tool, coupling ECS metadata
such as task definition files to Terraform makes for complex deployment scenarios. Often times we just want to have Terraform
create the service and deploy new ECS task definition versions independently. Since ECS requires _some_ kind of image to be
referenced, this is where this image comes in.

## Configuration

| Environment Variable | Description                                                   | Default   |
| -------------------- | ------------------------------------------------------------- | --------- |
| `NGINX_PORT`         | Controls the port on which the server listens for requests on | `8080`    |
| `HEALTH_PATH`        | Controls the health check endpoint                            | `/health` |
