#!/usr/bin/env bash
echo ${{ secrets.TENCENT_IMAGES_HUB_TOKEN }} | docker login --username=${{ secrets.TENCENT_IMAGES_HUB_USER_NAME }} ${{ secrets.TENCENT_IMAGES_HUB_REGISTRY_URL }} --password-stdin
docker pull ${{ steps.build_push_image.outputs.image_pull_url }}"