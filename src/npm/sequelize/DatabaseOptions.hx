package npm.sequelize;

typedef DatabaseOptions = {
  ?host : String,
  ?define : {},
  ?dialect : DatabaseDialect,
  ?dialectModulePath : String,
  ?dialectOptions : {},
  ?query : {},
  ?port : Int,
  ?protocol : String,
  ?set : {},
  ?storage : String, // SQLite only
  ?sync : {},
  ?timezone : String,
  ?logging : haxe.extern.EitherType<Bool, haxe.Constraints.Function>,
  ?omitNull : Bool,
  ?native : Bool,
  ?replication : Bool,
  ?pool : {
    ?maxConnections : Int,
    ?minConnections : Int,
    ?maxIdleTime : Int,
    ?validateConnection : haxe.Constraints.Function
  },
  ?quoteIdentifiers : Bool
}
