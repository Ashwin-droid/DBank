import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'getBalance' : () => Promise<bigint>,
  'topUp' : (arg_0: bigint) => Promise<undefined>,
  'withdraw' : (arg_0: bigint) => Promise<undefined>,
}
