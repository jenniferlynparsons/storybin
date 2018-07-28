- [About the project](#about-the-project)
    - [Project Overview](#project-overview)
        - [Stack](#stack)
        - [Development progress](#development-progress)
        - [Goals](#goals)
        - [Roles](#roles)
        - [Features](#features)
            - [Users](#users)
            - [Editors](#editors)
            - [Admins](#admins)
    - [Changelog](#changelog)
        - [0.0.11: Jul 28, 2018](#0011-jul-28-2018)
        - [0.0.10: Jul 21, 2018](#0010-jul-21-2018)
        - [0.0.9: Jul 7, 2018](#009-jul-7-2018)
        - [0.0.8: Jun 30, 2018](#008-jun-30-2018)
        - [0.0.7: Jun 6, 2018](#007-jun-6-2018)
        - [0.0.6: May 2, 2018](#006-may-2-2018)
        - [0.0.5: Apr 22, 2018](#005-apr-22-2018)
        - [0.0.4: Apr 16, 2018](#004-apr-16-2018)
        - [0.0.3: Apr 15, 2018](#003-apr-15-2018)
        - [0.0.2: Apr 14, 2018](#002-apr-14-2018)
        - [0.0.1: Apr 12, 2018](#001-apr-12-2018)
        - [0.0.0: Apr 12, 2018](#000-apr-12-2018)

# About the project
Storybin is a submission management application for use by literary magazines.

## Project Overview

### Stack
- Ruby on Rails 5.0
- PostgreSQL
- JQuery (required for some gems)
- Bulma CSS framework

### Development progress

- Current version: 0.0
- [Project board](https://trello.com/c/udgG86Qa)

### Goals
Storybin should be a user-friendly app for managing short story submissions as it’s main goal.
Additionally, I want to use it as a platform for learning and developing my skills in Rails and Ruby.

### Roles
Users fall into three categories:
* Submitters - can only view their own submissions and works and the statuses of the submissions. Additionally they can view Author comments on submissions.
* Editors - Can view all submissions and interact with them, voting and adding comments
* Admin - Can create Issues, manage Users, and accept/reject stories.
Additionally, any of these users may have subcategories of user for translators (Authors), slush readers (Editors), and assistant admins (Admin).

### Features
#### Users
* registration
* CRUD submissions
* CRUD works

#### Editors
* Vote on submissions
* View submission links
* Comment on submissions
* Tag submissions with genres
* View dashboard of recent comments and votes
* Filter submissions by status and assignment
* Flag submissions for various reasons (non-speculative, etc.)

#### Admins
* CRUD Issues
* CRUD other users
* Assign submissions
* Accept and reject submissions

## Changelog

### 0.0.11: Jul 28, 2018

    [Fixed] 
    - Cleaned up the templates

### 0.0.10: Jul 21, 2018

    [Added] 
    - Set up work/sub/issue has_many through

### 0.0.9: Jul 7, 2018

    [Added] 
    - Associated Works with Users
    - Set up user profile page and display associated works

### 0.0.8: Jun 30, 2018

    [Added] 
    - Added file upload functionality via Shrine
    - Added issue, work, and submissions modules

### 0.0.7: Jun 6, 2018

    [Added] 
    - Added issue scaffold
    - Set up first and last name fields and user registration
    - Added figaro and updated gemfile, etc.

    [Changed] 
    - Install on Linux machine for further development

### 0.0.6: May 2, 2018

    [Added] 
    - Set up first and last name fields and user registration

### 0.0.5: Apr 22, 2018

    [Added] 
    - set up basic tests
    - start of rspec setup
    - devise email setup for dev env!
    - initalized pundit and made sure secrets file is ignored

### 0.0.4: Apr 16, 2018

    [Fixed] cleaned up devise views + minor html fixes

### 0.0.3: Apr 15, 2018

    [Fixed] 
    - Hot damn Devise and my db are happy again

    [Added] 
    - Created Static page functionality
  
    [Removed] 
    - Removed coffeescript 
    - Removed simple form gem

### 0.0.2: Apr 14, 2018

    [Added] 
    - Added coverage to gitignore
    - Added annotate and more config stuff
    - Update rubocop
    - Basic setup rspec, capybara, overcommit, rubocop
    
    [Changed] 
    - Disable overcommit because it won't play nice with git gui

### 0.0.1: Apr 12, 2018

    [Added] 
    - Added jquery for minimal JS needs 
    
    [Changed] 
    - Abandoned Administrate gem

### 0.0.0: Apr 12, 2018

    [Added] 
    - Rails new!
    - Initial rails configuration
    - Initial commit