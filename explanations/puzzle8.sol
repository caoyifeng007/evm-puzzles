// for evm-puzzle 8

/**
 * The key point of this puzzle is that the runtime code needs to revert
 * So that the `CALL` opcode can return 0
 * 
 * `CALL` opcode will return 1, as long as the call is succeed, no matter what the runtime code return
 */
object "Simple" {
    code {
        datacopy(0, dataoffset("runtime"), datasize("runtime"))
        return(0, datasize("runtime"))        
    }

    object "runtime" {
        
        code {
            mstore(0x00, 0x00)
            revert(0x00, 0x20)
        }
    }
}