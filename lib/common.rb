def run(cmd)
    command = cmd[:must] || cmd[:may]
    
    puts "Running #{command.inspect}..."
    if system(command)
        puts '✅ Success'
        true
    elsif cmd[:may]
        puts '⚠️ Failure, but continuing'
        true
    else
        puts '❌ Failure'
        false
    end
end

def run_all(cmds)
    cmds.each do |cmd|
        break unless run(cmd)
    end
end