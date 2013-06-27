module Mongodump
  module Dump
    @@dump_command = "mongodump"

    # Dump the mongo database
    # - db_object <Mongodump::DB::Base>
    def self.process(db_object)
      cmd = @@dump_command
      cmd << " -h #{db_object.hostname}:#{db_object.port}"
      cmd << " -d #{db_object.appname}"
      cmd << " -u #{db_object.username}"
      cmd << " -p #{db_object.password}"
      cmd << " -o db/dump"
      Display.info("Dumping mongo database...")
      Display.info(cmd)

      # Execute cmd
      system(cmd)

      dump_path = File.join("db/dump", db_object.appname)

      if File.exists?(dump_path)
        read_app_name = Mongoid.default_session.options[:database]
        real_dump_path = File.join("db/dump", read_app_name)

        FileUtils.rm_rf(real_dump_path) if File.exists?(real_dump_path)
        FileUtils.mv(dump_path, real_dump_path)

        if File.exists?(real_dump_path)
          Display.success("Dump OK.")
          return real_dump_path
        end
      end
    end
  end
end
