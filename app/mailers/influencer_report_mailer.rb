class InfluencerReportMailer < ApplicationMailer
  default from: 'Team Datafluencer <datafluencer@gmail.com>'

  def report_email(influencer_report, engagementsObj)
    require 'date'

    @date = DateTime.now
    @influencer_report = influencer_report
    @influencer = @influencer_report.instagram_handle
    @influencer_email = @influencer_report.email

    mail(to: `#{@influencer} <#{@influencer_email}>`, bcc: 'Team Datafluencer <datafluencer@gmail.com>', subject: 'Your Instagram Report')
  end
end
