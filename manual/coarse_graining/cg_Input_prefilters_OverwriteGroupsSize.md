#Overwrite Groups by Size

This pre-filter allows users to overwrite the group ID of the particles based on their size before processing the DEM data with the [coarse-graning](/coarse_graining/cg_setting_cg.md). The creation of the groups by size follows a similar logic to sieving process. Users can define different sieve sizes so that the software will automatically group the particles based on their radius (or equivalent radius for non-spherical particles) and the size of the sieves.

An example of this pre-filter is shown in _Figure 45_ where the user defined three different sieve sizes (0.01, 0.02 and 0.03). In this case, the software will group the particles in four different groups so that the particles included in each group will have their radius ($$r$$) ranged as:
* Group_0:   $$ r < 0.01 $$
* Group_1:   $$ 0.01 \leq r < 0.02 $$
* Group_2:   $$ 0.02 \leq r < 0.03 $$
* Group_3:   $$ r \geq 0.03 $$ 

![](/assets/iota-cg-Input_Overwrite_Groups_By_Size_cropped.PNG) <a name="Iota-CG-OverwriteGroupsSize"></a>

_Figure 45- "Overwrite Groups by Size" pre-filter of the [coarse-graining](/coarse_graining/cg_setting_cg.md) module._

> Note: this feature can be useful to analyse **mixing** and **segregation** by size processes so that the user can customize groups ID without the need to define them before running the DEM simulation.     