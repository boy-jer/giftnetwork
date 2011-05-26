class Members::ApplicationController < ApplicationController
  before_filter :authenticate_member!
  protect_from_forgery
end
