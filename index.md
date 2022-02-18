---
layout: index
title: "OpenGen"
---

# What is OpenGen?
{: class="homepage"}

<br>

The goal of this site is to make **probabilistic modeling, inference, and learning** techniques accessible to a wider audience by 
listing a curated set of software tools and reusable modeling components 
that are based on a common set of design principles and interfaces.
These software de-emphasize the role of custom mathematical derivations in the use of state-of-the-art probabilistic modeling, inference, and learning techniques, and instead
encourage use of software engineering principles to simplify the implementation of these techniques.

One core design principle for these software is the **separation of concerns between the implementation of a probabilistic model and the implementation of inference and learning algorithms** that operate on the model.
This separation is based on an interface for models called the '**trace abstract data type**', which defines a set of core operations that are analogous to (and generalize) automatic differentiation as used in deep learning, but also support for incrementally optimizing and sampling hypotheses using model-based inference.
We call software that utilizes similar abstract data types to represent generative models as 'in the Gen paradigm'.

If a model is implemented in the Gen paradigm, then existing generic inference and learning algorithm implementations can be applied to it (reducing the amount of new code that has to be written),
and the model and the inference and learning algorithms can be modified more independently, allowing for more rapid experimentation.
Without this separation of concerns, it is easy to get stuck re-writing inference code from scratch when a changing the model.

