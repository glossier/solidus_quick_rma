module Spree
  module Admin
    module ReturnAuthorizationsControllerDecorator
      def self.prepended(base)
        base.before_action :load_all_return_reasons, only: [:index]
      end

      private

      def load_all_return_reasons
        @reasons = Spree::ReturnReason.all
      end
    end
  end
end
Spree::Admin::ReturnAuthorizationsController.prepend Spree::Admin::ReturnAuthorizationsControllerDecorator
