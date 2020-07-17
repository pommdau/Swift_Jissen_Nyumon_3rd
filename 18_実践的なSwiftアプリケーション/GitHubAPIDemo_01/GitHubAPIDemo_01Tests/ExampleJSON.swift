//
//  ExampleJSON.swift
//  GitHubAPIDemo_01Tests
//
//  Created by HIROKI IKEUCHI on 2020/07/18.
//  Copyright © 2020 hikeuchi. All rights reserved.
//

import GitHubAPIDemo_01


extension User {
    static var exampleJSON: String {
        return """
        {
          "login": "apple",
          "id": 10639145,
          "node_id": "MDEyOk9yZ2FuaXphdGlvbjEwNjM5MTQ1",
          "avatar_url": "https://avatars0.githubusercontent.com/u/10639145?v=4",
          "gravatar_id": "",
          "url": "https://api.github.com/users/apple",
          "html_url": "https://github.com/apple",
          "followers_url": "https://api.github.com/users/apple/followers",
          "following_url": "https://api.github.com/users/apple/following{/other_user}",
          "gists_url": "https://api.github.com/users/apple/gists{/gist_id}",
          "starred_url": "https://api.github.com/users/apple/starred{/owner}{/repo}",
          "subscriptions_url": "https://api.github.com/users/apple/subscriptions",
          "organizations_url": "https://api.github.com/users/apple/orgs",
          "repos_url": "https://api.github.com/users/apple/repos",
          "events_url": "https://api.github.com/users/apple/events{/privacy}",
          "received_events_url": "https://api.github.com/users/apple/received_events",
          "type": "Organization",
          "site_admin": false
        }
        """
    }
}

