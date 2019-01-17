python ../src/train_softmax.py \
--data_dir /dataset/casia-webface/align-raw \
--logs_base_dir ./output_dir/logs/facenet/ \
--models_base_dir ./output_dir/models/facenet/ \
--image_size 160 \
--model_def models.inception_resnet_v1 \
--optimizer ADAM \
--learning_rate -1 \
--max_nrof_epochs 150 \
--keep_probability 0.8 \
--random_crop \
--random_flip \
--use_fixed_image_standardization \
--learning_rate_schedule_file ../data/learning_rate_schedule_classifier_casia.txt \
--weight_decay 5e-4 \
--embedding_size 512 \
--validation_set_split_ratio 0 \
--prelogits_norm_loss_factor 5e-4 \
--epoch_size=1000 \
--batch_size=90 \
--gpu_memory_fraction=0.5 \
--lfw_dir /dataset/lfw/lfw_mtcnnpy_160 \
--lfw_distance_metric 1 \
--lfw_use_flipped_images \
--lfw_subtract_mean 
