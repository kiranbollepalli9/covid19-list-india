class CovidCasesController < ApplicationController
  def index
    apiClient = CovidCases.new
    @dataList = apiClient.getStatewiseSorted
  end
end
