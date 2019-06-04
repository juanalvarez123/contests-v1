# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

# Admin layout 
Rails.application.config.assets.precompile += %w( admin/sb-admin-2.css )
Rails.application.config.assets.precompile += %w( participant.css )
Rails.application.config.assets.precompile += %w( index.css )
Rails.application.config.assets.precompile += %w( fontawesome-free/css/all.min.css )
Rails.application.config.assets.precompile += %w( datatables/dataTables.bootstrap4.min.css )

Rails.application.config.assets.precompile += %w( vendor/jquery/jquery.min.js )
Rails.application.config.assets.precompile += %w( vendor/bootstrap/js/bootstrap.bundle.min.js )

Rails.application.config.assets.precompile += %w( js/sb-admin-2.min.js )

Rails.application.config.assets.precompile += %w( vendor/jquery-easing/jquery.easing.min.js )

Rails.application.config.assets.precompile += %w( vendor/datatables/jquery.dataTables.min.js )
Rails.application.config.assets.precompile += %w( vendor/datatables/dataTables.bootstrap4.min.js )
Rails.application.config.assets.precompile += %w( vendor/chart.js/Chart.min.js )

Rails.application.config.assets.precompile += %w( js/demo/datatables-demo.js )
Rails.application.config.assets.precompile += %w( js/demo/chart-area-demo.js )
Rails.application.config.assets.precompile += %w( js/demo/chart-pie-demo.js )

# Index layout
Rails.application.config.assets.precompile += %w( index/css/clear.css )
Rails.application.config.assets.precompile += %w( index/css/common.css )
Rails.application.config.assets.precompile += %w( index/css/font-awesome.min.css )
Rails.application.config.assets.precompile += %w( index/css/carouFredSel.css )
Rails.application.config.assets.precompile += %w( index/css/prettyPhoto.css )
Rails.application.config.assets.precompile += %w( index/css/sm-clean.css )
Rails.application.config.assets.precompile += %w( index/style.css )

Rails.application.config.assets.precompile += %w( index/js/html5.js )

Rails.application.config.assets.precompile += %w( index/js/jquery.js )
Rails.application.config.assets.precompile += %w( index/js/jquery.sticky-kit.min.js )
Rails.application.config.assets.precompile += %w( index/js/jquery.smartmenus.min.js )
Rails.application.config.assets.precompile += %w( index/js/jquery.sticky.js )
Rails.application.config.assets.precompile += %w( index/js/jquery.dryMenu.js )
Rails.application.config.assets.precompile += %w( index/js/isotope.pkgd.js )
Rails.application.config.assets.precompile += %w( index/js/jquery.carouFredSel-6.2.0-packed.js )
Rails.application.config.assets.precompile += %w( index/js/jquery.mousewheel.min.js )
Rails.application.config.assets.precompile += %w( index/js/jquery.touchSwipe.min.js )
Rails.application.config.assets.precompile += %w( index/js/jquery.easing.1.3.js )
Rails.application.config.assets.precompile += %w( index/js/imagesloaded.pkgd.js )
Rails.application.config.assets.precompile += %w( index/js/jquery.prettyPhoto.js )
Rails.application.config.assets.precompile += %w( index/js/main.js )
