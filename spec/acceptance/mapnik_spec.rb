
require_relative 'spec_helper_acceptance'

describe "the Mapnik toolkit" do

  describe ppa('ppa:ubuntugis/ppa') do
    it { should exist }
    it { should be_enabled }
  end

  %w{ gdal-bin zip libmapnik mapnik-utils libmapnik-dev mapnik-input-plugin-gdal mapnik-input-plugin-ogr mapnik-input-plugin-osm }.each do |package_name|
    describe package(package_name) do
      it { is_expected.to be_installed }
    end
  end
end
