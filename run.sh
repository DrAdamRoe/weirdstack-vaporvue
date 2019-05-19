# super dirty run script, will dockerize soon, I swear. 

# even dirtier. 
if [ "$1" == "stop" ];
then
    echo "stopping backend"
    kill $(ps -ax | grep -m1 vapor | awk '{print $1}')
    echo "stopping frontend"
    kill $(ps -ax | grep -m1 yarn | awk '{print $1}')
else 
    cd backend/WordsSet
    vapor build && vapor run serve & 
    cd ../../frontend 
    yarn install && yarn run dev & 
fi