;;; jss-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "jss-browser" "jss-browser.el" (24142 31738
;;;;;;  0 0))
;;; Generated autoloads from jss-browser.el

(autoload 'jss-connect "jss-browser" "\
Query the user for a browser type, a host, and a port, and
jump to its browser buffer.

\(fn BROWSER-LABEL &key HOST PORT)" t nil)

;;;***

;;;### (autoloads nil "jss-http-repl" "jss-http-repl.el" (24142 31738
;;;;;;  0 0))
;;; Generated autoloads from jss-http-repl.el

(autoload 'jss-http-repl-mode "jss-http-repl" "\
Major mode for manually creating, editing and submitting HTTP requests.

A jss-http-repl buffer contains a set of HTTP
transactions (request / response pairs). The request, consisting
of headers and data, is edited as normal emacs text, then
converted into an HTTP request, sent as binary data (the way text
is converted into binary still needs work) and the response,
headers and data, is inserted into the buffer.

After each transaction a new response header/data set is created
and inserted into the buffer (this is usually just a copy of the
previous sent headers and data, but if
jss-http-repl-track-cookies is T, the default, Cookie headers may
be added.

Each http request consists of an endpoint, specifying the server,
port and method (http or https) to connect to, a set of headers
and some request data (if a post). Type the request method (GET,
POST, HEAD, whatever) after the endpoint marker followed by the
desired url (note: include the http or https schema, otherwise we
don't know which protocol to use). The Host header and
Request-Line is automatically updated from the value of the
Endpoint: line.

The request headers can be edited manually, though the function
jss-http-repl-ensure-header (bound to C-<return> by defoult)
provides a slightly more convenient interface for creating common
headers.

Any post data should be added after the '--request data follows
this line--' marker, when submitting the Content-Length and
Content-Type headers will have their default values (which can be
changed) set based on this data.

Once the requets data has been prepared hit C-c
C-c (jss-http-repl-send-request), to open up a network connection
and send the request. The buffer will become read only, the
response (headers and data), will be inserted in the buffer and
then a new request line, based on the previous request and the
response headers, will be inserted.

Note: The network traffic generated by this mode does _not_ go
through an external web browser, it is sent by the running emacs
instance itself. (this generally has no consequences, but it does
mean that, compared to other requests made via jss, the ip
address and http handling may be different).

Some convenience functions are provided for setting certain
headers (Authorization is the only one that's actually useful,
the other are just shortucts).

A jss-http-repl buffer can be quickly created from a JSS IO
buffer; this allows for easily editing/debugging/replaying recent
json requests from the browser.

This mode is designed for testing/debugging json/ajax requests
but it can be used with any kind of HTTP request.

\(fn)" t nil)

(autoload 'jss-http-repl "jss-http-repl" "\


\(fn &optional INITIAL-ENDPOINT)" t nil)

;;;***

;;;### (autoloads nil nil ("jss-browser-api.el" "jss-browser-firefox.el"
;;;;;;  "jss-browser-webkit.el" "jss-console.el" "jss-debugger.el"
;;;;;;  "jss-deferred.el" "jss-io-pretty-printers.el" "jss-io.el"
;;;;;;  "jss-pkg.el" "jss-prompt.el" "jss-remote-value.el" "jss-script.el"
;;;;;;  "jss-super-mode.el" "jss-utils.el" "jss.el") (24142 31738
;;;;;;  0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; jss-autoloads.el ends here
