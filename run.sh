#!/bin/bash

# Variables (replace these with your actual input/output file paths and parameters)
IMAGE="test.jpg"
DEPTH="test.npy"
CONFIDENCE_MAP="contest.npy"
DEPTH_OUT="depthout.npy"
NORMAL_OUT="normout.npy"
CAM_FOCAL_X="0"
CAM_FOCAL_Y="0"
CAM_CENTER_X="0"
CAM_CENTER_Y="0"

# Python command
python refine.py \
  --image "$IMAGE" \
  --depth "$DEPTH" \
  --confidence "$CONFIDENCE_MAP" \
  --depth_out "$DEPTH_OUT" \
  --normal_out "$NORMAL_OUT" \
  --cam_focal "$CAM_FOCAL_X" "$CAM_FOCAL_Y" \
  --cam_center "$CAM_CENTER_X" "$CAM_CENTER_Y" \
  --depth_min 0.1 \
  --depth_max 50 \
  --confidence_threshold 0.5 \
  --gpu_id 0 \
  --scale_nb 4 \
  --lambda_regularization 7.5 7.5 7.5 7.5 \
  --gamma_regularization 5.5 5.5 5.5 5.5 \
  --window_size 9 9 9 9 \
  --patch_size 3 3 3 3 \
  --sigma_int 0.07 0.07 0.07 0.07 \
  --sigma_spa 3.0 3.0 3.0 3.0 \
  --degree_max 20 20 20 20 \
  --iter_max 4000 3000 2000 1000 \
  --eps_stop 0.000001 0.000001 0.000001 0.000001 \
  --attempt_max 50 50 50 50 \
  --lr_start 0.01 0.01 0.001 0.0001 \
  --lr_slot_nb 3 3 2 1