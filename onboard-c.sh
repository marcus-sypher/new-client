id=$(cat new-client/*/id.txt)
name=$(cat new-client/*/name.txt)

# replace app.py with modern version
rm app.py
mv new-client/$name/app.py app.py

# move html to templates
mv new-client/$name/*.html templates/clients

# move static files
mkdir static/clients/$name
mv new-client/$name/static/* static/clients/$name

rm new-client/$name/id.txt
rm new-client/$name/name.txt
