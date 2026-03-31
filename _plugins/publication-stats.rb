module Jekyll
  class PublicationStatsGenerator < Generator
    priority :low

    def generate(site)
      bibliography_file = site.config.dig('scholar', 'bibliography') || 'papers.bib'
      bibliography_path = File.join(site.source, '_bibliography', bibliography_file)

      stats = {
        'total' => 0,
        'journal_articles' => 0,
        'jcr_indexed' => 0,
        'd1_publications' => 0
      }

      return site.data['publication_stats'] = stats unless File.exist?(bibliography_path)

      content = File.read(bibliography_path)
      entries = content.split(/^@/).reject(&:empty?).map { |entry| "@#{entry}" }

      stats['total'] = entries.size

      entries.each do |entry|
        entry_type = entry[/^@(\w+)/, 1].to_s.downcase
        stats['journal_articles'] += 1 if entry_type == 'article'
        stats['jcr_indexed'] += 1 if entry.match?(/^\s*jcr\s*=\s*\{true\}/i)
        stats['d1_publications'] += 1 if entry.match?(/^\s*d1\s*=\s*\{true\}/i)
      end

      site.data['publication_stats'] = stats
    end
  end
end
