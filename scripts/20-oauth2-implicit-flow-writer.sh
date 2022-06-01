#!/bin/bash
firefox "https://localhost:8443/oauth/authorize?response_type=token&client_id=writer&redirect_uri=http://my.redirect.uri&scope=product:read+product:write&state=95372"
