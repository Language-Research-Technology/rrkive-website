---
title: 'RRKive Home'
date: 2024
draft: false
---

# THIS IS A DRAFT / Work in progress that LDaCA staff are preparing for a workshop in early February 2024 -- if you have suggestions, or issues - please open issues on our [github project](https://github.com/Language-Research-Technology/rrkive-website)

<b>The RRKive.org website is an initiative of the Language Data Commons of Australia; one of the partners of the [Australian Research Data Commons (ARDC)](https://ardc.edu.au).</b>

This site is designed to capture a set of principles and architectural vision for sustainable Data Commons deployments. See the [background page](./background/) for a summary previous work; one of the key inspirations for Arkisto and now RRKive was the approach taken by PARADISEC.

The initial version of the site (Q1 2024) is intended to be the start of a conversation with our partners and stakeholders, inviting them to critique and refine these principles with a view to adopting them as part of manifesto, and/or standard approach. Initially this is word-heavy, but we aim to introduce some graphics to help explai

> In a data commons - where's the data?

In research contexts, it has been common for investment to be prioritised in research tools for analysis and/or presentation, often at the cost of locking up data in sofware stacks that make re-use and long-term access difficult.

Core principles for a sustainable FAIR/CARE data commons architecture:

1. *Separate concerns between*:

    a. a Workspaces where data is collected, curated, described and analysed

    b. Archival repositories that provide data persistence, persistent ID resolution and appropriate access control 


3. <b>Archival Repositories</b> Data:

    a. Should be kept in *a storage service* that allows access using standard tools (ideally it can be mounted as a file system)

    a. should be organized into digital objects or tractable size with (as far as possible common licensing) for reuse using a documented standard, with a documented way to resolve identifiers to objects and their part

    b. Linked-data style metadata should be kept alongside data for describing data objects, files and context, and relationships between objects (such as collection/object hierarchies). 

    c. As far as possible EVERYTHING needed to manage data over the long term and to make it available independently of particular software should be included in the storage, and metadata 

4. <b>Tools:</b> should allow data access to be bootstrapped from the storage service eg

    a. Creating indexes, lists, static web summaries of the data in a storage service for administrators

    b. Public or limited-access Web portals that can provide access controlled human and machine interfaces to metadata and data

5. <b>Workspaces</b>:
   a. Analytics should decoupled from the data storage and should consume and data via APIs referencing data using persistent IDs
   b. Data onboarding workflows may use APIs, or trusted well goveren

There are two main standards which are used in the LDaCA implementation of the above RRKive principles has been tested, used in production at works at a scale that is appropriate for language collections of millions of files and objects:

1. The Oxford Common File Layout (OCFL) is used to for the data storage layer.

2. Research Object Crate (RO-Crate) is used to for describing objects within the storage.  

Our partners at the PARADISEC  have implemented a simpler storage layer than OCFL and in the process have created a library that allows it to be used interchangaebly with OCFL.

While LDaCA is part of the Humanitites and Social Sciences and Indigenous Research Data Commons, this vision is by no means limited to that scope -- these ideas are relevant to all research domains where data is available as file-based objects at a scale that can be managed in file system-like storage.