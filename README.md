# Hands-On Lab: Audit Logging, Category Trees, and Safe Migrations

## Overview

This project demonstrates important PostgreSQL database administration and development techniques, including audit logging, hierarchical data modeling, versioned database migrations, and least-privilege access control.

The lab was completed using PostgreSQL and Flyway.

## Objectives

The main objectives of this lab were to:

- Track database changes automatically using audit triggers.
- Create and query hierarchical data using recursive CTEs.
- Manage database schema changes using Flyway migrations.
- Apply least-privilege security using PostgreSQL roles and grants.
- Verify read-only and write permissions.

## 1. Audit Logging

An `audit_log` table was created to record changes made to database tables.

An `audit()` trigger function was created and attached to the `students` table.

The trigger records:

- Table name
- Operation performed
- Old row data
- New row data
- User who made the change
- Timestamp of the change

The following operations were tested:

- UPDATE
- DELETE
- UPDATE through the API user

## 2. Hierarchical Categories

A self-referencing `categories` table was created using `parent_id`.

The category hierarchy was:

```text
Electronics
  Computers
    Laptops
  Phones
