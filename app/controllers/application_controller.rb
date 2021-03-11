class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    #protect_from_forgery with: :null_session

    before_action :set_locale

    include SessionsHelper # to see in views and controllers

    def extr_locale_in_accept_lang
        # locale = request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
        # locale = request.env['HTTP_ACCEPT_LANGUAGE']#.scan(/^[a-z]{2}/).first

        # locale = request.env['Request URL']#.scan(/^[a-z]{2}/).first
        locale = params[:locale]#.scan(/^[a-z]{2}/).first

        logger.info "In extr_locale_in_accept_lang: locale = #{locale}"
    end


    private


    def set_locale_from_params
        if params[:locale] # not nil

            extr_locale_in_accept_lang

            if I18n.available_locales.include?(params[:locale].to_sym)
                I18n.locale = params[:locale]
                # flash.now[:notice] = " #{params[:locale]} Есть Перевод страницы"
                logger.info flash.now[:notice]
            else
                flash.now[:alarm] = " #{params[:locale]} Перевод страницы отсутствует"
                logger.error flash.now[:alarm]
            end
            params[:locale]
        end
    end

    # 1-st ver
    # def set_locale
    #   I18n.locale = params[:locale] || I18n.default_locale
    # end

    def set_locale
        I18n.locale = set_locale_from_params || I18n.default_locale
        Rails.application.routes.default_url_options[:locale]= I18n.locale
    end

end
