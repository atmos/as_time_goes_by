module AsTimeGoesBy
  class Database
    def self.setup
      DataMapper.setup(:default, 'sqlite3::memory:')
    end
  end
end
