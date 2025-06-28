# 6. Use k8s as the deployment platform

Date: 2025-06-26

## Status

Accepted

## Context

What platform will be used to host Slouch?

## Decision

Use k8s as the platform.

## Consequences

k8s being an open-source cloud native platform will always remain open.
It also provides vendor-lockin by de-coupling the deployment platform from cloud providers. The platform can be conveniently migrated to a different cloud provider without changing the business logic or technology.
