cmd_Makefile := cd ..; /usr/local/lib/node_modules/node-gyp/gyp/gyp_main.py -fmake --ignore-environment "--toplevel-dir=." -I/home/pi/pingRead/build/config.gypi -I/usr/local/lib/node_modules/node-gyp/addon.gypi -I/root/.node-gyp/0.12.1/common.gypi "--depth=." "-Goutput_dir=." "--generator-output=build" "-Dlibrary=shared_library" "-Dvisibility=default" "-Dnode_root_dir=/root/.node-gyp/0.12.1" "-Dnode_gyp_dir=/usr/local/lib/node_modules/node-gyp" "-Dmodule_root_dir=/home/pi/pingRead" binding.gyp
