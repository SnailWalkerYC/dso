#path="/data/abobu/data_dso/00488b40-0a8cf1a0"

for path in "/data/abobu/data_dso/*"
do
    video=$path"/*.mov"

    bash video_to_images.sh $video  $path"/images"

    build/bin/dso_dataset files=$path"/images" calib=camera_nexar.txt preset=2 mode=1 nogui=1
done
