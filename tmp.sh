cd install
if [ ! -f abseil-cpp ]; then
  git clone https://github.com/abseil/abseil-cpp.git
fi
cd abseil-cpp && mkdir build && cd build && cmake .. && make -j  && sudo make install
find ./ -name "*.o" | xargs ar cr libabsl.a 
sudo cp libabsl.a /usr/lib
cd ../..