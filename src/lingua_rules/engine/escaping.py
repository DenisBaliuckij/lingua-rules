"""Shared helpers for embedding user-supplied text in Clingo string literals.

Every place that interpolates a linguist-supplied value into an ``.lp`` program
-- whether it is executed immediately (``runner.generate_form``) or written to
disk for later execution (``templates.append_rule``) -- must route the value
through these two functions first. Without them a value containing a ``"`` can
break out of its string literal and inject arbitrary ASP clauses.
"""

from __future__ import annotations


class UnsafeFieldValueError(Exception):
    """Raised when a value cannot be safely embedded in a Clingo string literal."""


def escape_clingo_string(value: str) -> str:
    """Escape backslashes and double quotes for a Clingo string literal.

    Order matters: backslashes first, so the backslashes introduced when
    escaping quotes are not themselves doubled.
    """
    return value.replace("\\", "\\\\").replace('"', '\\"')


def reject_unsafe_characters(value: str, field_name: str) -> None:
    """Reject characters that no amount of escaping makes safe.

    Clingo string literals cannot span lines, so a newline or carriage return
    would terminate the literal no matter how it is escaped.
    """
    if "\n" in value or "\r" in value:
        raise UnsafeFieldValueError(
            f"{field_name} {value!r} contains a newline, which cannot appear in a "
            "Clingo string literal"
        )
