#!/usr/bin/env python

from jinja2 import Environment, FileSystemLoader

environment = Environment(loader=FileSystemLoader("."))
template = environment.get_template("api.fbs.j2")

print(template.render())
