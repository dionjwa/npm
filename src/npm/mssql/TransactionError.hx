package npm.mssql;

import js.Error;

extern class TransactionError extends Error {
  public function new(message : String, code : Int);
  public var code : Int;
}
