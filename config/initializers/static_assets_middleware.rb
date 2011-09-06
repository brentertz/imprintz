# For rails - place this file in an initializer
# Override heroku_rack - StaticAssetsMiddleware to extend default Cache-Control header
# See this thread --> http://groups.google.com/group/heroku/browse_thread/thread/607f0dc9a3979e1b

module Heroku
  class StaticAssetsMiddleware
    def cache_static_asset(reply)
      return reply unless can_cache?(reply)

      status, headers, response = reply

      # static files are cacheable for ...
      #headers['Cache-Control'] = 'public, max-age=0'
      headers['Cache-Control'] = 'public, max-age=43200' # 12 hours - Heroku default
      #headers['Cache-Control'] = 'public, max-age=31556926' # 1 year

      build_new_reply(status, headers, response)
    end
  end
end