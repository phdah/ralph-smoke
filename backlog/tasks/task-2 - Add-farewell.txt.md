---
id: TASK-2
title: Add farewell.txt
status: In Progress
assignee: []
created_date: '2026-11-26 11:06'
updated_date: '2026-11-26 11:28'
labels:
  - in-review
dependencies: []
ordinal: 2000
---

## Description

<!-- SECTION:DESCRIPTION:BEGIN -->
Create farewell.txt at the repository root containing exactly one line: goodbye from ralph
<!-- SECTION:DESCRIPTION:END -->

## Acceptance Criteria
<!-- AC:BEGIN -->
- [x] #1 farewell.txt exists at the repository root
- [x] #2 farewell.txt contains exactly the single line: goodbye from ralph
- [x] #3 ./check.sh passes
<!-- AC:END -->

## Implementation Plan

<!-- SECTION:PLAN:BEGIN -->
1. Red: from the repository root, run `test -f farewell.txt && printf 'goodbye from ralph\n' | cmp -s - farewell.txt`; confirm it fails because farewell.txt is absent.
2. Green: create only farewell.txt at the repository root with exact bytes `goodbye from ralph\n`.
3. Verify: run `test -f farewell.txt`, `printf 'goodbye from ralph\n' | cmp -s - farewell.txt`, and `./check.sh`; all must exit 0.
4. Commit the scoped change locally, then hand the same checks and plan to the tester.
<!-- SECTION:PLAN:END -->

## Implementation Notes

<!-- SECTION:NOTES:BEGIN -->
Builder iteration started on branch ralph/TASK-2-add-farewell from clean main. Planning is in progress; no implementation has started.

Baseline verification on the ticket branch before implementation: ./check.sh exited 0 with output `check: ok`. The farewell-specific acceptance checks still require implementation and verification.

Planner reported STATUS: DONE. Question: which line ending should the single line use, and should check.sh be extended? Adopted answer: use exactly `goodbye from ralph` followed by one trailing LF, matching greeting.txt; leave check.sh unchanged and verify exact bytes separately because modifying it would expand scope. No blocking questions remain.

TDD seams adopted from the planner: filesystem artifact (`test -f farewell.txt`), exact bytes (`printf 'goodbye from ralph\n' | cmp -s - farewell.txt`), and existing repository behavior (`./check.sh`).

Round 1 coder reported STATUS: DONE. Red seam check exited 1 before creation because farewell.txt was absent. After creating only farewell.txt, `test -f farewell.txt` exited 0, exact-byte cmp exited 0, and `./check.sh` exited 0 with `check: ok`. Byte inspection confirmed `goodbye from ralph\n` (19 bytes). Implementation committed locally as 7c994e6 (`TASK-2: add farewell file`); nothing pushed. Independent tester verification is pending.

Round 1 independent tester reported STATUS: PASS. `test -f farewell.txt` exited 0; exact-byte cmp against `goodbye from ralph\n` exited 0; `./check.sh` exited 0 with `check: ok`. Tester confirmed the committed diff adds only farewell.txt, its 19 bytes contain one trailing LF and no CR or extra content, and check.sh and greeting.txt are unchanged. All three acceptance criteria are checked on this objective evidence. Standards and Spec reviews are pending; nothing has been pushed.

Review completed once with fixed point origin/main. Standards reviewer: VERDICT: APPROVED, no findings; single trailing LF, no whitespace errors, no documented convention breached. Spec reviewer: VERDICT: APPROVED, no findings; exact required root artifact and content, all acceptance criteria met, no scope creep. No fix round was needed. Last tester report remains STATUS: PASS, so publication is authorized.

PR opened: https://github.com/phdah/ralph-smoke/pull/3. Ticket is In Progress with label `in-review`. Publication followed independent STATUS: PASS evidence: root-file existence exit 0, exact-byte cmp exit 0, and `./check.sh` exit 0 with `check: ok`; Standards and Spec reviews both approved with no findings. No blocked or needs-human label was present.
<!-- SECTION:NOTES:END -->
