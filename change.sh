CN=$1
echo "Creating change $CN"
git checkout dev
git pull
git checkout -b feature/change-$CN
echo "Change $CN" > file.txt
git add file.txt
git commit -m "Change $CN"
git push origin feature/change-$CN
git checkout dev
