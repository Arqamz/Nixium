{ inputs, ... }:

{
    nixosConfigurations = let 
    
    ## flake inputs ##
    hw = inputs.nixos-hardware.nixosModules; # hardware compatibility modules
    # agenix = inputs.agenix.nixosModules.default; # secret encryption via age

    # # Specify root path for the modules. The concept is similar to modulesPath
    # # that is found in nixpkgs, and is defined in case the modulePath changes
    # # depth (i.e modules becomes nixos/modules).
    # modulePath = ../modules;

    # coreModules = modulePath + /core; # the path where common modules reside
    # extraModules = modulePath + /extra; # the path where extra modules reside
    # options = modulePath + /options; # the module that provides the options for my system configuration

    # ## common modules ##
    # # The opinionated defaults for all systems, generally things I want on all hosts
    # # regardless of their role in the general ecosystem. E.g. both servers and workstations
    # # will share the defaults below.
    # common = coreModules + /common; # the self-proclaimed sane defaults for all my systems
    # profiles = coreModules + /profiles; # force defaults based on selected profile

    # ## roles ##
    # # Roles either provide an additional set of defaults on top of the core module
    # # or override existing defaults for role-specific optimizations.
    # iso = coreModules + /roles/iso; # for providing a uniform ISO configuration for live systems - only the build setup
    # headless = coreModules + /roles/headless; # for devices that are of the headless type - provides no GUI
    # graphical = coreModules + /roles/graphical; # for devices that are of the graphical type - provides a GUI
    # workstation = coreModules + /roles/workstation; # for devices that are of workstation type - any device that is for daily use
    # server = coreModules + /roles/server; # for devices that are of the server type - provides online services
    # laptop = coreModules + /roles/laptop; # for devices that are of the laptop type - provides power optimizations

    # # extra modules - optional but likely critical to a successful build
    # sharedModules = extraModules + /shared; # the path where shared modules reside

    # # a list of shared modules that ALL systems need
    # shared = [
    #   sharedModules # consume my flake's own nixosModules
    #   agenix # age encryption for secrets
    # ];

    # # mkModulesFor generates a list of modules to be imported by any host with
    # # a given hostname. Do note that this needs to be called *in* the nixosSystem
    # # set, since it generates a *module list*, which is also expected by system
    # # builders.
    # mkModulesFor = hostname: {
    #   moduleTrees ? [options common profiles],
    #   roles ? [],
    #   extraModules ? [],
    # } @ args:
    #   flatten (
    #     concatLists [
    #       # Derive host specific module path from the first argument of the
    #       # function. Should be a string, obviously.
    #       (singleton ./${hostname}/host.nix)

    #       # Recursively import all module trees (i.e. directories with a `module.nix`)
    #       # for given moduleTree directories, and in addition, roles.
    #       (map (path: mkModuleTree' {inherit path;}) (concatLists [moduleTrees roles]))

    #       # And append any additional lists that don't don't conform to the moduleTree
    #       # API, but still need to be imported somewhat commonly.
    #       args.extraModules
    #     ]
    #   );

    in {
        # My primary system
        # Dell E6540 with an i7-4610M CPU and an AMD Radeon HD 8790M dGPU
        asylum = inputs.nixpkgs.lib.nixosSystem {
            specialArgs = { inherit inputs; };
            modules = [
                ./carbon/configuration.nix
            ];
        };
    };
}