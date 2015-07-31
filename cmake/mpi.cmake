#------------------------------------------------------------------------------#
# Copyright (c) 2014 Los Alamos National Security, LLC
# All rights reserved.
#------------------------------------------------------------------------------#

include(FindMPI)

#------------------------------------------------------------------------------#
# Add option to enable MPI
#------------------------------------------------------------------------------#

option(ENABLE_MPI "Enable MPI" OFF)

if(ENABLE_MPI)

#------------------------------------------------------------------------------#
# Find MPI
#------------------------------------------------------------------------------#

find_package(MPI REQUIRED)

if(${MPI_C_FOUND})
    include_directories(${MPI_C_INCLUDE_PATH})
endif(${MPI_C_FOUND})

#------------------------------------------------------------------------------#
# Skip C++ linkage of MPI
#------------------------------------------------------------------------------#

add_definitions(-DOMPI_SKIP_MPICXX)
add_definitions(-DMPICH_SKIP_MPICXX)

endif(ENABLE_MPI)

#------------------------------------------------------------------------------#
# Formatting options for emacs and vim.
# vim: set tabstop=4 shiftwidth=4 expandtab :
#------------------------------------------------------------------------------#