extension Repository {
    static var exampleJSON: String {
        return """
        {
          "id": 44838949,
          "node_id": "MDEwOlJlcG9zaXRvcnk0NDgzODk0OQ==",
          "name": "swift",
          "full_name": "apple/swift",
          "private": false,
          "owner": {
            "login": "apple",
            "id": 10639145,
            "node_id": "MDEyOk9yZ2FuaXphdGlvbjEwNjM5MTQ1",
            "avatar_url": "https://avatars0.githubusercontent.com/u/10639145?v=4",
            "gravatar_id": "",
            "url": "https://api.github.com/users/apple",
            "html_url": "https://github.com/apple",
            "followers_url": "https://api.github.com/users/apple/followers",
            "following_url": "https://api.github.com/users/apple/following{/other_user}",
            "gists_url": "https://api.github.com/users/apple/gists{/gist_id}",
            "starred_url": "https://api.github.com/users/apple/starred{/owner}{/repo}",
            "subscriptions_url": "https://api.github.com/users/apple/subscriptions",
            "organizations_url": "https://api.github.com/users/apple/orgs",
            "repos_url": "https://api.github.com/users/apple/repos",
            "events_url": "https://api.github.com/users/apple/events{/privacy}",
            "received_events_url": "https://api.github.com/users/apple/received_events",
            "type": "Organization",
            "site_admin": false
          },
          "html_url": "https://github.com/apple/swift",
          "description": "The Swift Programming Language",
          "fork": false,
          "url": "https://api.github.com/repos/apple/swift",
          "forks_url": "https://api.github.com/repos/apple/swift/forks",
          "keys_url": "https://api.github.com/repos/apple/swift/keys{/key_id}",
          "collaborators_url": "https://api.github.com/repos/apple/swift/collaborators{/collaborator}",
          "teams_url": "https://api.github.com/repos/apple/swift/teams",
          "hooks_url": "https://api.github.com/repos/apple/swift/hooks",
          "issue_events_url": "https://api.github.com/repos/apple/swift/issues/events{/number}",
          "events_url": "https://api.github.com/repos/apple/swift/events",
          "assignees_url": "https://api.github.com/repos/apple/swift/assignees{/user}",
          "branches_url": "https://api.github.com/repos/apple/swift/branches{/branch}",
          "tags_url": "https://api.github.com/repos/apple/swift/tags",
          "blobs_url": "https://api.github.com/repos/apple/swift/git/blobs{/sha}",
          "git_tags_url": "https://api.github.com/repos/apple/swift/git/tags{/sha}",
          "git_refs_url": "https://api.github.com/repos/apple/swift/git/refs{/sha}",
          "trees_url": "https://api.github.com/repos/apple/swift/git/trees{/sha}",
          "statuses_url": "https://api.github.com/repos/apple/swift/statuses/{sha}",
          "languages_url": "https://api.github.com/repos/apple/swift/languages",
          "stargazers_url": "https://api.github.com/repos/apple/swift/stargazers",
          "contributors_url": "https://api.github.com/repos/apple/swift/contributors",
          "subscribers_url": "https://api.github.com/repos/apple/swift/subscribers",
          "subscription_url": "https://api.github.com/repos/apple/swift/subscription",
          "commits_url": "https://api.github.com/repos/apple/swift/commits{/sha}",
          "git_commits_url": "https://api.github.com/repos/apple/swift/git/commits{/sha}",
          "comments_url": "https://api.github.com/repos/apple/swift/comments{/number}",
          "issue_comment_url": "https://api.github.com/repos/apple/swift/issues/comments{/number}",
          "contents_url": "https://api.github.com/repos/apple/swift/contents/{+path}",
          "compare_url": "https://api.github.com/repos/apple/swift/compare/{base}...{head}",
          "merges_url": "https://api.github.com/repos/apple/swift/merges",
          "archive_url": "https://api.github.com/repos/apple/swift/{archive_format}{/ref}",
          "downloads_url": "https://api.github.com/repos/apple/swift/downloads",
          "issues_url": "https://api.github.com/repos/apple/swift/issues{/number}",
          "pulls_url": "https://api.github.com/repos/apple/swift/pulls{/number}",
          "milestones_url": "https://api.github.com/repos/apple/swift/milestones{/number}",
          "notifications_url": "https://api.github.com/repos/apple/swift/notifications{?since,all,participating}",
          "labels_url": "https://api.github.com/repos/apple/swift/labels{/name}",
          "releases_url": "https://api.github.com/repos/apple/swift/releases{/id}",
          "deployments_url": "https://api.github.com/repos/apple/swift/deployments",
          "created_at": "2015-10-23T21:15:07Z",
          "updated_at": "2019-05-14T23:36:31Z",
          "pushed_at": "2019-05-15T00:35:17Z",
          "git_url": "git://github.com/apple/swift.git",
          "ssh_url": "git@github.com:apple/swift.git",
          "clone_url": "https://github.com/apple/swift.git",
          "svn_url": "https://github.com/apple/swift",
          "homepage": "https://swift.org",
          "size": 420361,
          "stargazers_count": 47712,
          "watchers_count": 47712,
          "language": "C++",
          "has_issues": false,
          "has_projects": false,
          "has_downloads": true,
          "has_wiki": false,
          "has_pages": false,
          "forks_count": 7603,
          "mirror_url": null,
          "archived": false,
          "disabled": false,
          "open_issues_count": 534,
          "license": {
            "key": "apache-2.0",
            "name": "Apache License 2.0",
            "spdx_id": "Apache-2.0",
            "url": "https://api.github.com/licenses/apache-2.0",
            "node_id": "MDc6TGljZW5zZTI="
          },
          "forks": 7603,
          "open_issues": 534,
          "watchers": 47712,
          "default_branch": "master",
          "score": 156.49236
        }
        """
    }
}

