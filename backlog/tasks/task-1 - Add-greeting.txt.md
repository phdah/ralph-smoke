---
id: TASK-1
title: Add greeting.txt
status: In Progress
assignee:
  - '@ralph'
created_date: '2026-11-25 15:26'
updated_date: '2026-11-25 16:29'
labels: []
dependencies: []
priority: medium
type: task
ordinal: 1000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Create greeting.txt at the repository root with the exact line: hello from ralph
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [ ] #1 greeting.txt exists at the repo root
- [ ] #2 greeting.txt contains exactly one line: hello from ralph
- [ ] #3 ./check.sh passes
<!-- AC:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Create greeting.txt at repo root containing exactly 'hello from ralph'.
2. Run ./check.sh to verify.
3. Update ticket state and publish PR.
<!-- SECTION:PLAN:END -->
