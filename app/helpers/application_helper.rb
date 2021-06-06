# frozen_string_literal: true

module ApplicationHelper
  def flash_success
    flash[:note] = t('action_successful', scope: 'flashs')
  end

  def flash_failed
    flash[:error] = t('action_failed', scope: 'flashs')
  end
end
