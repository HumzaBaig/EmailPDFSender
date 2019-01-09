class InfluencerReportMailer < ApplicationMailer
  default from: 'Baig from Datafluencer <datafluencer@gmail.com>'

  def report_email(influencer_report, engagementsObj)
    @date = influencer_report.created_at
    @influencer_report = influencer_report
    @influencer = @influencer_report.instagram_handle
    @influencer_email = @influencer_report.email

    mail(to: `#{@influencer} <#{@influencer_email}>`, subject: 'Your Instagram Report')
  end
end
