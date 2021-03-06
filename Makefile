decompress_original:
	tar xvf data/character.tar.Z -C data/original_data/
	cp data/original_data/murphy/learn.zip data/original_data/
	cp data/original_data/murphy/test.zip data/original_data/
	unzip data/original_data/learn.zip -d data/original_data/
	unzip data/original_data/test.zip -d data/original_data/
	rm -rf data/original_data/murphy
	rm data/original_data/learn.zip
	rm data/original_data/test.zip

split_online_offline_datasets:
	python -m codes --mode=split --online_size=$(online)

train_experts:
	python -m codes --mode=train_experts

go_online:
	python -m codes --mode=go_online
