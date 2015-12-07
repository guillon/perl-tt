#!/usr/bin/env perl

use inc::Module::Install;

name 'perl-tt';
perl_version '5.010';
author 'Christophe Guillon <christophe.guillon@st.com>';
abstract 'Simple script for using perl Template Toolkit';
license 'gpl';
version_from 'script/perl-tt';
install_script 'perl-tt';

requires 'Scalar::Util' => 0;
requires 'Data::Dump'  => 0;
requires 'File::Slurp'  => 0;
requires 'JSON'  => 0;
requires 'Storable'  => 0;
requires 'PAR::Packer' => 0;
requires 'Template'  => 2.26;

test_requires 'Test::More' => 0;
test_requires 'Test::Exception' => 0;

WriteAll;
