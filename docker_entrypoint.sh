echo "Algorithm will run on $1"
rm ./image/*
cp $1 ./image/
python main.py --config argument.yml
