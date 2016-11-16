def application(environ, start_response):
    body = [p for p in environ['QUERY_STRING'].split('&')]
    body = '\n'.join(body)
    status = '200 OK'
    headers = [('Content-Type', 'text/plain'), ('Content-Length', str(len(body)))]
    start_response(status, headers)
    return [ body ]
