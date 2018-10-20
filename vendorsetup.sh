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

cd frameworks/av
sudo git reset --hard && sudo git clean -f -d
sudo git apply -v ../../device/lenovo/marino/patches/0001-frameworks_av.patch
cd ../..

cd frameworks/base
sudo git reset --hard && sudo git clean -f -d
sudo git apply -v ../../device/lenovo/marino/patches/0002-frameworks_base.patch
cd ../..

cd frameworks/native
sudo git reset --hard && sudo git clean -f -d
sudo git apply -v ../../device/lenovo/marino/patches/0003-frameworks_native.patch
cd ../..

cd system/netd
sudo git reset --hard && sudo git clean -f -d
sudo git apply -v ../../device/lenovo/marino/patches/0004-system_netd.patch
cd ../..

cd system/core
sudo git reset --hard && sudo git clean -f -d
sudo git apply -v ../../device/lenovo/marino/patches/0005-system_core.patch
cd ../..
