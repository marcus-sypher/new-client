id=$(cat id.txt)

# replace app.py with modern version
rm ../app.py
mv app.py ../app.py

# move html to templates
mv *.html ../templates/clients

# move static files
mkdir ../static/clients/$id
mv static/* ../static/clients/$id

rm id.txt
rm name.txt
