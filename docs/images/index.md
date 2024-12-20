# Developing images

EB corbos Linux is intended as an embedded Linux distribution build kit, like Yocto.
Instead of starting from a pre-defined and pre-configured already integrated image, the user can describe the image needed to solve the problem in an easy, clean and maintainable way, and the EB corbos Linux SDK will build exactly this image.
In comparison to Yocto, where all packages are built from scratch, EB corbos Linux is using the packages from the Canonical Ubuntu distribution.
This has the advantage that the same binaries are used which run on millions of servers in the cloud, and millions of single board computers.
The effort to qualify and security-maintain these packages is shared with all these users.
To keep all these advantages, it is mandatory to use the pre-built binaries, and accept the limitations caused by this.

We also know from our experience with automotive ECUs that embedded solutions often have very special needs, and that it may be not possible to stick with the defaults set by Canonical Ubuntu in all cases.
For such edge cases, the EBcL SDK provides everything to modify a package, and use the modified variant instead of the default package.
If this way is chosen, large parts of the benefits of the Canonical packages are dropped, and a solution specific maintenance and qualification is needed, causing effort over the whole lifetime of the embedded solution.

Customers of EB corbos Linux can order such adaptations, including the qualification and maintenance of the customer specific package, as an add-on to the EB corbos Linux base offer.
Using the defaults where possible, and adapt where really needed, delivers the needed flexibility for complex embedded solutions, while minimizing the development, qualification and maintenance efforts.
