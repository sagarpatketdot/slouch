# 2. Chat as primary interface

Date: 2025-06-26

## Status

Accepted

## Context

While many developer integration platform interfaces are practical, they may be extremely opinionated or complex with lot of navigation and data points. The primary interface has to be simple to understand and extensible at the same time.

## Decision

Chat is a primary interface people are familiar with. In addition to providing a mechanism for developers to collaborate over chat messages, App integrations can also appear as chat bots to publish messages to the developers.

Each collaboration happens within the context of a Workspace which has a title, logo, and a slug. Workspaces have administrators who can invite members and configure default channels.

All users can create channels, which are a group of people. Channels can be private or public. Only the workspace administrator can make a channel default (so that new members automatically join the channel).

Users can search for public channels within a workspace and join them. Administrators can view all public and private channels.

## Consequences

As a result, the interface is not bloated with navigation, and provides an intuitive interface to interact with Applications as chat bots, just as users would interact with fellow collaborators.
