id=$(cat id.txt)

cat partial-app.py >> template-app.py
echo "if __name__ == "__main__":\n  app.run(debug=True)\n" >> template-app.py
sudo rm ../app.py partial-app.py
mv template-app.py ../app.py

mv *.html ../templates
mkdir ../static/$id && mv static/* ../static/$id
rm id.txt
# cd .. && rm -r new-client-init 
