require "open-uri"

RESUME_URL  = "https://raw.githubusercontent.com/RandoNandoz/resume/main/Randy_Zhu_resume.pdf"
RESUME_DEST = File.expand_path("../assets/Randy_Zhu_resume.pdf", __dir__)

Jekyll::Hooks.register :site, :after_init do
  begin
    URI.open(RESUME_URL) { |remote| File.binwrite(RESUME_DEST, remote.read) }
    Jekyll.logger.info "Resume:", "fetched latest into assets/Randy_Zhu_resume.pdf"
  rescue StandardError => e
    Jekyll.logger.warn "Resume:", "fetch failed (#{e.message}); using committed copy"
  end
end
