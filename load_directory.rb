# S:は、ライブラリをロードするために参照するディレクトリ名
puts "#{$*}を探すね"
$:.each do |dir|
  #ディレクトリの表示
  puts "このディレクトリを参照するよ#{dir}"
  #File.exist? method return false when there is no "dir" directory.
  if !File.exist?(dir)
    #next $: array
    next
  end

  # inspect inner directory
  Dir.foreach(dir) do |file|
    #if dir/file still directory, go next inspect"
    if File.directory?("#{dir}/#{file}")
      next
    end
    $*.each do |arg|
      if arg == file
        puts "#{file} あるね。"
      end
    end
  end
end
