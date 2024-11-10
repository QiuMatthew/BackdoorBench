python ./resource/badnet/generate_white_square.py --image_size 32 --square_size 3 --distance_to_right 0 --distance_to_bottom 0 --output_path ./resource/badnet/trigger_image.png
python ./attack/badnet.py --yaml_path ../config/attack/prototype/cifar10.yaml --patch_mask_path ../resource/badnet/trigger_image.png  --save_folder_name badnet_0_1
