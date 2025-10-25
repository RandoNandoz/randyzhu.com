---
title: ExploTest
layout: single
excerpt: ExploTest is a dynamic unit test generated aimed to create high quality unit tests from easy to conduct, but expensive integration tests.
permalink: /project/explotest
collection: projects
header:
    teaser: /assets/Testing_Pyramid.avif
---

ExploTest is a dynamic unit test generated aimed to create high quality unit tests from easy to conduct, but expensive integration tests.

I got interested in ExploTest while `curl`ing an API end point that I was designing, rather than
writing a unit test, as a sloppy, new developer I was. I ended up contacting Dr. Lemieux, my current thesis supervisor to work on it along with one of my friends, and was awarded the NSERC USRA to work on it for the
summer of 2025.

When programs are executed, procedures are called, a typical flow of procedure calls looks like:

`main() -> f() -> g() -> done!`

Performing an end-to-end test involves executing the whole program, so by profiling the program, we're able to
capture the function arguments and return values to create unit tests.
This technique is called ["Unit Test Carving", first discovered by David Saff in Michael Ernst's lab.](https://homes.cs.washington.edu/~mernst/pubs/test-factoring-ase2005.pdf)

In our example, if the integration test exercised `main`, `f`, and `g`, then we'd be able to produce unit tests
for all of these functions. This would, in theory, produce a regression testing suite for the codebase.

Saving the arguments to `f` and `g` are nontrivial in non-research programs, due to external state, 
unserializable objects, and various other complications.

Typically, serialization is done, but serialization suffers from poor support for program evolution (e.g., when a class changes, de-serializing an older version of it leads to unexpected/incorrect state, or an error)

Therefore, in the summer of 2025, we worked on expanding the universe of arguments that could be saved,
by exploring techniques such as:
 - A novel way of serializing by reconstructing the attributes of an object
 - Dynamic and static slicing to reproduce the arguments.
 - LLM-guided mock generation to improve the quality of unit tests
 - Automated unit test oracle generation.

Our work can be found here, at: [github.com/kliu04/explotest](https://github.com/kliu04/explotest).

You can also find our research poster for this summer below:

# Research Poster
<object data="{{ site.url }}{{ site.baseurl }}/assets/explotest-research-poster.pdf" width="2000" height="2000" type="application/pdf"></object>