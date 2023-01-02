# JFrog Container Build Push Action

This is a Composite GitHub Action to login, build and push docker/container images to the JFrog Cloud instance. 

## Usage

Please refer the action as below in the GitHub Action

```
- name: Build and Push Image
  uses: arunalakmal/jfrog-container-build-push-action@v1
  with:
    jfrog-url: <org>.jfrog.io
    jfrog-user: ${{ secrets.UNAME }}
    jfrog-token: ${{ secrets.TOKEN }}
    jfrog-repo: <docker_repo>
    jfrog-image: <image_name>
```