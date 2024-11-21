accelerate launch -m pipelines.train_dit_cifar \
  --output_dir="/root/autodl-tmp/dit_cifar" \
  --data_root="/root/autodl-tmp/cifar10" \
  --seed=0 \
  --resolution=32 \
  --train_batch_size=128 \
  --max_train_steps=500000 \
  --checkpointing_steps=100 \
  --learning_rate=1e-4 \
  --lr_scheduler="constant_with_warmup" \
  --lr_warmup_steps=1000 \
  --allow_tf32 \
  --interp="straight" \
  --source_distribution="normal" \
  --is_independent_coupling=True \
  --train_time_distribution="lognormal" \
  --train_time_weight="uniform" \
  --criterion="mse" \
  --use_ema
