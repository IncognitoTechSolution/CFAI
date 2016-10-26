class ReportStepsController < ApplicationController
  include Wicked::Wizard
  steps :filer, :report

  def show
    render_wizard
  end
end
