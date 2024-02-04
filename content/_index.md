---
bibliography: /Users/pt/Dropbox/Zotero-library.bib
date: 2024
draft: false
title: RRKive Home
---

# THIS IS A DRAFT / Work in progress that LDaCA staff are preparing for a workshop in early February 2024 -- if you have suggestions, or issues - please open issues on our [github project](https://github.com/Language-Research-Technology/rrkive-website)

The RRKive.org website is an initiative of the Language Data Commons of
Australia; one of the partners of the [Australian Research Data Commons
(ARDC)](https://ardc.edu.au). The initial version of the site (Q1 2024)
is intended to be the start of a conversation with our partners and
stakeholders, inviting them to critique and refine these principles with
a view to collective adoption as part of manifesto, and/or standard
architecture for Data Commons.

Initially this is technical and word-heavy, but we aim to introduce some
graphics to help explain the concepts -- once we have brought on board
more collaborators and refined these principles.

# What's a Data Commons and where's the data in one?

Following the lead of Jenny Fewster, HASS and Indigenous Research Data
Commons Director at the Australian Research Data Commons (ARDC) we use
this definition for *Data Commons* Grossman et al. (2016):

> A global trusted system of systems that provides frictionless access
> to high quality interoperable resources, services and artefacts for
> research.

The abstract of this article says:

> Data commons collocate data, storage, and computing infrastructure
> with core services and commonly used tools and applications for
> managing, analyzing, and sharing data to create an interoperable
> resource for the research community.

NOTE: This definition differs from others in that it does not use the
word "open", which is important, as not all research data can be made
openly available; according to the \[FAIR\] and \[CARE\] principles can
and should be made accessible to the *right* people / agents. For some
background on FAIR and CARE see this [LDaCA blog
post](https://www.ldaca.edu.au/posts/fair-and-care/).

This web site looks at the *core services* and infrastructure needed to
undertake the processes mentioned in the definition: managing,
analyzing, and sharing; we do that below, paying particular attention to
where the data resides in a Data Commons.

# This is about Research Data Commons deployments

This site is about:

1.  A set of principles and an architectural vision for sustainable Data
    Commons deployments, particularly for data management.

2.  A toolkit for deploying granular sustainable archival repository
    software which can describe and make data accessible down to and
    *inside of* the files and datasets but using commodity IT systems to
    ensure data interoperability

3.  Enabling the 'interoperability' mentioned in the definition of a
    Data Commons above.

One of the key inspirations for RRKive was the approach taken by
\[PARADISEC\] See the [background page](./background/) where data is
stored and managed using a very simple architecture with data and
metadata at its heart sitting, on top of commodity IT services;
initially this was a file-system and is now cloud-based object storage.
The key idea was that the data should always be available to
administrators independently of particular software services (though
because some data is not open it is not possible to just put data up on
an open webserver -- mediation is needed).

## Scope: what people, domains, institutions, kinds and scales of data is this relevant for?

This site is for leaders and implementers of Research Data Commons
projects AND general research data management practitioners looking to
choose, manage or establish sustainable CARE and FAIR compliant data
management solutions that will work with research services.

This site is relevant to any research or cultural domain, where teams
are establishing data management infrastructure -- the initial uses case
and implementations are mainly from the Humanities and Social Sciences,
with some "sciencey" and generalist deployments.

## Not in scope

There are a number of data management / Data Commons scenarios where
this will be less relevant.

Parts of this site are less relevant for domains where very bit of
existing and prospective data, and all analytical products and
annotations have an identified home with:

-   Persistent Identification
-   Sustainable secure storage for raw and derived data and research
    outputs at useful granularity -- eg down to individually addressable
    items, files or variables within files
-   Appropriate access control
-   Catalogues / portals to make data discoverable
-   APIs to integrate and interoperate with analytical and data curation
    processes

## Core principles for a sustainable FAIR/CARE data commons architecture:

In research contexts, it has been common for investment to be
prioritized in research tools for analysis and/or presentation, often at
the cost of locking up data in software stacks that make re-use and
long-term access difficult, or focus on short term projects with data
without ensuring its longevity. Research teams and IT professionals
often focus on product -- doing novel analyses using data flows and
integration without putting in place the services needed for research
integrity; assigning IDs and ensuring that those IDs resolve to data
over the long term.

### Principle 1: Separate Archival Storage FUNCTIONS from Workspaces

An overriding principle for the RRKive approach is to *Separate concerns
between*:

1.  Workspaces where data is collected, curated, described and analyzed

2.  Archival repositories that provide data persistence, persistent ID
    resolution and appropriate access control

### Principle 2: Ensure Archival Repository storage is not locked to a single software stack

1.  Keep data in a commodity IT storage system with more than one mode
    of access

2.  Divide up data into chunks ("objects")

3.  Keep metadata in a standard format adjacent to data files

4.  Aim for "rebuildability" of services (eg catalogues & access
    control) from the storage system

5.  Include a natural-language license with each object setting out how
    data may be used and/or redistributed and by WHOM

<!-- 
1. Data storage must follow a documented standard so that services can be rebuilt if needed; this is important as experience has show us that systems rarely live beyond 10 - 15 years, and this approach reduces the risk of losing access to data,


    1. Data is organized as digital objects.  

      1. Collections are represented  as storage-level objects; either self contained or as metadata referencing other storage-level objects. 

      1. Storage directory-like hierarchies may group data together in collections or by “owner” on similar paths; to aid in moving data between services using file-system tools (unlike approaches which completely obscure all meaning in paths eg the default OCFL settings).

    1. There is a documented way to resolve identifiers to digital objects even offline or when services are no longer available
    
    1.  Each data object has a natural language license which sets out rules for re-use - for non-Open Access data an authorization service must be implemented if data are put on the internet

1. Metadata must use a documented linked-data standard (eg RO-Crate – based on Schema.org for discovery metadata  and the Portland Common Data model for intra-repository collection/object relationships).
    
    1. with object-level metadata adjacent to any files or data assets (typically in a directory in the storage service)

    1. Data is described at least at the object level, and may be described at the file or variable level within files

1. Software

    1. The storage service MUST have at least one software tool  to (i) list all objects and (ii) retrieve metadata and data from an object.

    1. Data SHOULD be indexable and made available locally (on a single machine or local network) via static websites, spreadsheets using a variety of approaches depending on the requirements and budget, using freely available tools

    1. Data MAY be made available via simple APIs. 

    1. Access control is provided by systems that enable the individuals to be *granted* the licenses described above – to avoid the risk of coding access control rules into a repository application in a way that creates lock-in.

 -->
### Principle 3: Use an extensible linked-data metadata format

Linked Data allows:

1.  Any conceivable data structure to be described

2.  Vocabularies to be mixed-in as needed; from a core set for all data
    to domain-specific to project or even dataset-specific terms.

3.  Interoperability with global research information systems
    architectures, discovery services etc

While LDaCA is part of the Humanities and Social Sciences and Indigenous
Research Data Commons, this vision is by no means limited to that scope
-- these ideas are relevant to all domains where data is available as
file-based objects at a scale that can be managed in file system-like
storage.

Grossman, Robert L., Allison Heath, Mark Murphy, Maria Patterson, and
Walt Wells. 2016. "A Case for Data Commons: Toward Data Science as a
Service." *Computing in Science & Engineering* 18 (5): 10--20.
<https://doi.org/10.1109/MCSE.2016.92>.
