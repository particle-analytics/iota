# Spatial Averaging
This section allows users to define the options for the the spatial averaging process:

![](/assets/iota-cg-Averaging_spatial_avg_cropped.PNG) <a name="Ioata-CG-SpatialAvg"></a>

_Figure 51 - "Spatial Averaging" section of [coarse-graining](/coarse_graining/cg_setting_cg.md) module._ 



* **Function**: users can select between different weight functions:
   * ``Gaussian``: particles' contibution varies according to the [Gaussian function](https://en.wikipedia.org/wiki/Normal_distribution) of the given ``width``.
   * ``Heaviside``: particles' contibution will be equally-weighted, no matter where it lies in the region being averaged over.
   * ``Lucy``: particles' contibution varies according to the following bell-shaped polynomial function of the given ``width``.   
* **Width**: For ``Gaussian`` function, this is the standard deviation of the funciton. For ``Heaviside``, this determines the size of the representative volume. 
* **Cutoff Factor**: The Cutoff Factor is used in combination with the ``Width`` to ignore particles whose contribution will be very small. Since the ``Gaussian`` function only becomes zero at infinity, all particles would contribute to the spatial average, most giving the tiniest of contributions.

  > The values of ``Width`` and ``Cutoff Factor`` are problem dependent, but for quasi-static problems or low speed flows a ``Width`` of 2.5 to 3.0 times the average particle radius can be considered a safe value. For high speed flows and high sampling frequencies, this value can be as low as half the average radius. A ``Cutoff Factor`` of 3.0 can be considered safe. In the case of high speed flows or sampling frequencies, this value can decrease to obtain a better resolution close to the boundaries. 
* **Spatial Integral**: this allows the users to select if spatial intergral will be preformed:
 * ``None``: If the user wants to perform spatial averaging over a sphere around each vertex of a volume coarse-graining mesh (for example, a mesh of tetrahedra) then (gradients aside) the parameters covered thus far in this section are sufficient to completely define the spatial averaging specifics.

 * ``1D``: If the user wants to perform spatial averaging over a circle around each vertex of a surface coarse-graining mesh where each particle's contribution is projected onto the plane defined by the mesh, and its distance from the plane plays no part in the final result, then the ``1D`` option is the one to chose. The Integration direction parameter [``X`` / ``Y`` / ``Z``] is used to define direction in which this projection takes place. For example, a coarse-graining mesh which lies in the "X=konst" plane would use the ``X`` integration direction.
>Such averaging is not limited to the use of such a planar coarse-graining mesh; one could chose 1D with a volumetric mesh and the projection would still take place at every vertex, but this would probably lead to repetition of your results and they would only vary across the chosen integration direction, not along it.

 * ``2D``:  If the user wants to perform integration along a line through the data, where each particle's contribution is projected onto that line and only their distance along that line determines how they are filtered (not how far they are from it), then the ``2D`` option is the one to chose. The Integration plane parameter [``XY`` / ``YZ`` / ``XZ``] specifies the components which are ignored, when such a projection takes place. For example, a coarse-graining mesh consisting of a line of points parallel to the Z axis would use ``XY`` as the integration plane parameter.
As we the case with ``1D``, such averaging is not limited to a particular type of coarse-graining mesh; one could chose 2D with a volumetric or planar mesh and the projection would still take place at every vertex, but this would probably lead to even more repetition of your results and they would not vary across the chosen integration plane, only with distance away from it.  
* **Gradients**: Activate the calculation of spatial gradients during the averaging process. The gradients will be chosen in the results menu for the standard results: Density, Solid fraction, Momentum, and Velocity.