The trace abstract data type is most closely aligned with **Monte Carlo** algorithms, but also supports **variational inference** algorithms, **deep learning** algorithms, and hybrid algorithms that combine all three inference and learning paradigms.
It is also compatible with symbolic inference algorithms.
An early version of this abstract data type is described in [this PhD thesis](https://www.mct.dev/assets/mct-thesis.pdf) and a 2019 PLDI paper ([paper](https://dl.acm.org/doi/10.1145/3314221.3314642), [bibtex](https://www.gen.dev/assets/gen-pldi.txt)).

**Probabilistic programming languages** can be used to automatically generate the implementation of the trace abstract data type from your declarative specification of the model.
You can also always implement the data type yourself for your model for more control and, usually, better performance, once it is time to optimize your implementation.

<br>
<div class="container">
    <div class="row">
    <div class="col-6 mx-auto">
        <img src="assets/images/gen-architecture.svg" class="img-fluid">
    </div>
    </div>
</div>
<br>

The core data type can also be implemented **compositionally**, which means that you can compose generaive models from smaller building blocks, which are themselves either implemented using a probabilistic programming language or by hand.
The compositionality of generative models in this paradigm makes it possible to develop reusable libraries of modeling components for different domains (see 'Domain-Specific Software', below).

While not every library listed on this site uses the same exact interface, the interfaces are similar to one another.
This means that after learning to write inference and learning code using one library, it should be relatively easy to pick up another library.

Probabilistic programming is a very active and still-early research field.
This site will aim to provide a vehicle for research projects that are compatible with the Gen paradigm to be adopted more widely as engineering tools.

# General-Purpose Software 
{: class="homepage"}

<div id="accordion">

  <!---
  ***************
  **** Julia ****
  ***************
  -->
  <div class="card">
    <div class="card-header" id="headingJulia">
      <h5 class="mb-0">
        <button class="btn btn-link" data-toggle="collapse" data-target="#collapseJulia" aria-expanded="true" aria-controls="julia">
          <h4>Julia</h4>
        </button>
      </h5>
    </div>

    <div id="collapseJulia" class="collapse show" aria-labelledby="headingOne" data-parent="#collapseJulia">
      <div class="card-body">

            <!-- Gen.jl -->
            <div class="card" id="genjl">
                <div class="card-body">
                    <h5 class="card-title">Gen.jl</h5>
                    <p class="card-text">
                        A general-purpose probabilistic programming system with programmable inference, embedded in Julia.
                    </p>
                    <a href="https://gen.dev/" class="btn btn-primary">Web Site</a>
                    <a href="https://github.com/probcomp/Gen.jl" class="btn btn-primary">GitHub</a>
                    <a href="https://gen.dev/dev/" class="btn btn-primary">Documentation</a>
                    <a href="https://gen.dev/tutorials/" class="btn btn-primary">Tutorials</a>
                    <a href="https://gen.dev/ecosystem/" class="btn btn-primary">Ecosystem</a>
                </div>
                <div class="card-footer d-flex justify-content-between">
                    <div></div>
                    <div class="text-success font-weight-bold">Supported</div>
                </div>
    </div>

      </div>
    </div>



  </div>

  <!---
  *************
  **** C++ ****
  *************
  -->
  <div class="card">
    <div class="card-header" id="cpp">
      <h5 class="mb-0">
        <button class="btn btn-link" data-toggle="collapse" data-target="#collapseCpp" aria-expanded="true" aria-controls="collapseCpp">
          <h4>C++</h4>
        </button>
      </h5>
    </div>

    <div id="collapseCpp" class="collapse show" aria-labelledby="headingOne" data-parent="#collapseCpp">
      <div class="card-body">

<div class="card" id="gentl">
    <div class="card-body">
        <h5 class="card-title">GenTL</h5>
        <p class="card-text">
            C++ template library for probabilistic inference and learning based on probabilistic programming
        </p>
        <a href="https://github.com/OpenGen/GenTL" class="btn btn-primary">GitHub</a>
    </div>
    <div class="card-footer d-flex justify-content-between">
        <div></div>
        <div class="text-warning font-weight-bold">Under development</div>
    </div>
</div>

<div class="card" id="gentorch">
    <div class="card-body">
        <h5 class="card-title">GenTorch</h5>
        <p class="card-text">
            Work-in-progress C++/LibTorch-based Gen probabilistic programming language
        </p>
        <a href="https://github.com/OpenGen/GenTorch" class="btn btn-primary">GitHub</a>
    </div>
    <div class="card-footer d-flex justify-content-between">
        <div>Compatible with <a href="#gentl">GenTL</a></div>
        <div class="text-warning font-weight-bold">Under development</div>
    </div>
</div>



    </div>
    </div>

  </div>

  <!---
  ****************
  **** Python ****
  ****************
  -->
  <div class="card">
    <div class="card-header" id="python">
      <h5 class="mb-0">
        <button class="btn btn-link" data-toggle="collapse" data-target="#collapsePython" aria-expanded="true" aria-controls="collapsePython">
          <h4>Python</h4>
        </button>
      </h5>
    </div>

    <div id="collapsePython" class="collapse show" aria-labelledby="headingOne" data-parent="#collapsePython">
      <div class="card-body">

<div class="card" id="pygen">
    <div class="card-body">
        <h5 class="card-title">PyGen</h5>
        <p class="card-text">
            A minimal Gen dynamic modeling language (DML) implementation in PyTorch
        </p>
        <a href="https://github.com/OpenGen/pygen" class="btn btn-primary">GitHub</a>
    </div>
    <div class="card-footer d-flex justify-content-between">
        <div></div>
        <div class="text-danger font-weight-bold">Experimental</div>
    </div>
</div>
    </div>
</div>
</div>


</div> <!-- general purpose software -->

# Domain-Specific Software 
{: class="homepage"}

<div id="accordion">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h5 class="mb-0">
        <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          <h4>Time series modeling</h4>
        </button>
      </h5>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#collapseOne">
      <div class="card-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      </div>
    </div>
  </div>

  <div class="card">
    <div class="card-header" id="headingTwo">
      <h5 class="mb-0">
        <button class="btn btn-link" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <h4>3D perception</h4>
        </button>
      </h5>
    </div>
    <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#collapseTwo">
      <div class="card-body">

<div class="card">
    <div class="card-body">
        <h5 class="card-title">PyGen</h5>
        <p class="card-text">
            A minimal Gen dynamic modeling language (DML) implementation in PyTorch
        </p>
        <a href="https://github.com/OpenGen/pygen" class="btn btn-primary">GitHub</a>
    </div>
    <div class="card-footer text-danger font-weight-bold">
        Experimental
    </div>
</div>

<div class="card">
    <div class="card-header">
        Compatible with <a href="#genjl">Gen.jl</a>
    </div>
    <div class="card-body">
        <h5 class="card-title">PyGen</h5>
        <p class="card-text">
            A minimal Gen dynamic modeling language (DML) implementation in PyTorch
        </p>
        <a href="https://github.com/OpenGen/pygen" class="btn btn-primary">GitHub</a>
    </div>
    <div class="card-footer text-danger font-weight-bold">
        Experimental
    </div>
</div>

</div> 
