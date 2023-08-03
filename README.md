# kernel_config-chunks
A place where I'll keep my chunks of kernel .configs, that can be combined depending on what I want to do with that specific system..

I took inspiration from [Egberts's page](https://wiki.gentoo.org/wiki/User:Egberts/Drafts/Gentoo_Kernel_Configuration_Guide) on the gentoo wiki.

## what's the purpose of this
I found myself many times configuring a system from scratch, for a specific purpose.  
I like the kernel configuration process, but every time I need a new system with different requirements, that kernel config/build step 
can easily take you an hour.. and it's human-error prone  

This solution allows you to configure kernels fast AND help you learn more about the whole process and 
all the options involved, by logically separating them by purpose.  
Otherwise, from `make menuconfig` is just a big tangle of options.

## how to use this
It all revolves around the ./scripts/kconfig/merge_config.sh script in the linux tree.  
See the x7merge_config.sh script

What I usually do is start from a fresh .config in the linux tree:
```bash
cd /path/to/linux
make allnoconfig
```

And then add the chunks with:
```bash
DIR=/path/to/repo/kernel_config-chunks
./scripts/kconfig/merge_config.sh -n .config $DIR/this_chunk.config $DIR/this_other_cunk.config # and so on..
```

Then just `make install` and update bootloader

#### why x7?
I always keep the toplevel logic in .sh files prepended by "x7", so that I'll know for sure that those are
my own doing, and I can easily go there to see all the notes I left and the useful commands+options that
I need to run the project.

Most of the times the comments/commands are dumb, but veery useful if I come back to the project
after a long time.
