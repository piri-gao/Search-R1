file_path=/home/hwai/programs/Search-R1/dataset
index_file=$file_path/e5_Flat.index
corpus_file=$file_path/wiki-18.jsonl
retriever=intfloat/e5-base-v2
export CUDA_VISIBLE_DEVICES=0,1
retriever_name=e5
retriever_path=intfloat/e5-base-v2

nohup python search_r1/search/retrieval_server.py --index_path $index_file \
                                            --corpus_path $corpus_file \
                                            --topk 3 \
                                            --retriever_model $retriever > retrieval_log.log 2>&1 &
                                            --retriever_name $retriever_name \
                                            --retriever_model $retriever_path \
                                            --faiss_gpu
