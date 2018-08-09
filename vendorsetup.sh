#
# Copyright 2015 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This file is executed by build/envsetup.sh, and can use anything
# defined in envsetup.sh.
#
# In particular, you can add lunch options with the add_lunch_combo
# function: add_lunch_combo generic-eng

for var in eng user userdebug; do
  add_lunch_combo lineage_marino-$var
done

cd system/core
git reset --hard && git clean -f -d
git apply -v ../../device/lenovo/marino/patches_mtk/system_core.patch
cd ../..

cd bionic
git reset --hard && git clean -f -d
git apply -v ../device/lenovo/marino/patches_mtk/bionic.patch
cd ..

cd system/sepolicy
git reset --hard && git clean -f -d
git apply -v ../../device/lenovo/marino/patches_mtk/system_sepolicy.patch
cd ../..

cd frameworks/av
git reset --hard && git clean -f -d
git apply -v ../../device/lenovo/marino/patches_mtk/frameworks_av.patch
cd ..

cd native
git reset --hard && git clean -f -d
git apply -v ../../device/lenovo/marino/patches_mtk/frameworks_native.patch
cd ..

cd base
git reset --hard && git clean -f -d
git apply -v ../../device/lenovo/marino/patches_mtk/frameworks_base.patch
cd ..

cd opt/telephony
git reset --hard && git clean -f -d
git apply -v ../../../device/lenovo/marino/patches_mtk/frameworks_opt_telephony.patch
cd ../../..

cd packages/apps/Snap
git reset --hard && git clean -f -d
git apply -v ../../../device/lenovo/marino/patches_mtk/snap.patch
cd ..

cd FMRadio
git reset --hard && git clean -f -d
git apply -v ../../../device/lenovo/marino/patches_mtk/fmradio.patch
cd ../../..

cd system/netd
git reset --hard && git clean -f -d
git apply -v ../../device/lenovo/marino/patches_mtk/system_netd.patch
cd ../..

cd vendor/cmsdk
git reset --hard && git clean -f -d
git apply -v ../../device/lenovo/marino/patches_mtk/vendor_cmsdk.patch
cd ../..



