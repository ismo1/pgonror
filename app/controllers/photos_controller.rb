# encoding: utf-8
# PGonror is the corporate web site framework of Le Parti de Gauche based on Ruby on Rails.
# 
# Copyright (C) 2013 Le Parti de Gauche
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# 
# See doc/COPYRIGHT.rdoc for more details.
class PhotosController < ApplicationController
  before_action :find_article, :only => [:diaporama]

  def index
    @pages = Article.count_pages_published 'diaporama'
    @articles = Article.find_published 'diaporama', @page
    @article = Article.find_published_by_uri(@uri) if not @uri.blank?
  end

  def diaporama
  end
end