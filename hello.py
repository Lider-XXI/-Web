def application(env, start_response):
    body = 'Hello World!'
    start_response('200 OK', [('Content-Type', 'text/html')])
    return(body)
