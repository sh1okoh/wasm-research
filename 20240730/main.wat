(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32) (result i32)))
  (import "wasi_snapshot_preview1" "proc_exit" (func (;0;) (type 2)))
  (func (;1;) (type 1)
    call 11)
  (func (;2;) (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 32
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    i32.load offset=24
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        br_if 0 (;@2;)
        i32.const 0
        local.set 5
        local.get 3
        local.get 5
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=24
      local.set 6
      i32.const 1
      local.set 7
      local.get 6
      local.set 8
      local.get 7
      local.set 9
      local.get 8
      local.get 9
      i32.eq
      local.set 10
      i32.const 1
      local.set 11
      local.get 10
      local.get 11
      i32.and
      local.set 12
      block  ;; label = @2
        local.get 12
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 13
        local.get 3
        local.get 13
        i32.store offset=28
        br 1 (;@1;)
      end
      i32.const 0
      local.set 14
      local.get 3
      local.get 14
      i32.store offset=20
      i32.const 1
      local.set 15
      local.get 3
      local.get 15
      i32.store offset=16
      i32.const 1
      local.set 16
      local.get 3
      local.get 16
      i32.store offset=8
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load offset=8
          local.set 17
          local.get 3
          i32.load offset=24
          local.set 18
          local.get 17
          local.set 19
          local.get 18
          local.set 20
          local.get 19
          local.get 20
          i32.le_s
          local.set 21
          i32.const 1
          local.set 22
          local.get 21
          local.get 22
          i32.and
          local.set 23
          local.get 23
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=20
          local.set 24
          local.get 3
          i32.load offset=16
          local.set 25
          local.get 24
          local.get 25
          i32.add
          local.set 26
          local.get 3
          local.get 26
          i32.store offset=12
          local.get 3
          i32.load offset=16
          local.set 27
          local.get 3
          local.get 27
          i32.store offset=20
          local.get 3
          i32.load offset=12
          local.set 28
          local.get 3
          local.get 28
          i32.store offset=16
          local.get 3
          i32.load offset=8
          local.set 29
          i32.const 1
          local.set 30
          local.get 29
          local.get 30
          i32.add
          local.set 31
          local.get 3
          local.get 31
          i32.store offset=8
          br 0 (;@3;)
        end
        unreachable
      end
      local.get 3
      i32.load offset=20
      local.set 32
      local.get 3
      local.get 32
      i32.store offset=28
    end
    local.get 3
    i32.load offset=28
    local.set 33
    local.get 33
    return)
  (func (;3;) (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=12
    i32.const 0
    local.set 4
    local.get 3
    local.get 4
    i32.store offset=8
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.load offset=12
        local.set 5
        local.get 5
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=8
        local.set 6
        i32.const 10
        local.set 7
        local.get 6
        local.get 7
        i32.mul
        local.set 8
        local.get 3
        i32.load offset=12
        local.set 9
        i32.const 10
        local.set 10
        local.get 9
        local.get 10
        i32.rem_s
        local.set 11
        local.get 8
        local.get 11
        i32.add
        local.set 12
        local.get 3
        local.get 12
        i32.store offset=8
        local.get 3
        i32.load offset=12
        local.set 13
        i32.const 10
        local.set 14
        local.get 13
        local.get 14
        i32.div_s
        local.set 15
        local.get 3
        local.get 15
        i32.store offset=12
        br 0 (;@2;)
      end
      unreachable
    end
    local.get 3
    i32.load offset=8
    local.set 16
    local.get 16
    return)
  (func (;4;) (type 0) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 0
    i32.const 16
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set 0
    i32.const 0
    local.set 3
    local.get 2
    local.get 3
    i32.store offset=12
    i32.const 1000000
    local.set 4
    local.get 2
    local.get 4
    i32.store offset=8
    local.get 2
    i32.load offset=8
    local.set 5
    local.get 5
    call 2
    local.set 6
    local.get 2
    local.get 6
    i32.store offset=4
    local.get 2
    i32.load offset=4
    local.set 7
    local.get 7
    call 3
    local.set 8
    local.get 2
    local.get 8
    i32.store
    local.get 2
    i32.load
    local.set 9
    i32.const 16
    local.set 10
    local.get 2
    local.get 10
    i32.add
    local.set 11
    local.get 11
    global.set 0
    local.get 9
    return)
  (func (;5;) (type 1)
    block  ;; label = @1
      i32.const 1
      i32.eqz
      br_if 0 (;@1;)
      call 1
    end
    call 4
    call 8
    unreachable)
  (func (;6;) (type 1))
  (func (;7;) (type 1)
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
        call_indirect (type 1)
        local.get 0
        i32.const 0
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    call 6)
  (func (;8;) (type 2) (param i32)
    call 6
    call 7
    call 6
    local.get 0
    call 9
    unreachable)
  (func (;9;) (type 2) (param i32)
    local.get 0
    call 0
    unreachable)
  (func (;10;) (type 0) (result i32)
    i32.const 65536)
  (func (;11;) (type 1)
    i32.const 65536
    global.set 2
    i32.const 0
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    global.set 1)
  (func (;12;) (type 0) (result i32)
    global.get 0
    global.get 1
    i32.sub)
  (func (;13;) (type 0) (result i32)
    global.get 2)
  (func (;14;) (type 0) (result i32)
    global.get 1)
  (func (;15;) (type 0) (result i32)
    global.get 0)
  (func (;16;) (type 2) (param i32)
    local.get 0
    global.set 0)
  (func (;17;) (type 3) (param i32) (result i32)
    (local i32 i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 1
    global.set 0
    local.get 1)
  (func (;18;) (type 0) (result i32)
    global.get 0)
  (table (;0;) 2 2 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 65536))
  (global (;1;) (mut i32) (i32.const 0))
  (global (;2;) (mut i32) (i32.const 0))
  (export "memory" (memory 0))
  (export "__indirect_function_table" (table 0))
  (export "_start" (func 5))
  (export "__errno_location" (func 10))
  (export "emscripten_stack_init" (func 11))
  (export "emscripten_stack_get_free" (func 12))
  (export "emscripten_stack_get_base" (func 13))
  (export "emscripten_stack_get_end" (func 14))
  (export "stackSave" (func 15))
  (export "stackRestore" (func 16))
  (export "stackAlloc" (func 17))
  (export "emscripten_stack_get_current" (func 18))
  (elem (;0;) (i32.const 1) func 1))
