---
id: TASK-1
title: Add greeting.txt
status: Done
assignee:
  - '@ralph'
created_date: '2026-11-25 15:26'
updated_date: '2026-11-25 17:01'
labels: []
dependencies: []
references:
  - 'https://github.com/phdah/ralph-smoke/pull/2'
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
- [x] #1 greeting.txt exists at the repo root
- [x] #2 greeting.txt contains exactly one line: hello from ralph
- [x] #3 ./check.sh passes
<!-- AC:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Create greeting.txt at repo root containing exactly 'hello from ralph'.
2. Run ./check.sh to verify.
3. Update ticket state and publish PR.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
PR: https://github.com/phdah/ralph-smoke/pull/2 (branch ralph/task-1-add-greeting-txt). ./check.sh passes.
<!-- SECTION:NOTES:END -->

## Final Summary

<!-- SECTION:FINAL_SUMMARY:BEGIN -->
Added greeting.txt at repo root containing exactly 'hello from ralph'. Verified: file present, single line with no extra content, and ./check.sh prints 'check: ok' (exit 0).
<!-- SECTION:FINAL_SUMMARY:END -->
