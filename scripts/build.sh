#!/bin/bash
#
# Build the project locally
#
# Usage:
#
#   ./scripts/build.sh
#

if [[ ! "${PWD}" =~ ^.*gha_cmake_intel_cpp17_gprof$ ]]; then
  echo "Please run this script from the 'gha_cmake_intel_cpp17_gprof' folder. "
  echo "(that is, for example, not from the scripts folder)."
  echo "Current working directory: ${PWD}"
  exit 42
fi

if [[ ! -z "${CLUSTER}" ]]; then
  echo "Working on a cluster, great!"
else
  echo "Not working on a cluster, sourcing a file"
  source /opt/intel/oneapi/setvars.sh
fi

cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build
./build/gha_cmake_intel_cpp17_gprof



#      - name: Show the common variables script
#        run: cat /opt/intel/oneapi/setvars.sh

      # Adapted from https://devmesh.intel.com/posts/991253/adding-intel-oneapi-toolkits-to-github-actions
      # icpx: warning: use of 'dpcpp' is deprecated and will be removed in a future release. Use 'icpx -fsycl' 
#      - name: configure
#        shell: bash
#        run: |
#          source /opt/intel/oneapi/setvars.sh
#          cmake -S . -B build \
#            -DCMAKE_BUILD_TYPE="RelWithDebInfo" \
#            -DCMAKE_INSTALL_PREFIX=install \
#            -DCMAKE_CXX_COMPILER=icpx \
#            -DCMAKE_C_COMPILER=icx \
#            -DIntelDPCPP_DIR="/opt/intel/oneapi/compiler/latest/linux/cmake/SYCL" \
#            -DMKL_ROOT="/opt/intel/oneapi/mkl/latest" \
#            -DTBB_ROOT="/opt/intel/oneapi/tbb/latest"
      
      # Adapted from https://devmesh.intel.com/posts/991253/adding-intel-oneapi-toolkits-to-github-actions
#      - name: build
#        shell: bash
#        run: |
#          source /opt/intel/oneapi/setvars.sh
#          cmake --build build
#
#      - name: Run the program
#        run: ./build/gha_cmake_intel_cpp17



