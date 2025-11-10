#!/usr/bin/env python

from jinja2 import Environment, FileSystemLoader

environment = Environment(loader=FileSystemLoader("."))
template = environment.get_template("api.proto.j2")

print(template.render())
