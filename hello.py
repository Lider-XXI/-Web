def application(env, start_response):
    data = '\n'.join(env['QUERY_STRING'].split('&'))
    start_response('200 OK', [('Content-Type', 'text/plain')])
    return ([data])

