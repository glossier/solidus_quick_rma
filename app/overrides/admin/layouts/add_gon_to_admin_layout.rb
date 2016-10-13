Deface::Override.new(virtual_path: 'spree/layouts/admin',
                    name: 'add-gon-to-admin-header',
                    insert_bottom: "[data-hook='admin_insinde_head']",
                    text: "<%= include_gon %>")
