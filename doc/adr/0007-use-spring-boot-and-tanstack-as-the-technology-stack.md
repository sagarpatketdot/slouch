# 7. Use spring-boot and tanstack as the technology stack

Date: 2025-06-26

## Status

Accepted

## Context

What will be the technology stack for developing Slouch?

## Decision

Use spring-boot as the back-end for Slouch. Use tanstack as the front-end.

## Consequences

Spring-boot enables rapid prototyping from Technical Architecture to implementation.
Spring-boot can handle 10x more concurrent requests than alternatives such as NodeJS and Python-based backend.

Tan-stack provides a Backend-for-frontend framework implementation based on ReactJS, and provides hassle-free integration with the backend.
It also provides isomorphic ReactJS out-of-the-box. This means that not only does it provide faster first-load times due to server-side-rendering, it also provides a SPA implementation for smoother user experience.