extension SearchResponse where Item == Repository {
    static var exampleJSON: String {
        return """
        {
          "total_count": 141722,
          "incomplete_results": false,
          "items": [
            {
              "id": 44838949,
              "node_id": "MDEwOlJlcG9zaXRvcnk0NDgzODk0OQ==",
              "name": "swift",
              "full_name": "apple/swift",
              "private": false,
              "owner": {
                "login": "apple",
                "id": 10639145,
                "node_id": "MDEyOk9yZ2FuaXphdGlvbjEwNjM5MTQ1",
                "avatar_url": "https://avatars0.githubusercontent.com/u/10639145?v=4",
                "gravatar_id": "",
                "url": "https://api.github.com/users/apple",
                "html_url": "https://github.com/apple",
                "followers_url": "https://api.github.com/users/apple/followers",
                "following_url": "https://api.github.com/users/apple/following{/other_user}",
                "gists_url": "https://api.github.com/users/apple/gists{/gist_id}",
                "starred_url": "https://api.github.com/users/apple/starred{/owner}{/repo}",
                "subscriptions_url": "https://api.github.com/users/apple/subscriptions",
                "organizations_url": "https://api.github.com/users/apple/orgs",
                "repos_url": "https://api.github.com/users/apple/repos",
                "events_url": "https://api.github.com/users/apple/events{/privacy}",
                "received_events_url": "https://api.github.com/users/apple/received_events",
                "type": "Organization",
                "site_admin": false
              },
              "html_url": "https://github.com/apple/swift",
              "description": "The Swift Programming Language",
              "fork": false,
              "url": "https://api.github.com/repos/apple/swift",
              "forks_url": "https://api.github.com/repos/apple/swift/forks",
              "keys_url": "https://api.github.com/repos/apple/swift/keys{/key_id}",
              "collaborators_url": "https://api.github.com/repos/apple/swift/collaborators{/collaborator}",
              "teams_url": "https://api.github.com/repos/apple/swift/teams",
              "hooks_url": "https://api.github.com/repos/apple/swift/hooks",
              "issue_events_url": "https://api.github.com/repos/apple/swift/issues/events{/number}",
              "events_url": "https://api.github.com/repos/apple/swift/events",
              "assignees_url": "https://api.github.com/repos/apple/swift/assignees{/user}",
              "branches_url": "https://api.github.com/repos/apple/swift/branches{/branch}",
              "tags_url": "https://api.github.com/repos/apple/swift/tags",
              "blobs_url": "https://api.github.com/repos/apple/swift/git/blobs{/sha}",
              "git_tags_url": "https://api.github.com/repos/apple/swift/git/tags{/sha}",
              "git_refs_url": "https://api.github.com/repos/apple/swift/git/refs{/sha}",
              "trees_url": "https://api.github.com/repos/apple/swift/git/trees{/sha}",
              "statuses_url": "https://api.github.com/repos/apple/swift/statuses/{sha}",
              "languages_url": "https://api.github.com/repos/apple/swift/languages",
              "stargazers_url": "https://api.github.com/repos/apple/swift/stargazers",
              "contributors_url": "https://api.github.com/repos/apple/swift/contributors",
              "subscribers_url": "https://api.github.com/repos/apple/swift/subscribers",
              "subscription_url": "https://api.github.com/repos/apple/swift/subscription",
              "commits_url": "https://api.github.com/repos/apple/swift/commits{/sha}",
              "git_commits_url": "https://api.github.com/repos/apple/swift/git/commits{/sha}",
              "comments_url": "https://api.github.com/repos/apple/swift/comments{/number}",
              "issue_comment_url": "https://api.github.com/repos/apple/swift/issues/comments{/number}",
              "contents_url": "https://api.github.com/repos/apple/swift/contents/{+path}",
              "compare_url": "https://api.github.com/repos/apple/swift/compare/{base}...{head}",
              "merges_url": "https://api.github.com/repos/apple/swift/merges",
              "archive_url": "https://api.github.com/repos/apple/swift/{archive_format}{/ref}",
              "downloads_url": "https://api.github.com/repos/apple/swift/downloads",
              "issues_url": "https://api.github.com/repos/apple/swift/issues{/number}",
              "pulls_url": "https://api.github.com/repos/apple/swift/pulls{/number}",
              "milestones_url": "https://api.github.com/repos/apple/swift/milestones{/number}",
              "notifications_url": "https://api.github.com/repos/apple/swift/notifications{?since,all,participating}",
              "labels_url": "https://api.github.com/repos/apple/swift/labels{/name}",
              "releases_url": "https://api.github.com/repos/apple/swift/releases{/id}",
              "deployments_url": "https://api.github.com/repos/apple/swift/deployments",
              "created_at": "2015-10-23T21:15:07Z",
              "updated_at": "2019-05-14T23:36:31Z",
              "pushed_at": "2019-05-15T00:35:17Z",
              "git_url": "git://github.com/apple/swift.git",
              "ssh_url": "git@github.com:apple/swift.git",
              "clone_url": "https://github.com/apple/swift.git",
              "svn_url": "https://github.com/apple/swift",
              "homepage": "https://swift.org",
              "size": 420361,
              "stargazers_count": 47712,
              "watchers_count": 47712,
              "language": "C++",
              "has_issues": false,
              "has_projects": false,
              "has_downloads": true,
              "has_wiki": false,
              "has_pages": false,
              "forks_count": 7603,
              "mirror_url": null,
              "archived": false,
              "disabled": false,
              "open_issues_count": 534,
              "license": {
                "key": "apache-2.0",
                "name": "Apache License 2.0",
                "spdx_id": "Apache-2.0",
                "url": "https://api.github.com/licenses/apache-2.0",
                "node_id": "MDc6TGljZW5zZTI="
              },
              "forks": 7603,
              "open_issues": 534,
              "watchers": 47712,
              "default_branch": "master",
              "score": 156.49236
            },
            {
              "id": 790019,
              "node_id": "MDEwOlJlcG9zaXRvcnk3OTAwMTk=",
              "name": "swift",
              "full_name": "openstack/swift",
              "private": false,
              "owner": {
                "login": "openstack",
                "id": 324574,
                "node_id": "MDEyOk9yZ2FuaXphdGlvbjMyNDU3NA==",
                "avatar_url": "https://avatars3.githubusercontent.com/u/324574?v=4",
                "gravatar_id": "",
                "url": "https://api.github.com/users/openstack",
                "html_url": "https://github.com/openstack",
                "followers_url": "https://api.github.com/users/openstack/followers",
                "following_url": "https://api.github.com/users/openstack/following{/other_user}",
                "gists_url": "https://api.github.com/users/openstack/gists{/gist_id}",
                "starred_url": "https://api.github.com/users/openstack/starred{/owner}{/repo}",
                "subscriptions_url": "https://api.github.com/users/openstack/subscriptions",
                "organizations_url": "https://api.github.com/users/openstack/orgs",
                "repos_url": "https://api.github.com/users/openstack/repos",
                "events_url": "https://api.github.com/users/openstack/events{/privacy}",
                "received_events_url": "https://api.github.com/users/openstack/received_events",
                "type": "Organization",
                "site_admin": false
              },
              "html_url": "https://github.com/openstack/swift",
              "description": "OpenStack Storage (Swift)",
              "fork": false,
              "url": "https://api.github.com/repos/openstack/swift",
              "forks_url": "https://api.github.com/repos/openstack/swift/forks",
              "keys_url": "https://api.github.com/repos/openstack/swift/keys{/key_id}",
              "collaborators_url": "https://api.github.com/repos/openstack/swift/collaborators{/collaborator}",
              "teams_url": "https://api.github.com/repos/openstack/swift/teams",
              "hooks_url": "https://api.github.com/repos/openstack/swift/hooks",
              "issue_events_url": "https://api.github.com/repos/openstack/swift/issues/events{/number}",
              "events_url": "https://api.github.com/repos/openstack/swift/events",
              "assignees_url": "https://api.github.com/repos/openstack/swift/assignees{/user}",
              "branches_url": "https://api.github.com/repos/openstack/swift/branches{/branch}",
              "tags_url": "https://api.github.com/repos/openstack/swift/tags",
              "blobs_url": "https://api.github.com/repos/openstack/swift/git/blobs{/sha}",
              "git_tags_url": "https://api.github.com/repos/openstack/swift/git/tags{/sha}",
              "git_refs_url": "https://api.github.com/repos/openstack/swift/git/refs{/sha}",
              "trees_url": "https://api.github.com/repos/openstack/swift/git/trees{/sha}",
              "statuses_url": "https://api.github.com/repos/openstack/swift/statuses/{sha}",
              "languages_url": "https://api.github.com/repos/openstack/swift/languages",
              "stargazers_url": "https://api.github.com/repos/openstack/swift/stargazers",
              "contributors_url": "https://api.github.com/repos/openstack/swift/contributors",
              "subscribers_url": "https://api.github.com/repos/openstack/swift/subscribers",
              "subscription_url": "https://api.github.com/repos/openstack/swift/subscription",
              "commits_url": "https://api.github.com/repos/openstack/swift/commits{/sha}",
              "git_commits_url": "https://api.github.com/repos/openstack/swift/git/commits{/sha}",
              "comments_url": "https://api.github.com/repos/openstack/swift/comments{/number}",
              "issue_comment_url": "https://api.github.com/repos/openstack/swift/issues/comments{/number}",
              "contents_url": "https://api.github.com/repos/openstack/swift/contents/{+path}",
              "compare_url": "https://api.github.com/repos/openstack/swift/compare/{base}...{head}",
              "merges_url": "https://api.github.com/repos/openstack/swift/merges",
              "archive_url": "https://api.github.com/repos/openstack/swift/{archive_format}{/ref}",
              "downloads_url": "https://api.github.com/repos/openstack/swift/downloads",
              "issues_url": "https://api.github.com/repos/openstack/swift/issues{/number}",
              "pulls_url": "https://api.github.com/repos/openstack/swift/pulls{/number}",
              "milestones_url": "https://api.github.com/repos/openstack/swift/milestones{/number}",
              "notifications_url": "https://api.github.com/repos/openstack/swift/notifications{?since,all,participating}",
              "labels_url": "https://api.github.com/repos/openstack/swift/labels{/name}",
              "releases_url": "https://api.github.com/repos/openstack/swift/releases{/id}",
              "deployments_url": "https://api.github.com/repos/openstack/swift/deployments",
              "created_at": "2010-07-22T01:50:07Z",
              "updated_at": "2019-05-14T08:16:37Z",
              "pushed_at": "2019-05-15T00:11:01Z",
              "git_url": "git://github.com/openstack/swift.git",
              "ssh_url": "git@github.com:openstack/swift.git",
              "clone_url": "https://github.com/openstack/swift.git",
              "svn_url": "https://github.com/openstack/swift",
              "homepage": "https://opendev.org",
              "size": 104583,
              "stargazers_count": 1897,
              "watchers_count": 1897,
              "language": "Python",
              "has_issues": false,
              "has_projects": false,
              "has_downloads": false,
              "has_wiki": false,
              "has_pages": false,
              "forks_count": 951,
              "mirror_url": null,
              "archived": false,
              "disabled": false,
              "open_issues_count": 0,
              "license": {
                "key": "apache-2.0",
                "name": "Apache License 2.0",
                "spdx_id": "Apache-2.0",
                "url": "https://api.github.com/licenses/apache-2.0",
                "node_id": "MDc6TGljZW5zZTI="
              },
              "forks": 951,
              "open_issues": 0,
              "watchers": 1897,
              "default_branch": "master",
              "score": 119.23655
            },
            {
              "id": 20822291,
              "node_id": "MDEwOlJlcG9zaXRvcnkyMDgyMjI5MQ==",
              "name": "SwiftGuide",
              "full_name": "ipader/SwiftGuide",
              "private": false,
              "owner": {
                "login": "ipader",
                "id": 373016,
                "node_id": "MDQ6VXNlcjM3MzAxNg==",
                "avatar_url": "https://avatars3.githubusercontent.com/u/373016?v=4",
                "gravatar_id": "",
                "url": "https://api.github.com/users/ipader",
                "html_url": "https://github.com/ipader",
                "followers_url": "https://api.github.com/users/ipader/followers",
                "following_url": "https://api.github.com/users/ipader/following{/other_user}",
                "gists_url": "https://api.github.com/users/ipader/gists{/gist_id}",
                "starred_url": "https://api.github.com/users/ipader/starred{/owner}{/repo}",
                "subscriptions_url": "https://api.github.com/users/ipader/subscriptions",
                "organizations_url": "https://api.github.com/users/ipader/orgs",
                "repos_url": "https://api.github.com/users/ipader/repos",
                "events_url": "https://api.github.com/users/ipader/events{/privacy}",
                "received_events_url": "https://api.github.com/users/ipader/received_events",
                "type": "User",
                "site_admin": false
              },
              "html_url": "https://github.com/ipader/SwiftGuide",
              "description": "Swift Featured Projects in brain Mapping",
              "fork": false,
              "url": "https://api.github.com/repos/ipader/SwiftGuide",
              "forks_url": "https://api.github.com/repos/ipader/SwiftGuide/forks",
              "keys_url": "https://api.github.com/repos/ipader/SwiftGuide/keys{/key_id}",
              "collaborators_url": "https://api.github.com/repos/ipader/SwiftGuide/collaborators{/collaborator}",
              "teams_url": "https://api.github.com/repos/ipader/SwiftGuide/teams",
              "hooks_url": "https://api.github.com/repos/ipader/SwiftGuide/hooks",
              "issue_events_url": "https://api.github.com/repos/ipader/SwiftGuide/issues/events{/number}",
              "events_url": "https://api.github.com/repos/ipader/SwiftGuide/events",
              "assignees_url": "https://api.github.com/repos/ipader/SwiftGuide/assignees{/user}",
              "branches_url": "https://api.github.com/repos/ipader/SwiftGuide/branches{/branch}",
              "tags_url": "https://api.github.com/repos/ipader/SwiftGuide/tags",
              "blobs_url": "https://api.github.com/repos/ipader/SwiftGuide/git/blobs{/sha}",
              "git_tags_url": "https://api.github.com/repos/ipader/SwiftGuide/git/tags{/sha}",
              "git_refs_url": "https://api.github.com/repos/ipader/SwiftGuide/git/refs{/sha}",
              "trees_url": "https://api.github.com/repos/ipader/SwiftGuide/git/trees{/sha}",
              "statuses_url": "https://api.github.com/repos/ipader/SwiftGuide/statuses/{sha}",
              "languages_url": "https://api.github.com/repos/ipader/SwiftGuide/languages",
              "stargazers_url": "https://api.github.com/repos/ipader/SwiftGuide/stargazers",
              "contributors_url": "https://api.github.com/repos/ipader/SwiftGuide/contributors",
              "subscribers_url": "https://api.github.com/repos/ipader/SwiftGuide/subscribers",
              "subscription_url": "https://api.github.com/repos/ipader/SwiftGuide/subscription",
              "commits_url": "https://api.github.com/repos/ipader/SwiftGuide/commits{/sha}",
              "git_commits_url": "https://api.github.com/repos/ipader/SwiftGuide/git/commits{/sha}",
              "comments_url": "https://api.github.com/repos/ipader/SwiftGuide/comments{/number}",
              "issue_comment_url": "https://api.github.com/repos/ipader/SwiftGuide/issues/comments{/number}",
              "contents_url": "https://api.github.com/repos/ipader/SwiftGuide/contents/{+path}",
              "compare_url": "https://api.github.com/repos/ipader/SwiftGuide/compare/{base}...{head}",
              "merges_url": "https://api.github.com/repos/ipader/SwiftGuide/merges",
              "archive_url": "https://api.github.com/repos/ipader/SwiftGuide/{archive_format}{/ref}",
              "downloads_url": "https://api.github.com/repos/ipader/SwiftGuide/downloads",
              "issues_url": "https://api.github.com/repos/ipader/SwiftGuide/issues{/number}",
              "pulls_url": "https://api.github.com/repos/ipader/SwiftGuide/pulls{/number}",
              "milestones_url": "https://api.github.com/repos/ipader/SwiftGuide/milestones{/number}",
              "notifications_url": "https://api.github.com/repos/ipader/SwiftGuide/notifications{?since,all,participating}",
              "labels_url": "https://api.github.com/repos/ipader/SwiftGuide/labels{/name}",
              "releases_url": "https://api.github.com/repos/ipader/SwiftGuide/releases{/id}",
              "deployments_url": "https://api.github.com/repos/ipader/SwiftGuide/deployments",
              "created_at": "2014-06-14T01:17:57Z",
              "updated_at": "2019-05-14T17:13:43Z",
              "pushed_at": "2019-04-18T04:45:00Z",
              "git_url": "git://github.com/ipader/SwiftGuide.git",
              "ssh_url": "git@github.com:ipader/SwiftGuide.git",
              "clone_url": "https://github.com/ipader/SwiftGuide.git",
              "svn_url": "https://github.com/ipader/SwiftGuide",
              "homepage": "",
              "size": 78168,
              "stargazers_count": 14289,
              "watchers_count": 14289,
              "language": "Swift",
              "has_issues": true,
              "has_projects": true,
              "has_downloads": true,
              "has_wiki": true,
              "has_pages": true,
              "forks_count": 3461,
              "mirror_url": null,
              "archived": false,
              "disabled": false,
              "open_issues_count": 0,
              "license": null,
              "forks": 3461,
              "open_issues": 0,
              "watchers": 14289,
              "default_branch": "master",
              "score": 117.48616
            }
          ]
        }
        """
    }
}
