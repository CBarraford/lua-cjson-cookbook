
# git details
default['lua-cjson']['git']['repository'] = 'https://github.com/mpx/lua-cjson.git'
default['lua-cjson']['git']['revision'] = '2.1.0'
default['lua-cjson']['git']['dir'] = '/tmp/lua-cjson'

default['lua-cjson']['lua-package'] = 'lua5.1'
default['lua-cjson']['lua-dev-package'] = 'liblua5.1-0-dev'
default['lua-cjson']['env-vars'] = 'PREFIX=/usr LUA_INCLUDE_DIR=/usr/include/lua5.1'
