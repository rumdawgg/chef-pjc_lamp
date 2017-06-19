#
# Cookbook:: pjc_lamp
# Recipe:: default
#
# Copyright (C) 2017 Paul chicarello
#
# Licensed under the Apache License, Version 2.0 (the 'License');
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an 'AS IS' BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'php::default'
include_recipe 'php::module_mysql'
include_recipe 'yum-mysql-community::mysql55'
include_recipe 'selinux::permissive'

mysql_service 'lamp' do
  port '3306'
  version '5.5'
  initial_root_password 'Ch4ng3me'
  action [:create, :start]
end
