#
# Author:: Stephen Nelson-Smith ( <sns@opscode.com> )
# Author:: Jon Ramsey ( <jonathon.ramsey@gmail.com> )
# Copyright:: Copyright (c) 2012 Opscode, Inc.
# License:: Apache License, Version 2.0
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

class Chef
  class Provider
    class User
      class Solaris < Chef::Provider::User
        def universal_options
          if @new_resource.password
            raise Chef::Exceptions::User, "Setting the password from the User resource is not supported on Solaris-based platforms."
          end
          super
        end
      end
    end
  end
end

