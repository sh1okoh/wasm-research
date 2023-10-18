(module
  (type (;0;) (func))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (result i32)))
  (type (;3;) (func (param i32) (result i32)))
  (import "wasi_snapshot_preview1" "proc_exit" (func (;0;) (type 1)))
  (func (;1;) (type 0))
  (func (;2;) (type 2) (result i32)
    i32.const 55)
  (func (;3;) (type 0)
    block  ;; label = @1
      i32.const 1
      i32.eqz
      br_if 0 (;@1;)
      call 1
    end
    call 2
    call 6
    unreachable)
  (func (;4;) (type 0))
  (func (;5;) (type 0)
    (local i32)
    i32.const 0
    local.set 0
    block  ;; label = @1
      i32.const 0
      i32.const 0
      i32.le_u
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 0
        i32.const -4
        i32.add
        local.tee 0
        i32.load
        call_indirect (type 0)
        local.get 0
        i32.const 0
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    call 4)
  (func (;6;) (type 1) (param i32)
    call 4
    call 5
    call 4
    local.get 0
    call 7
    unreachable)
  (func (;7;) (type 1) (param i32)
    local.get 0
    call 0
    unreachable)
  (func (;8;) (type 2) (result i32)
    i32.const 1024)
  (func (;9;) (type 2) (result i32)
    global.get 0)
  (func (;10;) (type 1) (param i32)
    local.get 0
    global.set 0)
  (func (;11;) (type 3) (param i32) (result i32)
    (local i32 i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 1
    global.set 0
    local.get 1)
  (table (;0;) 2 2 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 66576))
  (export "memory" (memory 0))
  (export "__indirect_function_table" (table 0))
  (export "_start" (func 3))
  (export "__errno_location" (func 8))
  (export "stackSave" (func 9))
  (export "stackRestore" (func 10))
  (export "stackAlloc" (func 11))
  (elem (;0;) (i32.const 1) func 1))
