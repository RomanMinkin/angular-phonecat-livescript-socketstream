#!/usr/bin/env livescript

http = require \http
ss = require \socketstream

ss.client.define \app,
  view: \index.html
  css: ['app.less','bootstrap.css']
  code: ['libs', 'app']
  tmpl: ['partials']

ss.http.router.on \/app, (req, res)->
  res.serve \app

ss.client.define \e2e,
  view: \runner.html
  css: []
  code: ['e2e']
  tmpl: []
ss.http.router.on \/test/e2e/runner.html, (req, res)->
  res.serve \e2e

ss.client.templateEngine.use 'angular', '/partials'
ss.client.formatters.add require \ss-livescript
ss.client.formatters.add require \ss-jade
ss.client.formatters.add require \ss-less
ss.client.packAssets()  if ss.env is "production"


server = http.createServer ss.http.middleware
ss.start server

if not process.env.SS_PACK
  server.listen 4000
  console.log 'server on http://localhost:4000'
