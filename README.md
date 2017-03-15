Basic-block vectorization for graphics compilers
------------------------------------------------

### Abstract


Increasingly complex graphics shaders and new use cases like OpenCL provide increased opportunities for vectorization, due the the larger code-bases they provide. Unlike general-purpose microprocessors, graphics microprocessors can feasibly be equipped with just vector registers. By already having data in vector registers, some of the cost of vectorization can be avoided, which leads to vectorization being simpler on graphics microprocessors than on most general-purpose microprocessors.

Graphics compilers mostly do compilation during the run-time of applications, which makes compilation time a serious aspect of any GPU compiler transformation.

In this thesis two basic-block vectorizers suitable for graphics compilers and microprocessors are presented and evaluated.
