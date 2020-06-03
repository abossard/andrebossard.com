---
title: How to host a free website with Github, Hugo and Netlify CMS
date: 2020-06-03T20:31:45.587Z
description: How to host a free website with Github, Hugo and Netlify CMS
---
Requirements

* github account
* netlify cms
* heroku account

Steps

1. Create a Github pages site, [see docs](https://help.github.com/en/github/working-with-github-pages/creating-a-github-pages-site)
1. Create another repository with an empty Hugo project, [see here](https://gohugo.io/getting-started/quick-start/)
1. Create a github action to deploy this the empty hugo project to the github pages repository. Refer to [this](https://github.com/abossard/andrebossard.com/blob/master/.github/workflows/main.yml)
1. Oh yeah, don't forget to create a secret with a token that allows pushing
1. Deploy a fork of the netlify github auth server to heroku: [repo](https://github.com/vencax/netlify-cms-github-oauth-provider)
1. Create a new github oauth application and add the entries to the heroku configuration
1. Point the config.yml of the netlify cms to your heroku instance.

