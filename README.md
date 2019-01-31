# puppet-yum_delay

#### Table of Contents

1. [Overview - What is the yum_delay module?](#overview)
2. [Usage - Configuration and customization options](#usage)
3. [Reference - Parameter and detailed reference to all options](#reference)
    * [Public Classes](#public-classes)
4. [Compatibility - Operating system and Puppet compatibility](#compatibility)

## Overview

The yum_delay module adds a plugin to the yum package to delay updating packages that are newer than X hours.

## Usage

### Class: yum_delay

The default parameters will add a yum plugin that will delay updates for 24 hours after reaching a repository.

This module has only been tested with CentOS 7. If you have compatibility updates, please create a documentation update.

This is an example of delaying package installation by 72 hours.

    class { 'yum_delay':
      delay => 72,
    }


## Reference

* [Public Classes](#public-classes)
  * [Class: yum_delay](#class-yum_delay)

### Public Classes

#### Class: `yum_delay`:

Installs and configures a delay feature for yum updates.  Default values in Hiera format are below.

##### `ensure`

Defines the presence of `yum-delay`.  Valid values are 'present' and 'absent'. Default is `'present'`.

##### `delay`

Defines the number of hours to delay installation of updates from yumn repositories.  Default is `24`.

## Compatibility

This module should be compatible with all CentOS 7 based operating systems and Puppet 4.7.x and later.

It has only been tested on:

* CentOS 7.6
