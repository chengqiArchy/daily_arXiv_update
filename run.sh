today=`date -u "+%Y-%m-%d"`
# cd daily_arxiv
# scrapy crawl arxiv -o ../data/${today}.jsonl

cd ai
python enhance.py --data ../data/2025-04-17.jsonl

cd ../to_md
python convert.py --data ../data/${today}_AI_enhanced_${LANGUAGE}.jsonl

cd ..
python update_readme.py
