package = "warp"
version = "scm-1"
source = {
   url = "git://github.com/vavrusa/warp",
   branch = "master"
}
description = {
   summary = "A DNS router/middleware server that can run in OpenResty.",
   detailed = [[
	This is a DNS router that can either run standalone or inside OpenResty and routes requests through middlwares.
        It supports zonefile-based backend, full DNSSEC with KASP, DNS/TLS, proxying, LRU caches, etcd-based SkyDNS any others.
   ]],
   homepage = "https://github.com/vavrusa/ljdns",
   license = "BSD"
}
dependencies = {
}
build = {
  type = "builtin",
  install = {
    bin = {
      warp = "warp.lua"
    }
  },
  modules = {
    ["warp.init"] = "init.lua",
    ["warp.route"] = "route.lua",
    ["warp.route.cookie"] = "route/cookie.lua",
    ["warp.route.dnssec"] = "route/dnssec.lua",
    ["warp.route.file"] = "route/file.lua",
    ["warp.route.lru"] = "route/lru.lua",
    ["warp.route.prometheus"] = "route/prometheus.lua",
    ["warp.route.proxy"] = "route/proxy.lua",
    ["warp.route.rrl"] = "route/rrl.lua",
    ["warp.route.auth"] = "route/auth.lua",
    ["warp.route.skydns"] = "route/skydns.lua",
    ["warp.route.whoami"] = "route/whoami.lua",
    ["warp.store.etcd"] = "store/etcd.lua",
    ["warp.store.lmdb"] = "store/lmdb.lua",
    ["warp.store.redis"] = "store/redis.lua",
    ["warp.vendor.resty"] = "vendor/resty.lua",
    warp = "init.lua",
    -- Vendored modules
    ["warp.vendor.lua-resty-http.lib.resty.http"] = "vendor/lua-resty-http/lib/resty/http.lua",
    ["warp.vendor.lua-resty-http.lib.resty.http_headers"] = "vendor/lua-resty-http/lib/resty/http_headers.lua",
    ["warp.vendor.lua-resty-lrucache.lib.resty.lrucache"] = "vendor/lua-resty-lrucache/lib/resty/lrucache.lua",
    ["warp.vendor.lua-resty-redis.lib.resty.redis"] = "vendor/lua-resty-redis/lib/resty/redis.lua",
    
  }
}
rockspec_format = "1.1"
deploy = { wrap_bin_scripts = false }
