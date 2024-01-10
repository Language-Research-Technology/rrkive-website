---
title: 'RRKive Home'
date: 2024
draft: false
---

# THIS IS A DRAFT / Work in progress that LDaCA staff are preparing for a workshop in early February 2024 -- if you have suggestions, or issues - please open issues on our [github project](https://github.com/Language-Research-Technology/rrkive-website)

<b>The RRKive.org website is an initiative of the Language Data Commons of Australia; one of the partners of the [Australian Research Data Commons (ARDC)](https://ardc.edu.au).</b>

This site is designed to capture a set of principles and architectural vision for sustainable Data Commons deployments. See the [background page](./background/) for a summary previous work; one of the key inspirations for Arkisto and now RRKive was the approach taken by PARADISEC.

The initial version of the site (Q1 2024) is intended to be the start of a conversation with our partners and stakeholders, inviting them to critique and refine these principles with a view to collective adoption as part of manifesto, and/or standard architecture for Data Commons.

 Initially this is technical and word-heavy, but we aim to introduce some graphics to help explain the concepts -- once we have brought on board more collaborators and refined these principles.

> In Data Commons - where do the data live?

In research contexts, it has been common for investment to be prioritized in research tools for analysis and/or presentation, often at the cost of locking up data in software stacks that make re-use and long-term access difficult, or focus on short term projects with data without ensuring its longevity.

## Core principles for a sustainable FAIR/CARE data commons architecture:

An  overriding principle is to *Separate concerns between*:
  a. Workspaces where data is collected, curated, described and analyzed

  b. Archival repositories that provide data persistence, persistent ID resolution and appropriate access control 


## Principles for Archival Repositories

RRKive is mostly concerned with the Archival Repositories domain:

1. Data storage must follow a documented standard (eg  OCFL)

    1. Data is stored in a storage service which can be presented as a file system and/or via simple open source libraries.

    1. Data is organized as digital objects.  

      1. Collections are represented  as storage-level objects; either self contained or as metadata referencing other storage-level objects. 

      1. Storage directory-like hierarchies may group data together in collections or by “owner” on similar paths; to aid in moving data between services using file-system tools (unlike approaches which completely obscure all meaning in paths eg the default OCFL settings).

    1. There is a documented way to resolve identifiers to digital objects even offline or when services are no longer available
    
    1.  Each data object has a natural language license which sets out rules for re-use - for non-Open Access data an authorization service must be put in place if data are put on the internet

1. Metadata must use a documented linked-data standard (eg RO-Crate – based on Schema.org for discovery metadata  and the Portland Common Data model for intra-repository collection/object relationships).
    
    1. with object-level metadata adjacent to any files or data assets (typically in a directory in the storage service)

    1. Data is described at least at the object level, and may be described at the file or variable level within files

1. Software

    1. The storage service must have at least one software tool  to (i) list all objects and (ii) retrieve metadata and data from an object.

    1. Data may be indexed and made available locally (on a single machine or local network) via static websites, spreadsheets using a variety of approaches depending on the requirements and budget

    1. Access control is provided by systems that enable the individuals to be *granted* the licenses described above – to avoid the risk of coding access control rules into a repository application in a way that creates lock-in.


While LDaCA is part of the Humanities and Social Sciences and Indigenous Research Data Commons, this vision is by no means limited to that scope -- these ideas are relevant to all domains where data is available as file-based objects at a scale that can be managed in file system-like storage.