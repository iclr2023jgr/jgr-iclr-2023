python -m torch.distributed.launch --nproc_per_node 8  run_train.py --overwrite_output_dir \
    --task_name sum --dataset_name cnndm \
    --train_data_path data/cnndm \
    --dev_data_path data/cnndm \
    --test_data_path data/cnndm \
    --load_tokenized_data False \
    --gt_as_pos True  --reward_type reranker_softmax \
    --generator_num_cand_generated 8 --generator_num_cand_picked 8 \
    --num_cand_generated 16 --num_cand_picked 3 --candidate_pick_strategy bottom \
    --do_train True --do_eval False --do_predict False --prediction_loss_only False \
    --per_device_train_batch_size 2 --per_device_eval_batch_size 4 \
    --gradient_accumulation_steps 4 \
    --generator_learning_rate 5e-5 --reranker_learning_rate 1e-5 \
    --num_train_epochs 3 \
    --evaluation_strategy steps --eval_steps 1000 \
    --logging_strategy steps --logging_steps 500 \
    --save_strategy steps --save_steps 1000 --save_total_limit 20 \
    --iteration_steps 1000 --iteration_reranker_steps 500 \
    --load_best_model_at_end True \
    --metric_for_best_model generator_eval_rouge1 --greater_is_better True \
    --reranker_model_name_or_path warmup-ranker/saves/roberta-large-cnndm \
    --generator_model_name_or_path warmup-generator/saves/bart-large-cnndm \
    --output_dir saves/GAN-large-cnndm \
    --generator_max_source_length 1020 --reranker_max_source_length 400 --generator_max_target_length 109 --reranker_max_target_length 109 \
    --cache_data \
    --disable_tqdm False 
