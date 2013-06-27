module Mongodump
  module Restore
    @@restore_command = "mongorestore"

    # Restore the mongo database
    # - path <String>
    # - appname <String>
    def self.process(path)
      cmd = @@restore_command
      cmd << " -h localhost"
      cmd << " #{path} "
      Display.info("Restoring mongo database...")
      Display.info(cmd)

      # Execute cmd
      system(cmd)

      Display.success("Restoration OK.")      
    end
  end
end
