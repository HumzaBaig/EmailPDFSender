class InfluencerReportMailer < ApplicationMailer
  default from: 'Baig from Datafluencer <datafluencer@gmail.com>'

  def report_email(influencer_report, engagementsObj)
    @date = influencer_report.created_at
    @influencer_report = influencer_report

    mail(to: `#{@influencer_report.instagram_handle} <#{@influencer_report.email}>`, subject: 'Your Instagram Report')
  end
end
