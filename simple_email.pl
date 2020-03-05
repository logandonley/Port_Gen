#!/usr/bin/perl
use strict;
use warnings;

# first, create your message
use Email::MIME;
my $message = Email::MIME->create(
  header_str => [
    From    => 'johns2te@gmail.com',
    To      => 'tjohnson@cloudbees.com',
    Subject => 'Welcome To CloudBees!',
  ],
  attributes => {
    encoding => 'quoted-printable',
    charset  => 'ISO-8859-1',
  },
  body_str => "CloudBees!\n",
);

# send the message
use Email::Sender::Simple qw(sendmail);
sendmail($message);
