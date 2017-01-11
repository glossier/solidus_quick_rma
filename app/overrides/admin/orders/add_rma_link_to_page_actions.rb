Deface::Override.new(virtual_path: 'spree/admin/shared/_header',
                    name: 'add-rma-button-to-sidebar',
                    insert_bottom: "[data-hook='toolbar']",
                    text: "
                    <% if @order && @order.completed? %>
                      <li><%= button_link_to Spree.t('admin.orders.return_or_exchange'), admin_order_return_authorizations_path(@order) %>
                    </li><% end %>
                    ",
                    enabled: true)
