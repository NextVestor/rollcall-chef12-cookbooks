# recipes/default.rb
#
# Copyright 2013, Simple Finance Technology Corp.
# Copyright 2016, EverTrue, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

Chef::Log.warn 'Recipes included with this cookbook are deprecated, ' \
               'and will be removed in a future release.'

# download and install base package
include_recipe 'zookeeper::install'

# set config path and render config
include_recipe 'zookeeper::config_render'

#start the zookeeper service
include_recipe 'zookeeper::service'


