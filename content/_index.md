---
bibliography: /Users/pt/Dropbox/Zotero-library.bib
date: 2024
draft: false
title: RRKive Home
---



This site collects resources related to implementing Archival Repository (RRKive) solutions as part of a *Data Commons* based on a set of Protocols know as [PILARS]: Principles for Implementing Long-term Archival Repository Services.  <https://w3id.org/ldac/pilars>

The PILARS protocols are maintained as stand-alone project managed in a [Git repository](https://github.com/Language-Research-Technology/pilars).

[PILARS]: https://w3id.org/ldac/pilars "Principles for Implementing Long-term Archival Repository Services"

# What's a Data Commons and where's the data in one?

Following the lead of Jenny Fewster, HASS and Indigenous Research Data
Commons Director at the Australian Research Data Commons (ARDC) we use
this definition for *Data Commons* (Grossman et al. (2016)):

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
openly available; according to the [CARE and FAIR] principles can
and should be made accessible to the *right* people / agents. For some
background on CARE and FAIR in a Data Commons context see this [Language Data Commons of Australia blog
post](https://www.ldaca.edu.au/posts/fair-and-care/).

[CARE and FAIR]: https://language-research-technology.github.io/pilars/principles.html "CARE and FAIR principles (Annotated for PILARS)"

This web site looks at the *core services* and infrastructure needed to
undertake the processes mentioned in the definition: managing,
analyzing, and sharing; we do that below, paying particular attention to
where the data resides in a Data Commons.

# This is about Research Data Commons deployments

This site is about:

1. Implementation advice for the PILARS protocols.

2.  A toolkit for deploying granular sustainable archival repository
    software which can describe and make data accessible down to and
    *inside of* the files and datasets but using commodity IT systems to
    ensure data interoperability

3.  Enabling the 'interoperability' mentioned in the definition of a
    Data Commons above.

One of the key inspirations for [PILARS] was the approach taken by
[PARADISEC](https://www.paradisec.org.au/about-us/) (Barwick and
Thieberger (2018)) where data is stored and managed using a very simple
architecture with data and metadata at its heart sitting, on top of
commodity IT services; initially this was a file-system and is now
cloud-based object storage. The key idea was that the data should always
be available to administrators independently of particular software
services (though because some data is not open it is not possible to
just put data up on an open webserver -- access control is needed).

This site is an evolution of a previous effort know as Arkisto, see the
[background page](./background/).

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
this will be less relevant; where very bit of
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

The RRKive.org website is an initiative of the Language Data Commons of
Australia; one of the partners of the [Australian Research Data Commons
(ARDC)](https://ardc.edu.au). 

