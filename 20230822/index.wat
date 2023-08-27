(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i64 i32) (result i64)))
  (func (;0;) (type 3)
    call 7)
  (func (;1;) (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
    local.get 3
    i32.load offset=12
    local.set 4
    i32.const 0
    local.set 5
    local.get 5
    i32.load offset=65536
    local.set 6
    local.get 6
    local.get 4
    i32.add
    local.set 7
    i32.const 0
    local.set 8
    local.get 8
    local.get 7
    i32.store offset=65536
    i32.const 0
    local.set 9
    local.get 9
    i32.load offset=65536
    local.set 10
    local.get 10
    return)
  (func (;2;) (type 0) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
    i32.const 20
    local.set 4
    local.get 4
    call 1
    local.set 5
    local.get 2
    local.get 5
    i32.store offset=8
    local.get 2
    i32.load offset=8
    local.set 6
    i32.const 16
    local.set 7
    local.get 2
    local.get 7
    i32.add
    local.set 8
    local.get 8
    global.set 0
    local.get 6
    return)
  (func (;3;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call 2
    local.set 2
    local.get 2
    return)
  (func (;4;) (type 0) (result i32)
    i32.const 65540)
  (func (;5;) (type 1) (param i32)
    local.get 0
    global.set 1)
  (func (;6;) (type 0) (result i32)
    global.get 1)
  (func (;7;) (type 3)
    i32.const 65536
    global.set 3
    i32.const 0
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    global.set 2)
  (func (;8;) (type 0) (result i32)
    global.get 0
    global.get 2
    i32.sub)
  (func (;9;) (type 0) (result i32)
    global.get 3)
  (func (;10;) (type 0) (result i32)
    global.get 2)
  (func (;11;) (type 1) (param i32))
  (func (;12;) (type 1) (param i32))
  (func (;13;) (type 0) (result i32)
    i32.const 65544
    call 11
    i32.const 65548)
  (func (;14;) (type 3)
    i32.const 65544
    call 12)
  (func (;15;) (type 2) (param i32) (result i32)
    i32.const 1)
  (func (;16;) (type 1) (param i32))
  (func (;17;) (type 2) (param i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 0
      local.set 1
      block  ;; label = @2
        i32.const 0
        i32.load offset=65552
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=65552
        call 17
        local.set 1
      end
      block  ;; label = @2
        i32.const 0
        i32.load offset=65552
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=65552
        call 17
        local.get 1
        i32.or
        local.set 1
      end
      block  ;; label = @2
        call 13
        i32.load
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          i32.const 0
          local.set 2
          block  ;; label = @4
            local.get 0
            i32.load offset=76
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
            local.get 0
            call 15
            local.set 2
          end
          block  ;; label = @4
            local.get 0
            i32.load offset=20
            local.get 0
            i32.load offset=28
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            call 17
            local.get 1
            i32.or
            local.set 1
          end
          block  ;; label = @4
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            call 16
          end
          local.get 0
          i32.load offset=56
          local.tee 0
          br_if 0 (;@3;)
        end
      end
      call 14
      local.get 1
      return
    end
    i32.const 0
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.load offset=76
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 0
      call 15
      local.set 2
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=20
          local.get 0
          i32.load offset=28
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          i32.const 0
          i32.const 0
          local.get 0
          i32.load offset=36
          call_indirect (type 5)
          drop
          local.get 0
          i32.load offset=20
          br_if 0 (;@3;)
          i32.const -1
          local.set 1
          local.get 2
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 0
          i32.load offset=4
          local.tee 1
          local.get 0
          i32.load offset=8
          local.tee 3
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          local.get 3
          i32.sub
          i64.extend_i32_s
          i32.const 1
          local.get 0
          i32.load offset=40
          call_indirect (type 6)
          drop
        end
        i32.const 0
        local.set 1
        local.get 0
        i32.const 0
        i32.store offset=28
        local.get 0
        i64.const 0
        i64.store offset=16
        local.get 0
        i64.const 0
        i64.store offset=4 align=4
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 0
      call 16
    end
    local.get 1)
  (func (;18;) (type 0) (result i32)
    global.get 0)
  (func (;19;) (type 1) (param i32)
    local.get 0
    global.set 0)
  (func (;20;) (type 2) (param i32) (result i32)
    (local i32 i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 1
    global.set 0
    local.get 1)
  (func (;21;) (type 0) (result i32)
    global.get 0)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 65536))
  (global (;1;) (mut i32) (i32.const 0))
  (global (;2;) (mut i32) (i32.const 0))
  (global (;3;) (mut i32) (i32.const 0))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 0))
  (export "main" (func 3))
  (export "__indirect_function_table" (table 0))
  (export "__errno_location" (func 4))
  (export "fflush" (func 17))
  (export "emscripten_stack_init" (func 7))
  (export "emscripten_stack_get_free" (func 8))
  (export "emscripten_stack_get_base" (func 9))
  (export "emscripten_stack_get_end" (func 10))
  (export "stackSave" (func 18))
  (export "stackRestore" (func 19))
  (export "stackAlloc" (func 20))
  (export "emscripten_stack_get_current" (func 21))
  (data (;0;) (i32.const 65536) "\0a\00\00\00"))