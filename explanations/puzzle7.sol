// for evm-puzzle 7

/**
 * The key point of this puzzle is that the size of whole runtime code is 1
 * We all know the creation code is consists of init code and runtime code
 * Here we return 1 byte, this is different from return 1 byte in runtime code
 * 
 * The responsibility of init code is to return runtime code that can be called by users after deployment
 * And here, the runtime code is just a `0xff`, so the contract size is 1
 */
object "Simple" {
    code {
        mstore(0, 0xff)
        return(0x1f, 1)        
    }
}