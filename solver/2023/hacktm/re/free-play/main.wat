(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func))
  (type (;4;) (func (param f32 f32 f32 f32)))
  (type (;5;) (func (param f64) (result f64)))
  (type (;6;) (func (param f32 f32 f32 f32 f32)))
  (type (;7;) (func (param f32 f32)))
  (type (;8;) (func (param f32)))
  (type (;9;) (func (param f64)))
  (type (;10;) (func (result i32)))
  (type (;11;) (func (param i32) (result i32)))
  (import "env" "memory" (memory (;0;) 2 100 ))
  (import "functions" "requestAnimationFrame" (func (;0;) (type 2)))
  (import "functions" "drawHealth" (func (;1;) (type 0)))
  (import "ctx" "save" (func (;2;) (type 3)))
  (import "ctx" "restore" (func (;3;) (type 3)))
  (import "ctx" "fillRect" (func (;4;) (type 4)))
  (import "ctx" "clearRect" (func (;5;) (type 4)))
  (import "math" "sqrt" (func (;6;) (type 5)))
  (import "ctx" "setFillColor" (func (;7;) (type 2)))
  (import "ctx" "beginPath" (func (;8;) (type 3)))
  (import "ctx" "arc" (func (;9;) (type 6)))
  (import "ctx" "fill" (func (;10;) (type 3)))
  (import "math" "cos" (func (;11;) (type 5)))
  (import "math" "sin" (func (;12;) (type 5)))
  (import "ctx" "translate" (func (;13;) (type 7)))
  (import "ctx" "rotate" (func (;14;) (type 8)))
  (import "ctx" "moveTo" (func (;15;) (type 7)))
  (import "ctx" "lineTo" (func (;16;) (type 7)))
  (import "ctx" "closePath" (func (;17;) (type 3)))
  (func (;18;) (type 3)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 93932
          i32.const 0
          i32.const 1
          i32.eqz
          br_table 0 (;@3;) 1 (;@2;) 2 (;@1;)
        end
        i32.const 65536
        i32.const 0
        i32.const 1296
        memory.init 0
        i32.const 66832
        i32.const 0
        i32.const 27100
        memory.fill
        i32.const 93932
        i32.const 2
        i32.store offset=93932
        i32.const 93932
        i32.const -1
        drop
        br 1 (;@1;)
      end
    end
    data.drop 0)
  (func (;19;) (type 9) (param f64)
    (local i32 i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 f64 f64 i32 f64 i32 i32 i32 i64 i64 i64 i64 i32 i64 i64 i64 i64 i64 f64 f64 i32 f64 i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    f64.store offset=8
    i32.const 0
    local.set 4
    local.get 4
    i64.load offset=93904
    local.set 5
    i64.const 0
    local.set 6
    local.get 5
    local.set 7
    local.get 6
    local.set 8
    local.get 7
    local.get 8
    i64.ne
    local.set 9
    i32.const 1
    local.set 10
    local.get 9
    local.get 10
    i32.and
    local.set 11
    block  ;; label = @1
      block  ;; label = @2
        local.get 11
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        f64.load offset=8
        local.set 12
        f64.const 0x1p+64 (;=1.84467e+19;)
        local.set 13
        local.get 12
        local.get 13
        f64.lt
        local.set 14
        f64.const 0x0p+0 (;=0;)
        local.set 15
        local.get 12
        local.get 15
        f64.ge
        local.set 16
        local.get 14
        local.get 16
        i32.and
        local.set 17
        local.get 17
        i32.eqz
        local.set 18
        block  ;; label = @3
          block  ;; label = @4
            local.get 18
            br_if 0 (;@4;)
            local.get 12
            i64.trunc_f64_u
            local.set 19
            local.get 19
            local.set 20
            br 1 (;@3;)
          end
          i64.const 0
          local.set 21
          local.get 21
          local.set 20
        end
        local.get 20
        local.set 22
        i32.const 0
        local.set 23
        local.get 23
        i64.load offset=93904
        local.set 24
        local.get 22
        local.get 24
        i64.sub
        local.set 25
        local.get 25
        local.set 26
        br 1 (;@1;)
      end
      i64.const 0
      local.set 27
      local.get 27
      local.set 26
    end
    local.get 26
    local.set 28
    local.get 3
    local.get 28
    i64.store
    local.get 3
    f64.load offset=8
    local.set 29
    f64.const 0x1p+64 (;=1.84467e+19;)
    local.set 30
    local.get 29
    local.get 30
    f64.lt
    local.set 31
    f64.const 0x0p+0 (;=0;)
    local.set 32
    local.get 29
    local.get 32
    f64.ge
    local.set 33
    local.get 31
    local.get 33
    i32.and
    local.set 34
    local.get 34
    i32.eqz
    local.set 35
    block  ;; label = @1
      block  ;; label = @2
        local.get 35
        br_if 0 (;@2;)
        local.get 29
        i64.trunc_f64_u
        local.set 36
        local.get 36
        local.set 37
        br 1 (;@1;)
      end
      i64.const 0
      local.set 38
      local.get 38
      local.set 37
    end
    local.get 37
    local.set 39
    i32.const 0
    local.set 40
    local.get 40
    local.get 39
    i64.store offset=93904
    i32.const 0
    local.set 41
    i32.const -1
    local.set 42
    local.get 41
    local.get 42
    drop
    call 29
    drop
    call 28
    i32.const 1
    local.set 43
    local.get 43
    call 0
    i32.const 16
    local.set 44
    local.get 3
    local.get 44
    i32.add
    local.set 45
    local.get 45
    global.set 0
    return)
  (func (;20;) (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    call 30
    i32.const 16
    local.set 5
    local.get 3
    local.get 5
    i32.add
    local.set 6
    local.get 6
    global.set 0
    return)
  (func (;21;) (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
    i32.store8 offset=15
    local.get 3
    i32.load8_u offset=15
    local.set 4
    i32.const -65
    local.set 5
    local.get 4
    local.get 5
    i32.add
    local.set 6
    i32.const 22
    local.set 7
    local.get 6
    local.get 7
    i32.gt_u
    drop
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 6
                br_table 0 (;@6;) 4 (;@2;) 4 (;@2;) 1 (;@5;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 2 (;@4;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 3 (;@3;) 4 (;@2;)
              end
              i32.const 1
              local.set 8
              i32.const 0
              local.set 9
              local.get 9
              local.get 8
              i32.store offset=93884
              br 4 (;@1;)
            end
            i32.const 1
            local.set 10
            i32.const 0
            local.set 11
            local.get 11
            local.get 10
            i32.store offset=93892
            br 3 (;@1;)
          end
          i32.const 1
          local.set 12
          i32.const 0
          local.set 13
          local.get 13
          local.get 12
          i32.store offset=93888
          br 2 (;@1;)
        end
        i32.const 1
        local.set 14
        i32.const 0
        local.set 15
        local.get 15
        local.get 14
        i32.store offset=93880
        br 1 (;@1;)
      end
    end
    return)
  (func (;22;) (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
    i32.store8 offset=15
    local.get 3
    i32.load8_u offset=15
    local.set 4
    i32.const -65
    local.set 5
    local.get 4
    local.get 5
    i32.add
    local.set 6
    i32.const 22
    local.set 7
    local.get 6
    local.get 7
    i32.gt_u
    drop
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 6
                br_table 0 (;@6;) 4 (;@2;) 4 (;@2;) 1 (;@5;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 2 (;@4;) 4 (;@2;) 4 (;@2;) 4 (;@2;) 3 (;@3;) 4 (;@2;)
              end
              i32.const 0
              local.set 8
              i32.const 0
              local.set 9
              local.get 9
              local.get 8
              i32.store offset=93884
              br 4 (;@1;)
            end
            i32.const 0
            local.set 10
            i32.const 0
            local.set 11
            local.get 11
            local.get 10
            i32.store offset=93892
            br 3 (;@1;)
          end
          i32.const 0
          local.set 12
          i32.const 0
          local.set 13
          local.get 13
          local.get 12
          i32.store offset=93888
          br 2 (;@1;)
        end
        i32.const 0
        local.set 14
        i32.const 0
        local.set 15
        local.get 15
        local.get 14
        i32.store offset=93880
        br 1 (;@1;)
      end
    end
    return)
  (func (;23;) (type 3)
    (local i32)
    i32.const 1
    local.set 0
    local.get 0
    call 0
    return)
  (func (;24;) (type 3)
    (local i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
    loop  ;; label = @1
      i64.const -1
      local.set 3
      i32.const 0
      local.set 4
      local.get 4
      local.get 4
      local.get 3
      local.get 2
      local.get 5
      i32.store offset=12
      i32.const 0
      local.set 6
      local.get 2
      local.get 6
      i32.store offset=8
      block  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i32.load offset=8
          local.set 7
          i32.const 256
          local.set 8
          local.get 7
          local.set 9
          local.get 8
          local.set 10
          local.get 9
          local.get 10
          i32.lt_u
          local.set 11
          i32.const 1
          local.set 12
          local.get 11
          local.get 12
          i32.and
          local.set 13
          local.get 13
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          i32.load offset=8
          local.set 14
          i32.const 66832
          local.set 15
          i32.const 14744
          local.set 16
          local.get 15
          local.get 16
          i32.add
          local.set 17
          i32.const 48
          local.set 18
          local.get 14
          local.get 18
          i32.mul
          local.set 19
          local.get 17
          local.get 19
          i32.add
          local.set 20
          local.get 20
          i32.load offset=32
          local.set 21
          i32.const 0
          local.set 22
          local.get 21
          local.set 23
          local.get 22
          local.set 24
          local.get 23
          local.get 24
          i32.eq
          local.set 25
          i32.const 1
          local.set 26
          local.get 25
          local.get 26
          i32.and
          local.set 27
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 27
                br_if 0 (;@6;)
                local.get 2
                i32.load offset=8
                local.set 28
                i32.const 66832
                local.set 29
                i32.const 14744
                local.set 30
                local.get 29
                local.get 30
                i32.add
                local.set 31
                i32.const 48
                local.set 32
                local.get 28
                local.get 32
                i32.mul
                local.set 33
                local.get 31
                local.get 33
                i32.add
                local.set 34
                local.get 34
                i32.load offset=28
                local.set 35
                i32.const 0
                local.set 36
                local.get 35
                local.set 37
                local.get 36
                local.set 38
                local.get 37
                local.get 38
                i32.eq
                local.set 39
                i32.const 1
                local.set 40
                local.get 39
                local.get 40
                i32.and
                local.set 41
                local.get 41
                i32.eqz
                br_if 1 (;@5;)
              end
              br 1 (;@4;)
            end
            local.get 2
            i32.load offset=8
            local.set 42
            i32.const 66832
            local.set 43
            i32.const 14744
            local.set 44
            local.get 43
            local.get 44
            i32.add
            local.set 45
            i32.const 48
            local.set 46
            local.get 42
            local.get 46
            i32.mul
            local.set 47
            local.get 45
            local.get 47
            i32.add
            local.set 48
            local.get 48
            i32.load offset=24
            local.set 49
            block  ;; label = @5
              local.get 49
              br_if 0 (;@5;)
              br 1 (;@4;)
            end
            i32.const 0
            local.set 50
            local.get 50
            i32.load offset=66832
            local.set 51
            local.get 2
            i32.load offset=8
            local.set 52
            i32.const 66832
            local.set 53
            i32.const 14744
            local.set 54
            local.get 53
            local.get 54
            i32.add
            local.set 55
            i32.const 48
            local.set 56
            local.get 52
            local.get 56
            i32.mul
            local.set 57
            local.get 55
            local.get 57
            i32.add
            local.set 58
            local.get 58
            i32.load offset=40
            local.set 59
            local.get 51
            local.set 60
            local.get 59
            local.set 61
            local.get 60
            local.get 61
            i32.lt_u
            local.set 62
            i32.const 1
            local.set 63
            local.get 62
            local.get 63
            i32.and
            local.set 64
            block  ;; label = @5
              local.get 64
              i32.eqz
              br_if 0 (;@5;)
              br 1 (;@4;)
            end
            local.get 2
            i32.load offset=8
            local.set 65
            i32.const 66832
            local.set 66
            i32.const 14744
            local.set 67
            local.get 66
            local.get 67
            i32.add
            local.set 68
            i32.const 48
            local.set 69
            local.get 65
            local.get 69
            i32.mul
            local.set 70
            local.get 68
            local.get 70
            i32.add
            local.set 71
            local.get 71
            i32.load offset=44
            local.set 72
            i32.const 0
            local.set 73
            local.get 73
            i32.load offset=66832
            local.set 74
            local.get 72
            local.set 75
            local.get 74
            local.set 76
            local.get 75
            local.get 76
            i32.lt_u
            local.set 77
            i32.const 1
            local.set 78
            local.get 77
            local.get 78
            i32.and
            local.set 79
            block  ;; label = @5
              local.get 79
              i32.eqz
              br_if 0 (;@5;)
              br 1 (;@4;)
            end
            local.get 2
            i32.load offset=8
            local.set 80
            i32.const 66832
            local.set 81
            i32.const 14744
            local.set 82
            local.get 81
            local.get 82
            i32.add
            local.set 83
            i32.const 48
            local.set 84
            local.get 80
            local.get 84
            i32.mul
            local.set 85
            local.get 83
            local.get 85
            i32.add
            local.set 86
            local.get 86
            i32.load offset=28
            local.set 87
            local.get 2
            i32.load offset=8
            local.set 88
            i32.const 66832
            local.set 89
            i32.const 14744
            local.set 90
            local.get 89
            local.get 90
            i32.add
            local.set 91
            i32.const 48
            local.set 92
            local.get 88
            local.get 92
            i32.mul
            local.set 93
            local.get 91
            local.get 93
            i32.add
            local.set 94
            i32.const 66832
            local.set 95
            local.get 94
            local.get 95
            local.get 87
            call_indirect (type 0)
          end
          local.get 2
          i32.load offset=8
          local.set 96
          i32.const 1
          local.set 97
          local.get 96
          local.get 97
          i32.add
          local.set 98
          local.get 2
          local.get 98
          i32.store offset=8
          br 0 (;@3;)
        end
      end
      br 0 (;@1;)
    end)
  (func (;25;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 32
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i32.store offset=24
    local.get 4
    local.get 1
    i32.store offset=20
    i32.const 0
    local.set 5
    local.get 4
    local.get 5
    i32.store offset=16
    local.get 4
    i32.load offset=20
    local.set 6
    i32.const 0
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
    block  ;; label = @1
      block  ;; label = @2
        local.get 12
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 13
        local.get 4
        local.get 13
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 4
      i32.load offset=24
      local.set 14
      block  ;; label = @2
        local.get 14
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=20
        local.set 15
        i32.const 48
        local.set 16
        local.get 15
        local.get 16
        i32.store8
        i32.const 1
        local.set 17
        local.get 4
        local.get 17
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 4
      i32.load offset=24
      local.set 18
      i32.const 0
      local.set 19
      local.get 18
      local.set 20
      local.get 19
      local.set 21
      local.get 20
      local.get 21
      i32.lt_s
      local.set 22
      i32.const 1
      local.set 23
      local.get 22
      local.get 23
      i32.and
      local.set 24
      block  ;; label = @2
        local.get 24
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=24
        local.set 25
        i32.const -1
        local.set 26
        local.get 25
        local.get 26
        i32.mul
        local.set 27
        local.get 4
        local.get 27
        i32.store offset=24
        local.get 4
        i32.load offset=20
        local.set 28
        i32.const 1
        local.set 29
        local.get 28
        local.get 29
        i32.add
        local.set 30
        local.get 4
        local.get 30
        i32.store offset=20
        i32.const 45
        local.set 31
        local.get 28
        local.get 31
        i32.store8
        local.get 4
        i32.load offset=16
        local.set 32
        i32.const 1
        local.set 33
        local.get 32
        local.get 33
        i32.add
        local.set 34
        local.get 4
        local.get 34
        i32.store offset=16
      end
      local.get 4
      i32.load offset=24
      local.set 35
      local.get 4
      local.get 35
      i32.store offset=12
      block  ;; label = @2
        loop  ;; label = @3
          local.get 4
          i32.load offset=12
          local.set 36
          i32.const 0
          local.set 37
          local.get 36
          local.set 38
          local.get 37
          local.set 39
          local.get 38
          local.get 39
          i32.gt_u
          local.set 40
          i32.const 1
          local.set 41
          local.get 40
          local.get 41
          i32.and
          local.set 42
          local.get 42
          i32.eqz
          br_if 1 (;@2;)
          local.get 4
          i32.load offset=12
          local.set 43
          i32.const 10
          local.set 44
          local.get 43
          local.get 44
          i32.div_u
          local.set 45
          local.get 4
          local.get 45
          i32.store offset=12
          local.get 4
          i32.load offset=20
          local.set 46
          i32.const 1
          local.set 47
          local.get 46
          local.get 47
          i32.add
          local.set 48
          local.get 4
          local.get 48
          i32.store offset=20
          br 0 (;@3;)
        end
      end
      local.get 4
      i32.load offset=20
      local.set 49
      i32.const 0
      local.set 50
      local.get 49
      local.get 50
      i32.store8
      local.get 4
      i32.load offset=24
      local.set 51
      local.get 4
      local.get 51
      i32.store offset=12
      block  ;; label = @2
        loop  ;; label = @3
          local.get 4
          i32.load offset=12
          local.set 52
          i32.const 0
          local.set 53
          local.get 52
          local.set 54
          local.get 53
          local.set 55
          local.get 54
          local.get 55
          i32.gt_u
          local.set 56
          i32.const 1
          local.set 57
          local.get 56
          local.get 57
          i32.and
          local.set 58
          local.get 58
          i32.eqz
          br_if 1 (;@2;)
          local.get 4
          i32.load offset=12
          local.set 59
          i32.const 10
          local.set 60
          local.get 59
          local.get 60
          i32.rem_u
          local.set 61
          i32.const 48
          local.set 62
          local.get 61
          local.get 62
          i32.add
          local.set 63
          local.get 4
          i32.load offset=20
          local.set 64
          i32.const -1
          local.set 65
          local.get 64
          local.get 65
          i32.add
          local.set 66
          local.get 4
          local.get 66
          i32.store offset=20
          local.get 66
          local.get 63
          i32.store8
          local.get 4
          i32.load offset=16
          local.set 67
          i32.const 1
          local.set 68
          local.get 67
          local.get 68
          i32.add
          local.set 69
          local.get 4
          local.get 69
          i32.store offset=16
          local.get 4
          i32.load offset=12
          local.set 70
          i32.const 10
          local.set 71
          local.get 70
          local.get 71
          i32.div_u
          local.set 72
          local.get 4
          local.get 72
          i32.store offset=12
          br 0 (;@3;)
        end
      end
      local.get 4
      i32.load offset=16
      local.set 73
      local.get 4
      local.get 73
      i32.store offset=28
    end
    local.get 4
    i32.load offset=28
    local.set 74
    local.get 74
    return)
  (func (;26;) (type 3)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
    local.get 3
    i32.load offset=93872
    local.set 4
    i32.const 93912
    local.set 5
    local.get 4
    local.get 5
    call 25
    local.set 6
    local.get 2
    local.get 6
    i32.store offset=12
    i32.const 0
    local.set 7
    local.get 2
    local.get 7
    i32.store offset=8
    i32.const 2
    local.set 8
    local.get 2
    local.get 8
    i32.store offset=8
    local.get 2
    i32.load offset=8
    local.set 9
    local.get 2
    i32.load offset=12
    local.set 10
    i32.const 93912
    local.set 11
    local.get 11
    local.get 10
    local.get 9
    call_indirect (type 0)
    i32.const 16
    local.set 12
    local.get 2
    local.get 12
    i32.add
    local.set 13
    local.get 13
    global.set 0
    return)
  (func (;27;) (type 3)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i64 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 0
    i32.const 64
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set 0
    i32.const 66832
    local.set 3
    i32.const 408
    local.set 4
    local.get 3
    local.get 4
    i32.add
    local.set 5
    local.get 2
    local.get 5
    i32.store offset=60
    i32.const 0
    local.set 6
    local.get 2
    local.get 6
    i32.store offset=56
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=56
        local.set 7
        i32.const 256
        local.set 8
        local.get 7
        local.set 9
        local.get 8
        local.set 10
        local.get 9
        local.get 10
        i32.lt_u
        local.set 11
        i32.const 1
        local.set 12
        local.get 11
        local.get 12
        i32.and
        local.set 13
        local.get 13
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=60
        local.set 14
        local.get 14
        i32.load offset=28
        local.set 15
        i32.const 0
        local.set 16
        local.get 15
        local.set 17
        local.get 16
        local.set 18
        local.get 17
        local.get 18
        i32.eq
        local.set 19
        i32.const 1
        local.set 20
        local.get 19
        local.get 20
        i32.and
        local.set 21
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 21
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=60
              local.set 22
              local.get 22
              i32.load offset=32
              local.set 23
              i32.const 0
              local.set 24
              local.get 23
              local.set 25
              local.get 24
              local.set 26
              local.get 25
              local.get 26
              i32.eq
              local.set 27
              i32.const 1
              local.set 28
              local.get 27
              local.get 28
              i32.and
              local.set 29
              local.get 29
              i32.eqz
              br_if 1 (;@4;)
            end
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=60
          local.set 30
          local.get 30
          i32.load offset=24
          local.set 31
          block  ;; label = @4
            local.get 31
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          i32.const 0
          local.set 32
          local.get 32
          i32.load offset=66832
          local.set 33
          local.get 2
          i32.load offset=60
          local.set 34
          local.get 34
          i32.load offset=48
          local.set 35
          local.get 33
          local.set 36
          local.get 35
          local.set 37
          local.get 36
          local.get 37
          i32.lt_u
          local.set 38
          i32.const 1
          local.set 39
          local.get 38
          local.get 39
          i32.and
          local.set 40
          block  ;; label = @4
            local.get 40
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=60
          local.set 41
          local.get 41
          i32.load offset=52
          local.set 42
          i32.const 0
          local.set 43
          local.get 43
          i32.load offset=66832
          local.set 44
          local.get 42
          local.set 45
          local.get 44
          local.set 46
          local.get 45
          local.get 46
          i32.lt_u
          local.set 47
          i32.const 1
          local.set 48
          local.get 47
          local.get 48
          i32.and
          local.set 49
          block  ;; label = @4
            local.get 49
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          call 2
          local.get 2
          i32.load offset=60
          local.set 50
          local.get 50
          i32.load offset=28
          local.set 51
          local.get 2
          i32.load offset=60
          local.set 52
          i32.const 66832
          local.set 53
          local.get 52
          local.get 53
          local.get 51
          call_indirect (type 0)
          call 3
        end
        local.get 2
        i32.load offset=56
        local.set 54
        i32.const 1
        local.set 55
        local.get 54
        local.get 55
        i32.add
        local.set 56
        local.get 2
        local.get 56
        i32.store offset=56
        local.get 2
        i32.load offset=60
        local.set 57
        i32.const 56
        local.set 58
        local.get 57
        local.get 58
        i32.add
        local.set 59
        local.get 2
        local.get 59
        i32.store offset=60
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.set 60
    local.get 60
    f32.load offset=93864
    local.set 61
    i32.const 0
    local.set 62
    local.get 62
    f32.load offset=93868
    local.set 63
    f32.const 0x1.ep+3 (;=15;)
    local.set 64
    local.get 61
    local.get 63
    local.get 64
    local.get 64
    call 4
    i32.const 0
    local.set 65
    local.get 2
    local.get 65
    i32.store16 offset=54
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load16_u offset=54
        local.set 66
        i32.const 65535
        local.set 67
        local.get 66
        local.get 67
        i32.and
        local.set 68
        i32.const 256
        local.set 69
        local.get 68
        local.set 70
        local.get 69
        local.set 71
        local.get 70
        local.get 71
        i32.lt_s
        local.set 72
        i32.const 1
        local.set 73
        local.get 72
        local.get 73
        i32.and
        local.set 74
        local.get 74
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load16_u offset=54
        local.set 75
        i32.const 65535
        local.set 76
        local.get 75
        local.get 76
        i32.and
        local.set 77
        i32.const 66832
        local.set 78
        i32.const 14744
        local.set 79
        local.get 78
        local.get 79
        i32.add
        local.set 80
        i32.const 48
        local.set 81
        local.get 77
        local.get 81
        i32.mul
        local.set 82
        local.get 80
        local.get 82
        i32.add
        local.set 83
        i32.const 40
        local.set 84
        local.get 83
        local.get 84
        i32.add
        local.set 85
        local.get 85
        i64.load align=4
        local.set 86
        local.get 2
        local.get 84
        i32.add
        local.set 87
        local.get 87
        local.get 86
        i64.store
        i32.const 32
        local.set 88
        local.get 83
        local.get 88
        i32.add
        local.set 89
        local.get 89
        i64.load align=4
        local.set 90
        local.get 2
        local.get 88
        i32.add
        local.set 91
        local.get 91
        local.get 90
        i64.store
        i32.const 24
        local.set 92
        local.get 83
        local.get 92
        i32.add
        local.set 93
        local.get 93
        i64.load align=4
        local.set 94
        local.get 2
        local.get 92
        i32.add
        local.set 95
        local.get 95
        local.get 94
        i64.store
        i32.const 16
        local.set 96
        local.get 83
        local.get 96
        i32.add
        local.set 97
        local.get 97
        i64.load align=4
        local.set 98
        local.get 2
        local.get 96
        i32.add
        local.set 99
        local.get 99
        local.get 98
        i64.store
        i32.const 8
        local.set 100
        local.get 83
        local.get 100
        i32.add
        local.set 101
        local.get 101
        i64.load align=4
        local.set 102
        local.get 2
        local.get 100
        i32.add
        local.set 103
        local.get 103
        local.get 102
        i64.store
        local.get 83
        i64.load align=4
        local.set 104
        local.get 2
        local.get 104
        i64.store
        local.get 2
        i32.load offset=24
        local.set 105
        block  ;; label = @3
          block  ;; label = @4
            local.get 105
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          i32.const 0
          local.set 106
          local.get 106
          i32.load offset=66832
          local.set 107
          local.get 2
          i32.load offset=40
          local.set 108
          local.get 107
          local.set 109
          local.get 108
          local.set 110
          local.get 109
          local.get 110
          i32.lt_u
          local.set 111
          i32.const 1
          local.set 112
          local.get 111
          local.get 112
          i32.and
          local.set 113
          block  ;; label = @4
            local.get 113
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=44
          local.set 114
          i32.const 0
          local.set 115
          local.get 115
          i32.load offset=66832
          local.set 116
          local.get 114
          local.set 117
          local.get 116
          local.set 118
          local.get 117
          local.get 118
          i32.lt_u
          local.set 119
          i32.const 1
          local.set 120
          local.get 119
          local.get 120
          i32.and
          local.set 121
          block  ;; label = @4
            local.get 121
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          call 2
          local.get 2
          i32.load offset=32
          local.set 122
          local.get 2
          local.set 123
          i32.const 66832
          local.set 124
          local.get 123
          local.get 124
          local.get 122
          call_indirect (type 0)
          call 3
        end
        local.get 2
        i32.load16_u offset=54
        local.set 125
        i32.const 1
        local.set 126
        local.get 125
        local.get 126
        i32.add
        local.set 127
        local.get 2
        local.get 127
        i32.store16 offset=54
        br 0 (;@2;)
      end
    end
    call 26
    i32.const 64
    local.set 128
    local.get 2
    local.get 128
    i32.add
    local.set 129
    local.get 129
    global.set 0
    return)
  (func (;28;) (type 3)
    (local i32 f32 f32)
    i32.const 0
    local.set 0
    local.get 0
    f32.convert_i32_s
    local.set 1
    f32.const 0x1.9p+9 (;=800;)
    local.set 2
    local.get 1
    local.get 1
    local.get 2
    local.get 2
    call 5
    call 27
    return)
  (func (;29;) (type 10) (result i32)
    (local i32 i32 i32 i32 f32 i32 f32 f32 i32 i32 i32 i32 f32 f32 i32 i32 i32 i32 f32 f32 f32 i32 i32 i32 i32 f32 f32 f32 i32 i32 i32 i32 f32 f32 f32 f32 i32 i32 f32 i32 i32 f32 i32 i32 f32 i32 i32 f32 f32 f32 f32 f32 f32 f32 f32 i32 f32 f32 i32 f32 i32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i64 i32 i32 i32 i64 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 0
    i32.const 80
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set 0
    i32.const 0
    local.set 3
    local.get 3
    f32.convert_i32_s
    local.set 4
    local.get 2
    local.get 4
    f32.store offset=76
    i32.const 0
    local.set 5
    local.get 5
    f32.convert_i32_s
    local.set 6
    local.get 2
    local.get 6
    f32.store offset=72
    f32.const 0x1.6a09e6p-1 (;=0.707107;)
    local.set 7
    local.get 2
    local.get 7
    f32.store offset=68
    i32.const 0
    local.set 8
    local.get 8
    i32.load offset=93888
    local.set 9
    block  ;; label = @1
      block  ;; label = @2
        local.get 9
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 10
        local.get 10
        i32.load offset=93892
        local.set 11
        local.get 11
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        f32.load offset=68
        local.set 12
        local.get 2
        local.get 12
        f32.store offset=76
        local.get 2
        f32.load offset=68
        local.set 13
        local.get 2
        local.get 13
        f32.store offset=72
        br 1 (;@1;)
      end
      i32.const 0
      local.set 14
      local.get 14
      i32.load offset=93888
      local.set 15
      block  ;; label = @2
        block  ;; label = @3
          local.get 15
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 16
          local.get 16
          i32.load offset=93884
          local.set 17
          local.get 17
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          f32.load offset=68
          local.set 18
          local.get 18
          f32.neg
          local.set 19
          local.get 2
          local.get 19
          f32.store offset=76
          local.get 2
          f32.load offset=68
          local.set 20
          local.get 2
          local.get 20
          f32.store offset=72
          br 1 (;@2;)
        end
        i32.const 0
        local.set 21
        local.get 21
        i32.load offset=93880
        local.set 22
        block  ;; label = @3
          block  ;; label = @4
            local.get 22
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            local.set 23
            local.get 23
            i32.load offset=93892
            local.set 24
            local.get 24
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            f32.load offset=68
            local.set 25
            local.get 2
            local.get 25
            f32.store offset=76
            local.get 2
            f32.load offset=68
            local.set 26
            local.get 26
            f32.neg
            local.set 27
            local.get 2
            local.get 27
            f32.store offset=72
            br 1 (;@3;)
          end
          i32.const 0
          local.set 28
          local.get 28
          i32.load offset=93880
          local.set 29
          block  ;; label = @4
            block  ;; label = @5
              local.get 29
              i32.eqz
              br_if 0 (;@5;)
              i32.const 0
              local.set 30
              local.get 30
              i32.load offset=93884
              local.set 31
              local.get 31
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              f32.load offset=68
              local.set 32
              local.get 32
              f32.neg
              local.set 33
              local.get 2
              local.get 33
              f32.store offset=76
              local.get 2
              f32.load offset=68
              local.set 34
              local.get 34
              f32.neg
              local.set 35
              local.get 2
              local.get 35
              f32.store offset=72
              br 1 (;@4;)
            end
            i32.const 0
            local.set 36
            local.get 36
            i32.load offset=93884
            local.set 37
            block  ;; label = @5
              block  ;; label = @6
                local.get 37
                i32.eqz
                br_if 0 (;@6;)
                f32.const -0x1p+0 (;=-1;)
                local.set 38
                local.get 2
                local.get 38
                f32.store offset=76
                br 1 (;@5;)
              end
              i32.const 0
              local.set 39
              local.get 39
              i32.load offset=93892
              local.set 40
              block  ;; label = @6
                block  ;; label = @7
                  local.get 40
                  i32.eqz
                  br_if 0 (;@7;)
                  f32.const 0x1p+0 (;=1;)
                  local.set 41
                  local.get 2
                  local.get 41
                  f32.store offset=76
                  br 1 (;@6;)
                end
                i32.const 0
                local.set 42
                local.get 42
                i32.load offset=93880
                local.set 43
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 43
                    i32.eqz
                    br_if 0 (;@8;)
                    f32.const -0x1p+0 (;=-1;)
                    local.set 44
                    local.get 2
                    local.get 44
                    f32.store offset=72
                    br 1 (;@7;)
                  end
                  i32.const 0
                  local.set 45
                  local.get 45
                  i32.load offset=93888
                  local.set 46
                  block  ;; label = @8
                    local.get 46
                    i32.eqz
                    br_if 0 (;@8;)
                    f32.const 0x1p+0 (;=1;)
                    local.set 47
                    local.get 2
                    local.get 47
                    f32.store offset=72
                  end
                end
              end
            end
          end
        end
      end
    end
    local.get 2
    f32.load offset=76
    local.set 48
    f32.const 0x1.4p+2 (;=5;)
    local.set 49
    local.get 48
    local.get 49
    f32.mul
    local.set 50
    local.get 2
    local.get 50
    f32.store offset=76
    local.get 2
    f32.load offset=72
    local.set 51
    f32.const 0x1.4p+2 (;=5;)
    local.set 52
    local.get 51
    local.get 52
    f32.mul
    local.set 53
    local.get 2
    local.get 53
    f32.store offset=72
    local.get 2
    f32.load offset=76
    local.set 54
    i32.const 0
    local.set 55
    local.get 55
    f32.load offset=93864
    local.set 56
    local.get 56
    local.get 54
    f32.add
    local.set 57
    i32.const 0
    local.set 58
    local.get 58
    local.get 57
    f32.store offset=93864
    local.get 2
    f32.load offset=72
    local.set 59
    i32.const 0
    local.set 60
    local.get 60
    f32.load offset=93868
    local.set 61
    local.get 61
    local.get 59
    f32.add
    local.set 62
    i32.const 0
    local.set 63
    local.get 63
    local.get 62
    f32.store offset=93868
    i32.const 0
    local.set 64
    local.get 2
    local.get 64
    i32.store offset=64
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=64
        local.set 65
        i32.const 256
        local.set 66
        local.get 65
        local.set 67
        local.get 66
        local.set 68
        local.get 67
        local.get 68
        i32.lt_u
        local.set 69
        i32.const 1
        local.set 70
        local.get 69
        local.get 70
        i32.and
        local.set 71
        local.get 71
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=64
        local.set 72
        i32.const 66832
        local.set 73
        i32.const 14744
        local.set 74
        local.get 73
        local.get 74
        i32.add
        local.set 75
        i32.const 48
        local.set 76
        local.get 72
        local.get 76
        i32.mul
        local.set 77
        local.get 75
        local.get 77
        i32.add
        local.set 78
        local.get 78
        i32.load offset=32
        local.set 79
        i32.const 0
        local.set 80
        local.get 79
        local.set 81
        local.get 80
        local.set 82
        local.get 81
        local.get 82
        i32.eq
        local.set 83
        i32.const 1
        local.set 84
        local.get 83
        local.get 84
        i32.and
        local.set 85
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 85
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=64
              local.set 86
              i32.const 66832
              local.set 87
              i32.const 14744
              local.set 88
              local.get 87
              local.get 88
              i32.add
              local.set 89
              i32.const 48
              local.set 90
              local.get 86
              local.get 90
              i32.mul
              local.set 91
              local.get 89
              local.get 91
              i32.add
              local.set 92
              local.get 92
              i32.load offset=28
              local.set 93
              i32.const 0
              local.set 94
              local.get 93
              local.set 95
              local.get 94
              local.set 96
              local.get 95
              local.get 96
              i32.eq
              local.set 97
              i32.const 1
              local.set 98
              local.get 97
              local.get 98
              i32.and
              local.set 99
              local.get 99
              i32.eqz
              br_if 1 (;@4;)
            end
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=64
          local.set 100
          i32.const 66832
          local.set 101
          i32.const 14744
          local.set 102
          local.get 101
          local.get 102
          i32.add
          local.set 103
          i32.const 48
          local.set 104
          local.get 100
          local.get 104
          i32.mul
          local.set 105
          local.get 103
          local.get 105
          i32.add
          local.set 106
          local.get 106
          i32.load offset=24
          local.set 107
          block  ;; label = @4
            local.get 107
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          i32.const 0
          local.set 108
          local.get 108
          i32.load offset=66832
          local.set 109
          local.get 2
          i32.load offset=64
          local.set 110
          i32.const 66832
          local.set 111
          i32.const 14744
          local.set 112
          local.get 111
          local.get 112
          i32.add
          local.set 113
          i32.const 48
          local.set 114
          local.get 110
          local.get 114
          i32.mul
          local.set 115
          local.get 113
          local.get 115
          i32.add
          local.set 116
          local.get 116
          i32.load offset=40
          local.set 117
          local.get 109
          local.set 118
          local.get 117
          local.set 119
          local.get 118
          local.get 119
          i32.lt_u
          local.set 120
          i32.const 1
          local.set 121
          local.get 120
          local.get 121
          i32.and
          local.set 122
          block  ;; label = @4
            local.get 122
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=64
          local.set 123
          i32.const 66832
          local.set 124
          i32.const 14744
          local.set 125
          local.get 124
          local.get 125
          i32.add
          local.set 126
          i32.const 48
          local.set 127
          local.get 123
          local.get 127
          i32.mul
          local.set 128
          local.get 126
          local.get 128
          i32.add
          local.set 129
          local.get 129
          i32.load offset=44
          local.set 130
          i32.const 0
          local.set 131
          local.get 131
          i32.load offset=66832
          local.set 132
          local.get 130
          local.set 133
          local.get 132
          local.set 134
          local.get 133
          local.get 134
          i32.lt_u
          local.set 135
          i32.const 1
          local.set 136
          local.get 135
          local.get 136
          i32.and
          local.set 137
          block  ;; label = @4
            local.get 137
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=64
          local.set 138
          i32.const 66832
          local.set 139
          i32.const 14744
          local.set 140
          local.get 139
          local.get 140
          i32.add
          local.set 141
          i32.const 48
          local.set 142
          local.get 138
          local.get 142
          i32.mul
          local.set 143
          local.get 141
          local.get 143
          i32.add
          local.set 144
          local.get 144
          i32.load offset=28
          local.set 145
          local.get 2
          i32.load offset=64
          local.set 146
          i32.const 66832
          local.set 147
          i32.const 14744
          local.set 148
          local.get 147
          local.get 148
          i32.add
          local.set 149
          i32.const 48
          local.set 150
          local.get 146
          local.get 150
          i32.mul
          local.set 151
          local.get 149
          local.get 151
          i32.add
          local.set 152
          i32.const 66832
          local.set 153
          local.get 152
          local.get 153
          local.get 145
          call_indirect (type 0)
        end
        local.get 2
        i32.load offset=64
        local.set 154
        i32.const 1
        local.set 155
        local.get 154
        local.get 155
        i32.add
        local.set 156
        local.get 2
        local.get 156
        i32.store offset=64
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.set 157
    local.get 2
    local.get 157
    i32.store offset=60
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=60
        local.set 158
        i32.const 256
        local.set 159
        local.get 158
        local.set 160
        local.get 159
        local.set 161
        local.get 160
        local.get 161
        i32.lt_u
        local.set 162
        i32.const 1
        local.set 163
        local.get 162
        local.get 163
        i32.and
        local.set 164
        local.get 164
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=60
        local.set 165
        i32.const 66832
        local.set 166
        i32.const 408
        local.set 167
        local.get 166
        local.get 167
        i32.add
        local.set 168
        i32.const 56
        local.set 169
        local.get 165
        local.get 169
        i32.mul
        local.set 170
        local.get 168
        local.get 170
        i32.add
        local.set 171
        i32.const 48
        local.set 172
        local.get 171
        local.get 172
        i32.add
        local.set 173
        local.get 173
        i64.load align=4
        local.set 174
        local.get 2
        local.get 172
        i32.add
        local.set 175
        local.get 175
        local.get 174
        i64.store
        i32.const 40
        local.set 176
        local.get 171
        local.get 176
        i32.add
        local.set 177
        local.get 177
        i64.load align=4
        local.set 178
        local.get 2
        local.get 176
        i32.add
        local.set 179
        local.get 179
        local.get 178
        i64.store
        i32.const 32
        local.set 180
        local.get 171
        local.get 180
        i32.add
        local.set 181
        local.get 181
        i64.load align=4
        local.set 182
        local.get 2
        local.get 180
        i32.add
        local.set 183
        local.get 183
        local.get 182
        i64.store
        i32.const 24
        local.set 184
        local.get 171
        local.get 184
        i32.add
        local.set 185
        local.get 185
        i64.load align=4
        local.set 186
        local.get 2
        local.get 184
        i32.add
        local.set 187
        local.get 187
        local.get 186
        i64.store
        i32.const 16
        local.set 188
        local.get 171
        local.get 188
        i32.add
        local.set 189
        local.get 189
        i64.load align=4
        local.set 190
        local.get 2
        local.get 188
        i32.add
        local.set 191
        local.get 191
        local.get 190
        i64.store
        i32.const 8
        local.set 192
        local.get 171
        local.get 192
        i32.add
        local.set 193
        local.get 193
        i64.load align=4
        local.set 194
        local.get 2
        local.get 192
        i32.add
        local.set 195
        local.get 195
        local.get 194
        i64.store
        local.get 171
        i64.load align=4
        local.set 196
        local.get 2
        local.get 196
        i64.store
        local.get 2
        i32.load offset=28
        local.set 197
        i32.const 0
        local.set 198
        local.get 197
        local.set 199
        local.get 198
        local.set 200
        local.get 199
        local.get 200
        i32.eq
        local.set 201
        i32.const 1
        local.set 202
        local.get 201
        local.get 202
        i32.and
        local.set 203
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 203
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=32
              local.set 204
              i32.const 0
              local.set 205
              local.get 204
              local.set 206
              local.get 205
              local.set 207
              local.get 206
              local.get 207
              i32.eq
              local.set 208
              i32.const 1
              local.set 209
              local.get 208
              local.get 209
              i32.and
              local.set 210
              local.get 210
              i32.eqz
              br_if 1 (;@4;)
            end
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=24
          local.set 211
          block  ;; label = @4
            local.get 211
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          i32.const 0
          local.set 212
          local.get 212
          i32.load offset=66832
          local.set 213
          local.get 2
          i32.load offset=48
          local.set 214
          local.get 213
          local.set 215
          local.get 214
          local.set 216
          local.get 215
          local.get 216
          i32.lt_u
          local.set 217
          i32.const 1
          local.set 218
          local.get 217
          local.get 218
          i32.and
          local.set 219
          block  ;; label = @4
            local.get 219
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=52
          local.set 220
          i32.const 0
          local.set 221
          local.get 221
          i32.load offset=66832
          local.set 222
          local.get 220
          local.set 223
          local.get 222
          local.set 224
          local.get 223
          local.get 224
          i32.lt_u
          local.set 225
          i32.const 1
          local.set 226
          local.get 225
          local.get 226
          i32.and
          local.set 227
          block  ;; label = @4
            local.get 227
            i32.eqz
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=32
          local.set 228
          local.get 2
          i32.load offset=60
          local.set 229
          i32.const 66832
          local.set 230
          i32.const 408
          local.set 231
          local.get 230
          local.get 231
          i32.add
          local.set 232
          i32.const 56
          local.set 233
          local.get 229
          local.get 233
          i32.mul
          local.set 234
          local.get 232
          local.get 234
          i32.add
          local.set 235
          i32.const 66832
          local.set 236
          local.get 235
          local.get 236
          local.get 228
          call_indirect (type 1)
          drop
        end
        local.get 2
        i32.load offset=60
        local.set 237
        i32.const 1
        local.set 238
        local.get 237
        local.get 238
        i32.add
        local.set 239
        local.get 2
        local.get 239
        i32.store offset=60
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.set 240
    local.get 240
    i32.load offset=66832
    local.set 241
    i32.const 1
    local.set 242
    local.get 241
    local.get 242
    i32.add
    local.set 243
    i32.const 0
    local.set 244
    local.get 244
    local.get 243
    i32.store offset=66832
    i32.const 0
    local.set 245
    i32.const 80
    local.set 246
    local.get 2
    local.get 246
    i32.add
    local.set 247
    local.get 247
    global.set 0
    local.get 245
    return)
  (func (;30;) (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    i32.const 66832
    local.set 5
    i32.const 27048
    local.set 6
    local.get 5
    local.get 4
    local.get 6
    memory.copy
    i32.const 0
    local.set 7
    local.get 3
    local.get 7
    i32.store offset=8
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.load offset=8
        local.set 8
        i32.const 256
        local.set 9
        local.get 8
        local.set 10
        local.get 9
        local.set 11
        local.get 10
        local.get 11
        i32.lt_u
        local.set 12
        i32.const 1
        local.set 13
        local.get 12
        local.get 13
        i32.and
        local.set 14
        local.get 14
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=8
        local.set 15
        i32.const 66832
        local.set 16
        i32.const 408
        local.set 17
        local.get 16
        local.get 17
        i32.add
        local.set 18
        i32.const 56
        local.set 19
        local.get 15
        local.get 19
        i32.mul
        local.set 20
        local.get 18
        local.get 20
        i32.add
        local.set 21
        local.get 21
        call 48
        local.get 3
        i32.load offset=8
        local.set 22
        i32.const 1
        local.set 23
        local.get 22
        local.get 23
        i32.add
        local.set 24
        local.get 3
        local.get 24
        i32.store offset=8
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.set 25
    local.get 3
    local.get 25
    i32.store offset=4
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.load offset=4
        local.set 26
        i32.const 256
        local.set 27
        local.get 26
        local.set 28
        local.get 27
        local.set 29
        local.get 28
        local.get 29
        i32.lt_u
        local.set 30
        i32.const 1
        local.set 31
        local.get 30
        local.get 31
        i32.and
        local.set 32
        local.get 32
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=4
        local.set 33
        i32.const 66832
        local.set 34
        i32.const 14744
        local.set 35
        local.get 34
        local.get 35
        i32.add
        local.set 36
        i32.const 48
        local.set 37
        local.get 33
        local.get 37
        i32.mul
        local.set 38
        local.get 36
        local.get 38
        i32.add
        local.set 39
        local.get 39
        call 53
        local.get 3
        i32.load offset=4
        local.set 40
        i32.const 1
        local.set 41
        local.get 40
        local.get 41
        i32.add
        local.set 42
        local.get 3
        local.get 42
        i32.store offset=4
        br 0 (;@2;)
      end
    end
    i32.const 16
    local.set 43
    local.get 3
    local.get 43
    i32.add
    local.set 44
    local.get 44
    global.set 0
    return)
  (func (;31;) (type 11) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
    local.get 4
    i32.load offset=93924
    local.set 5
    local.get 3
    local.get 5
    i32.store offset=8
    loop  ;; label = @1
      local.get 3
      i32.load offset=8
      local.set 6
      i32.const 0
      local.set 7
      local.get 6
      local.set 8
      local.get 7
      local.set 9
      local.get 8
      local.get 9
      i32.ne
      local.set 10
      i32.const 0
      local.set 11
      i32.const 1
      local.set 12
      local.get 10
      local.get 12
      i32.and
      local.set 13
      local.get 11
      local.set 14
      block  ;; label = @2
        local.get 13
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=8
        local.set 15
        local.get 15
        i32.load offset=12
        local.set 16
        i32.const 0
        local.set 17
        local.get 17
        local.set 18
        block  ;; label = @3
          local.get 16
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=8
          local.set 19
          local.get 19
          i32.load
          local.set 20
          local.get 3
          i32.load offset=12
          local.set 21
          local.get 20
          local.set 22
          local.get 21
          local.set 23
          local.get 22
          local.get 23
          i32.ge_u
          local.set 24
          local.get 24
          local.set 18
        end
        local.get 18
        local.set 25
        i32.const -1
        local.set 26
        local.get 25
        local.get 26
        i32.xor
        local.set 27
        local.get 27
        local.set 14
      end
      local.get 14
      local.set 28
      i32.const 1
      local.set 29
      local.get 28
      local.get 29
      i32.and
      local.set 30
      block  ;; label = @2
        local.get 30
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=8
        local.set 31
        local.get 31
        i32.load offset=8
        local.set 32
        local.get 3
        local.get 32
        i32.store offset=8
        br 1 (;@1;)
      end
    end
    local.get 3
    i32.load offset=8
    local.set 33
    local.get 33
    return)
  (func (;32;) (type 11) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
    local.get 4
    i32.load offset=93924
    local.set 5
    i32.const 0
    local.set 6
    local.get 5
    local.set 7
    local.get 6
    local.set 8
    local.get 7
    local.get 8
    i32.eq
    local.set 9
    i32.const 1
    local.set 10
    local.get 9
    local.get 10
    i32.and
    local.set 11
    block  ;; label = @1
      block  ;; label = @2
        local.get 11
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 12
        local.get 12
        i32.load offset=65536
        local.set 13
        local.get 3
        local.get 13
        i32.store offset=8
        br 1 (;@1;)
      end
      i32.const 0
      local.set 14
      local.get 14
      i32.load offset=93928
      local.set 15
      i32.const 0
      local.set 16
      local.get 16
      i32.load offset=93928
      local.set 17
      local.get 17
      i32.load
      local.set 18
      local.get 15
      local.get 18
      i32.add
      local.set 19
      i32.const 24
      local.set 20
      local.get 19
      local.get 20
      i32.add
      local.set 21
      local.get 3
      local.get 21
      i32.store offset=8
    end
    local.get 3
    i32.load offset=12
    local.set 22
    local.get 3
    i32.load offset=8
    local.set 23
    local.get 23
    local.get 22
    i32.store
    local.get 3
    i32.load offset=8
    local.set 24
    i32.const 0
    local.set 25
    local.get 24
    local.get 25
    i32.store offset=8
    i32.const 0
    local.set 26
    local.get 26
    i32.load offset=93928
    local.set 27
    local.get 3
    i32.load offset=8
    local.set 28
    local.get 28
    local.get 27
    i32.store offset=4
    local.get 3
    i32.load offset=8
    local.set 29
    local.get 3
    i32.load offset=8
    local.set 30
    local.get 30
    i32.load offset=4
    local.set 31
    local.get 31
    local.get 29
    i32.store offset=8
    local.get 3
    i32.load offset=8
    local.set 32
    i32.const 24
    local.set 33
    local.get 32
    local.get 33
    i32.add
    local.set 34
    local.get 3
    i32.load offset=8
    local.set 35
    local.get 35
    local.get 34
    i32.store offset=20
    local.get 3
    i32.load offset=8
    local.set 36
    i32.const 0
    local.set 37
    local.get 36
    local.get 37
    i32.store offset=12
    local.get 3
    i32.load offset=8
    local.set 38
    i32.const 0
    local.set 39
    local.get 39
    local.get 38
    i32.store offset=93928
    local.get 3
    i32.load offset=8
    local.set 40
    local.get 40
    return)
  (func (;33;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    i32.load offset=12
    local.set 5
    i32.const 24
    local.set 6
    local.get 5
    local.get 6
    i32.add
    local.set 7
    local.get 4
    i32.load offset=8
    local.set 8
    local.get 7
    local.get 8
    i32.add
    local.set 9
    local.get 4
    local.get 9
    i32.store offset=4
    local.get 4
    i32.load offset=12
    local.set 10
    local.get 10
    i32.load offset=8
    local.set 11
    local.get 4
    i32.load offset=4
    local.set 12
    local.get 12
    local.get 11
    i32.store offset=8
    local.get 4
    i32.load offset=12
    local.set 13
    local.get 4
    i32.load offset=4
    local.set 14
    local.get 14
    local.get 13
    i32.store offset=4
    local.get 4
    i32.load offset=4
    local.set 15
    local.get 4
    i32.load offset=12
    local.set 16
    local.get 16
    local.get 15
    i32.store offset=8
    local.get 4
    i32.load offset=4
    local.set 17
    local.get 17
    i32.load offset=8
    local.set 18
    i32.const 0
    local.set 19
    local.get 18
    local.set 20
    local.get 19
    local.set 21
    local.get 20
    local.get 21
    i32.ne
    local.set 22
    i32.const 1
    local.set 23
    local.get 22
    local.get 23
    i32.and
    local.set 24
    block  ;; label = @1
      local.get 24
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load offset=4
      local.set 25
      local.get 4
      i32.load offset=4
      local.set 26
      local.get 26
      i32.load offset=8
      local.set 27
      local.get 27
      local.get 25
      i32.store offset=4
    end
    local.get 4
    i32.load offset=12
    local.set 28
    local.get 28
    i32.load
    local.set 29
    local.get 4
    i32.load offset=8
    local.set 30
    local.get 29
    local.get 30
    i32.sub
    local.set 31
    i32.const 24
    local.set 32
    local.get 31
    local.get 32
    i32.sub
    local.set 33
    local.get 4
    i32.load offset=4
    local.set 34
    local.get 34
    local.get 33
    i32.store
    local.get 4
    i32.load offset=4
    local.set 35
    i32.const 24
    local.set 36
    local.get 35
    local.get 36
    i32.add
    local.set 37
    local.get 4
    i32.load offset=4
    local.set 38
    local.get 38
    local.get 37
    i32.store offset=20
    local.get 4
    i32.load offset=4
    local.set 39
    i32.const 1
    local.set 40
    local.get 39
    local.get 40
    i32.store offset=12
    local.get 4
    i32.load offset=8
    local.set 41
    local.get 4
    i32.load offset=12
    local.set 42
    local.get 42
    local.get 41
    i32.store
    i32.const 0
    local.set 43
    local.get 43
    i32.load offset=93928
    local.set 44
    local.get 4
    i32.load offset=12
    local.set 45
    local.get 44
    local.set 46
    local.get 45
    local.set 47
    local.get 46
    local.get 47
    i32.eq
    local.set 48
    i32.const 1
    local.set 49
    local.get 48
    local.get 49
    i32.and
    local.set 50
    block  ;; label = @1
      local.get 50
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load offset=4
      local.set 51
      i32.const 0
      local.set 52
      local.get 52
      local.get 51
      i32.store offset=93928
    end
    return)
  (func (;34;) (type 11) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
    i32.store offset=8
    local.get 3
    i32.load offset=8
    local.set 4
    i32.const 7
    local.set 5
    local.get 4
    local.get 5
    i32.and
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=8
        local.set 7
        local.get 3
        local.get 7
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=8
      local.set 8
      i32.const 3
      local.set 9
      local.get 8
      local.get 9
      i32.shr_u
      local.set 10
      i32.const 1
      local.set 11
      local.get 10
      local.get 11
      i32.add
      local.set 12
      i32.const 3
      local.set 13
      local.get 12
      local.get 13
      i32.shl
      local.set 14
      local.get 3
      local.get 14
      i32.store offset=12
    end
    local.get 3
    i32.load offset=12
    local.set 15
    local.get 15
    return)
  (func (;35;) (type 11) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    i32.load offset=8
    local.set 4
    local.get 4
    call 34
    local.set 5
    local.get 3
    local.get 5
    i32.store
    i32.const 0
    local.set 6
    local.get 6
    i32.load offset=93924
    local.set 7
    i32.const 0
    local.set 8
    local.get 7
    local.set 9
    local.get 8
    local.set 10
    local.get 9
    local.get 10
    i32.ne
    local.set 11
    i32.const 1
    local.set 12
    local.get 11
    local.get 12
    i32.and
    local.set 13
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 13
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.load
          local.set 14
          local.get 14
          call 31
          local.set 15
          local.get 3
          local.get 15
          i32.store offset=4
          local.get 3
          i32.load offset=4
          local.set 16
          i32.const 0
          local.set 17
          local.get 16
          local.set 18
          local.get 17
          local.set 19
          local.get 18
          local.get 19
          i32.ne
          local.set 20
          i32.const 1
          local.set 21
          local.get 20
          local.get 21
          i32.and
          local.set 22
          block  ;; label = @4
            block  ;; label = @5
              local.get 22
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=4
              local.set 23
              local.get 23
              i32.load
              local.set 24
              local.get 3
              i32.load
              local.set 25
              local.get 24
              local.get 25
              i32.sub
              local.set 26
              i32.const 32
              local.set 27
              local.get 26
              local.set 28
              local.get 27
              local.set 29
              local.get 28
              local.get 29
              i32.ge_u
              local.set 30
              i32.const 1
              local.set 31
              local.get 30
              local.get 31
              i32.and
              local.set 32
              block  ;; label = @6
                local.get 32
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                i32.load offset=4
                local.set 33
                local.get 3
                i32.load
                local.set 34
                local.get 33
                local.get 34
                call 33
              end
              local.get 3
              i32.load offset=4
              local.set 35
              i32.const 0
              local.set 36
              local.get 35
              local.get 36
              i32.store offset=12
              br 1 (;@4;)
            end
            local.get 3
            i32.load
            local.set 37
            local.get 37
            call 32
            local.set 38
            local.get 3
            local.get 38
            i32.store offset=4
            local.get 3
            i32.load offset=4
            local.set 39
            i32.const 0
            local.set 40
            local.get 39
            local.set 41
            local.get 40
            local.set 42
            local.get 41
            local.get 42
            i32.ne
            local.set 43
            i32.const 1
            local.set 44
            local.get 43
            local.get 44
            i32.and
            local.set 45
            block  ;; label = @5
              local.get 45
              br_if 0 (;@5;)
              i32.const 0
              local.set 46
              local.get 3
              local.get 46
              i32.store offset=12
              br 4 (;@1;)
            end
          end
          br 1 (;@2;)
        end
        local.get 3
        i32.load
        local.set 47
        local.get 47
        call 32
        local.set 48
        local.get 3
        local.get 48
        i32.store offset=4
        local.get 3
        i32.load offset=4
        local.set 49
        i32.const 0
        local.set 50
        local.get 49
        local.set 51
        local.get 50
        local.set 52
        local.get 51
        local.get 52
        i32.ne
        local.set 53
        i32.const 1
        local.set 54
        local.get 53
        local.get 54
        i32.and
        local.set 55
        block  ;; label = @3
          local.get 55
          br_if 0 (;@3;)
          i32.const 0
          local.set 56
          local.get 3
          local.get 56
          i32.store offset=12
          br 2 (;@1;)
        end
        local.get 3
        i32.load offset=4
        local.set 57
        i32.const 0
        local.set 58
        local.get 58
        local.get 57
        i32.store offset=93924
      end
      local.get 3
      i32.load offset=4
      local.set 59
      i32.const 24
      local.set 60
      local.get 59
      local.get 60
      i32.add
      local.set 61
      local.get 3
      local.get 61
      i32.store offset=12
    end
    local.get 3
    i32.load offset=12
    local.set 62
    i32.const 16
    local.set 63
    local.get 3
    local.get 63
    i32.add
    local.set 64
    local.get 64
    global.set 0
    local.get 62
    return)
  (func (;36;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 32
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    local.get 4
    local.get 0
    i32.store offset=28
    local.get 4
    local.get 1
    i32.store offset=24
    local.get 4
    i32.load offset=28
    local.set 5
    local.get 4
    i32.load offset=24
    local.set 6
    local.get 5
    local.get 6
    i32.mul
    local.set 7
    local.get 7
    call 35
    local.set 8
    local.get 4
    local.get 8
    i32.store offset=20
    local.get 4
    i32.load offset=20
    local.set 9
    i32.const 0
    local.set 10
    local.get 9
    local.set 11
    local.get 10
    local.set 12
    local.get 11
    local.get 12
    i32.ne
    local.set 13
    i32.const 1
    local.set 14
    local.get 13
    local.get 14
    i32.and
    local.set 15
    block  ;; label = @1
      local.get 15
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load offset=28
      local.set 16
      local.get 4
      i32.load offset=24
      local.set 17
      local.get 16
      local.get 17
      i32.mul
      local.set 18
      local.get 18
      call 34
      local.set 19
      i32.const 3
      local.set 20
      local.get 19
      local.get 20
      i32.shr_u
      local.set 21
      local.get 4
      local.get 21
      i32.store offset=16
      local.get 4
      i32.load offset=20
      local.set 22
      local.get 4
      i32.load offset=16
      local.set 23
      i32.const 0
      local.set 24
      local.get 22
      local.get 24
      local.get 23
      memory.fill
    end
    local.get 4
    i32.load offset=20
    local.set 25
    i32.const 32
    local.set 26
    local.get 4
    local.get 26
    i32.add
    local.set 27
    local.get 27
    global.set 0
    local.get 25
    return)
  (func (;37;) (type 11) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
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
    i32.const -24
    local.set 5
    local.get 4
    local.get 5
    i32.add
    local.set 6
    local.get 6
    return)
  (func (;38;) (type 11) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=8
    i32.const 0
    local.set 4
    local.get 4
    i32.load offset=93924
    local.set 5
    i32.const 0
    local.set 6
    local.get 5
    local.set 7
    local.get 6
    local.set 8
    local.get 7
    local.get 8
    i32.ne
    local.set 9
    i32.const 1
    local.set 10
    local.get 9
    local.get 10
    i32.and
    local.set 11
    block  ;; label = @1
      block  ;; label = @2
        local.get 11
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=8
        local.set 12
        i32.const 0
        local.set 13
        local.get 13
        i32.load offset=93924
        local.set 14
        local.get 12
        local.set 15
        local.get 14
        local.set 16
        local.get 15
        local.get 16
        i32.gt_u
        local.set 17
        i32.const 1
        local.set 18
        local.get 17
        local.get 18
        i32.and
        local.set 19
        block  ;; label = @3
          local.get 19
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=8
          local.set 20
          i32.const -24
          local.set 21
          local.get 20
          local.get 21
          i32.add
          local.set 22
          i32.const 0
          local.set 23
          local.get 23
          i32.load offset=93928
          local.set 24
          local.get 22
          local.set 25
          local.get 24
          local.set 26
          local.get 25
          local.get 26
          i32.le_u
          local.set 27
          i32.const 1
          local.set 28
          local.get 27
          local.get 28
          i32.and
          local.set 29
          local.get 29
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=8
          local.set 30
          local.get 3
          i32.load offset=8
          local.set 31
          local.get 31
          call 37
          local.set 32
          local.get 32
          i32.load offset=20
          local.set 33
          local.get 30
          local.set 34
          local.get 33
          local.set 35
          local.get 34
          local.get 35
          i32.eq
          local.set 36
          i32.const 1
          local.set 37
          local.get 36
          local.get 37
          i32.and
          local.set 38
          local.get 3
          local.get 38
          i32.store offset=12
          br 2 (;@1;)
        end
      end
      i32.const 0
      local.set 39
      local.get 3
      local.get 39
      i32.store offset=12
    end
    local.get 3
    i32.load offset=12
    local.set 40
    i32.const 16
    local.set 41
    local.get 3
    local.get 41
    i32.add
    local.set 42
    local.get 42
    global.set 0
    local.get 40
    return)
  (func (;39;) (type 11) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
    local.get 4
    i32.load offset=8
    local.set 5
    i32.const 0
    local.set 6
    local.get 5
    local.set 7
    local.get 6
    local.set 8
    local.get 7
    local.get 8
    i32.ne
    local.set 9
    i32.const 1
    local.set 10
    local.get 9
    local.get 10
    i32.and
    local.set 11
    block  ;; label = @1
      local.get 11
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.set 12
      local.get 12
      i32.load offset=8
      local.set 13
      local.get 13
      i32.load offset=12
      local.set 14
      local.get 14
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 15
      local.get 15
      i32.load offset=93928
      local.set 16
      local.get 3
      i32.load offset=12
      local.set 17
      local.get 17
      i32.load offset=8
      local.set 18
      local.get 16
      local.set 19
      local.get 18
      local.set 20
      local.get 19
      local.get 20
      i32.eq
      local.set 21
      i32.const 1
      local.set 22
      local.get 21
      local.get 22
      i32.and
      local.set 23
      block  ;; label = @2
        local.get 23
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=12
        local.set 24
        i32.const 0
        local.set 25
        local.get 25
        local.get 24
        i32.store offset=93928
      end
      local.get 3
      i32.load offset=12
      local.set 26
      local.get 26
      i32.load offset=8
      local.set 27
      local.get 27
      i32.load
      local.set 28
      i32.const 24
      local.set 29
      local.get 28
      local.get 29
      i32.add
      local.set 30
      local.get 3
      i32.load offset=12
      local.set 31
      local.get 31
      i32.load
      local.set 32
      local.get 32
      local.get 30
      i32.add
      local.set 33
      local.get 31
      local.get 33
      i32.store
      local.get 3
      i32.load offset=12
      local.set 34
      local.get 34
      i32.load offset=8
      local.set 35
      local.get 35
      i32.load offset=8
      local.set 36
      local.get 3
      i32.load offset=12
      local.set 37
      local.get 37
      local.get 36
      i32.store offset=8
      local.get 3
      i32.load offset=12
      local.set 38
      local.get 38
      i32.load offset=8
      local.set 39
      i32.const 0
      local.set 40
      local.get 39
      local.set 41
      local.get 40
      local.set 42
      local.get 41
      local.get 42
      i32.ne
      local.set 43
      i32.const 1
      local.set 44
      local.get 43
      local.get 44
      i32.and
      local.set 45
      block  ;; label = @2
        local.get 45
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=12
        local.set 46
        local.get 3
        i32.load offset=12
        local.set 47
        local.get 47
        i32.load offset=8
        local.set 48
        local.get 48
        local.get 46
        i32.store offset=4
      end
    end
    local.get 3
    i32.load offset=12
    local.set 49
    local.get 49
    return)
  (func (;40;) (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    call 38
    local.set 5
    block  ;; label = @1
      local.get 5
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.set 6
      local.get 6
      call 37
      local.set 7
      local.get 3
      local.get 7
      i32.store offset=8
      local.get 3
      i32.load offset=8
      local.set 8
      i32.const 1
      local.set 9
      local.get 8
      local.get 9
      i32.store offset=12
      local.get 3
      i32.load offset=8
      local.set 10
      local.get 10
      i32.load offset=4
      local.set 11
      i32.const 0
      local.set 12
      local.get 11
      local.set 13
      local.get 12
      local.set 14
      local.get 13
      local.get 14
      i32.ne
      local.set 15
      i32.const 1
      local.set 16
      local.get 15
      local.get 16
      i32.and
      local.set 17
      block  ;; label = @2
        local.get 17
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=8
        local.set 18
        local.get 18
        i32.load offset=4
        local.set 19
        local.get 19
        i32.load offset=12
        local.set 20
        local.get 20
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=8
        local.set 21
        local.get 21
        i32.load offset=4
        local.set 22
        local.get 22
        call 39
        local.set 23
        local.get 3
        local.get 23
        i32.store offset=8
      end
      local.get 3
      i32.load offset=8
      local.set 24
      local.get 24
      i32.load offset=8
      local.set 25
      i32.const 0
      local.set 26
      local.get 25
      local.set 27
      local.get 26
      local.set 28
      local.get 27
      local.get 28
      i32.ne
      local.set 29
      i32.const 1
      local.set 30
      local.get 29
      local.get 30
      i32.and
      local.set 31
      block  ;; label = @2
        local.get 31
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=8
        local.set 32
        local.get 32
        call 39
        drop
      end
    end
    i32.const 16
    local.set 33
    local.get 3
    local.get 33
    i32.add
    local.set 34
    local.get 34
    global.set 0
    return)
  (func (;41;) (type 11) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 v128 v128 v128 v128 i32 v128 v128 i32 i32 i32 i32 i32 i32 i32 i32 i32 v128 i32 v128 i32 i32 i32 i32 i32 i32 i32 i32 v128 i32 v128 i32 i32 i32 i32 i32 i32 i32 i32 v128 v128 i32 i32 i32 i32 i32 i32 i32 i32 v128 i32 v128 i32 i32 i32 i32 i32 i32 i32 i32 v128 i32 v128 i32 i32 i32 i32 i32 i32 i32 i32 v128 i32 v128 i32 i32 i32 i32 i32 i32 i32 i32 v128 i32 v128 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 v128 i32 v128 i32 i32 i32 i32 i32 i32 i32 v128 i32 v128 i32 i32 i32 i32 i32 i32 i32 i32 v128 i32 v128 i32 i32 i32 i32 i32 i32 i32 i32 v128 i32 v128 i32 i32 i32 i32 i32 i32 i32 i32 v128 i32 v128 i32 i32 i32 i32 i32 i32 i32 i32 v128 i32 v128 i32 i32 i32 i32 i32 i32 i32 i32 v128 i32 v128 i32 i32 i32 i32 i32 i32 i32 i32 v128 v128 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 848
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=308
    i32.const 0
    local.set 4
    local.get 3
    local.get 4
    i32.store8 offset=307
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load8_u offset=307
          local.set 5
          i32.const 255
          local.set 6
          local.get 5
          local.get 6
          i32.and
          local.set 7
          i32.const 8
          local.set 8
          local.get 7
          local.set 9
          local.get 8
          local.set 10
          local.get 9
          local.get 10
          i32.lt_s
          local.set 11
          i32.const 1
          local.set 12
          local.get 11
          local.get 12
          i32.and
          local.set 13
          local.get 13
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=308
          local.set 14
          local.get 3
          i32.load8_u offset=307
          local.set 15
          i32.const 3
          local.set 16
          local.get 15
          local.get 16
          i32.shl
          local.set 17
          local.get 14
          local.get 17
          i32.add
          local.set 18
          local.get 3
          local.get 18
          i32.store offset=316
          local.get 3
          i32.load offset=316
          local.set 19
          local.get 19
          v128.load align=1
          local.set 20
          local.get 3
          local.get 20
          v128.store offset=288
          local.get 3
          v128.load offset=288
          local.set 21
          local.get 3
          local.get 21
          v128.store offset=320
          local.get 3
          v128.load offset=320
          local.set 22
          local.get 22
          i8x16.popcnt
          local.set 23
          local.get 3
          local.get 23
          v128.store offset=272
          i32.const 0
          local.set 24
          local.get 3
          local.get 24
          i32.store8 offset=271
          local.get 3
          v128.load offset=272
          local.set 25
          local.get 3
          local.get 25
          v128.store offset=832
          local.get 3
          local.get 24
          i32.store offset=828
          local.get 3
          v128.load offset=832
          local.set 26
          local.get 3
          i32.load offset=828
          local.set 27
          i32.const 15
          local.set 28
          local.get 27
          local.get 28
          i32.and
          local.set 29
          i32.const 128
          local.set 30
          local.get 3
          local.get 30
          i32.add
          local.set 31
          local.get 31
          local.get 29
          i32.or
          local.set 32
          local.get 3
          local.get 26
          v128.store offset=128
          local.get 32
          i32.load8_u
          local.set 33
          local.get 3
          i32.load8_u offset=271
          local.set 34
          local.get 34
          local.get 33
          i32.add
          local.set 35
          local.get 3
          local.get 35
          i32.store8 offset=271
          local.get 3
          v128.load offset=272
          local.set 36
          local.get 3
          local.get 36
          v128.store offset=800
          i32.const 1
          local.set 37
          local.get 3
          local.get 37
          i32.store offset=796
          local.get 3
          v128.load offset=800
          local.set 38
          local.get 3
          i32.load offset=796
          local.set 39
          local.get 39
          local.get 28
          i32.and
          local.set 40
          i32.const 144
          local.set 41
          local.get 3
          local.get 41
          i32.add
          local.set 42
          local.get 42
          local.get 40
          i32.or
          local.set 43
          local.get 3
          local.get 38
          v128.store offset=144
          local.get 43
          i32.load8_u
          local.set 44
          local.get 3
          i32.load8_u offset=271
          local.set 45
          local.get 45
          local.get 44
          i32.add
          local.set 46
          local.get 3
          local.get 46
          i32.store8 offset=271
          local.get 3
          v128.load offset=272
          local.set 47
          local.get 3
          local.get 47
          v128.store offset=768
          i32.const 2
          local.set 48
          local.get 3
          local.get 48
          i32.store offset=764
          local.get 3
          v128.load offset=768
          local.set 49
          local.get 3
          i32.load offset=764
          local.set 50
          local.get 50
          local.get 28
          i32.and
          local.set 51
          i32.const 160
          local.set 52
          local.get 3
          local.get 52
          i32.add
          local.set 53
          local.get 53
          local.get 51
          i32.or
          local.set 54
          local.get 3
          local.get 49
          v128.store offset=160
          local.get 54
          i32.load8_u
          local.set 55
          local.get 3
          i32.load8_u offset=271
          local.set 56
          local.get 56
          local.get 55
          i32.add
          local.set 57
          local.get 3
          local.get 57
          i32.store8 offset=271
          local.get 3
          v128.load offset=272
          local.set 58
          local.get 3
          local.get 58
          v128.store offset=736
          local.get 3
          local.get 16
          i32.store offset=732
          local.get 3
          v128.load offset=736
          local.set 59
          local.get 3
          i32.load offset=732
          local.set 60
          local.get 60
          local.get 28
          i32.and
          local.set 61
          i32.const 176
          local.set 62
          local.get 3
          local.get 62
          i32.add
          local.set 63
          local.get 63
          local.get 61
          i32.or
          local.set 64
          local.get 3
          local.get 59
          v128.store offset=176
          local.get 64
          i32.load8_u
          local.set 65
          local.get 3
          i32.load8_u offset=271
          local.set 66
          local.get 66
          local.get 65
          i32.add
          local.set 67
          local.get 3
          local.get 67
          i32.store8 offset=271
          local.get 3
          v128.load offset=272
          local.set 68
          local.get 3
          local.get 68
          v128.store offset=704
          i32.const 4
          local.set 69
          local.get 3
          local.get 69
          i32.store offset=700
          local.get 3
          v128.load offset=704
          local.set 70
          local.get 3
          i32.load offset=700
          local.set 71
          local.get 71
          local.get 28
          i32.and
          local.set 72
          i32.const 192
          local.set 73
          local.get 3
          local.get 73
          i32.add
          local.set 74
          local.get 74
          local.get 72
          i32.or
          local.set 75
          local.get 3
          local.get 70
          v128.store offset=192
          local.get 75
          i32.load8_u
          local.set 76
          local.get 3
          i32.load8_u offset=271
          local.set 77
          local.get 77
          local.get 76
          i32.add
          local.set 78
          local.get 3
          local.get 78
          i32.store8 offset=271
          local.get 3
          v128.load offset=272
          local.set 79
          local.get 3
          local.get 79
          v128.store offset=672
          i32.const 5
          local.set 80
          local.get 3
          local.get 80
          i32.store offset=668
          local.get 3
          v128.load offset=672
          local.set 81
          local.get 3
          i32.load offset=668
          local.set 82
          local.get 82
          local.get 28
          i32.and
          local.set 83
          i32.const 208
          local.set 84
          local.get 3
          local.get 84
          i32.add
          local.set 85
          local.get 85
          local.get 83
          i32.or
          local.set 86
          local.get 3
          local.get 81
          v128.store offset=208
          local.get 86
          i32.load8_u
          local.set 87
          local.get 3
          i32.load8_u offset=271
          local.set 88
          local.get 88
          local.get 87
          i32.add
          local.set 89
          local.get 3
          local.get 89
          i32.store8 offset=271
          local.get 3
          v128.load offset=272
          local.set 90
          local.get 3
          local.get 90
          v128.store offset=640
          i32.const 6
          local.set 91
          local.get 3
          local.get 91
          i32.store offset=636
          local.get 3
          v128.load offset=640
          local.set 92
          local.get 3
          i32.load offset=636
          local.set 93
          local.get 93
          local.get 28
          i32.and
          local.set 94
          i32.const 224
          local.set 95
          local.get 3
          local.get 95
          i32.add
          local.set 96
          local.get 96
          local.get 94
          i32.or
          local.set 97
          local.get 3
          local.get 92
          v128.store offset=224
          local.get 97
          i32.load8_u
          local.set 98
          local.get 3
          i32.load8_u offset=271
          local.set 99
          local.get 99
          local.get 98
          i32.add
          local.set 100
          local.get 3
          local.get 100
          i32.store8 offset=271
          local.get 3
          v128.load offset=272
          local.set 101
          local.get 3
          local.get 101
          v128.store offset=608
          i32.const 7
          local.set 102
          local.get 3
          local.get 102
          i32.store offset=604
          local.get 3
          v128.load offset=608
          local.set 103
          local.get 3
          i32.load offset=604
          local.set 104
          local.get 104
          local.get 28
          i32.and
          local.set 105
          i32.const 240
          local.set 106
          local.get 3
          local.get 106
          i32.add
          local.set 107
          local.get 107
          local.get 105
          i32.or
          local.set 108
          local.get 3
          local.get 103
          v128.store offset=240
          local.get 108
          i32.load8_u
          local.set 109
          i32.const 255
          local.set 110
          local.get 109
          local.get 110
          i32.and
          local.set 111
          local.get 3
          i32.load8_u offset=271
          local.set 112
          i32.const 255
          local.set 113
          local.get 112
          local.get 113
          i32.and
          local.set 114
          local.get 114
          local.get 111
          i32.add
          local.set 115
          local.get 3
          local.get 115
          i32.store8 offset=271
          local.get 3
          i32.load8_u offset=271
          local.set 116
          i32.const 255
          local.set 117
          local.get 116
          local.get 117
          i32.and
          local.set 118
          i32.const 32
          local.set 119
          local.get 118
          local.set 120
          local.get 119
          local.set 121
          local.get 120
          local.get 121
          i32.ne
          local.set 122
          i32.const 1
          local.set 123
          local.get 122
          local.get 123
          i32.and
          local.set 124
          block  ;; label = @4
            local.get 124
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            local.set 125
            i32.const 1
            local.set 126
            local.get 125
            local.get 126
            i32.and
            local.set 127
            local.get 3
            local.get 127
            i32.store8 offset=315
            br 3 (;@1;)
          end
          i32.const 0
          local.set 128
          local.get 3
          local.get 128
          i32.store8 offset=271
          local.get 3
          v128.load offset=272
          local.set 129
          local.get 3
          local.get 129
          v128.store offset=576
          i32.const 8
          local.set 130
          local.get 3
          local.get 130
          i32.store offset=572
          local.get 3
          v128.load offset=576
          local.set 131
          local.get 3
          i32.load offset=572
          local.set 132
          i32.const 15
          local.set 133
          local.get 132
          local.get 133
          i32.and
          local.set 134
          local.get 3
          local.get 134
          i32.or
          local.set 135
          local.get 3
          local.get 131
          v128.store
          local.get 135
          i32.load8_u
          local.set 136
          local.get 3
          i32.load8_u offset=271
          local.set 137
          local.get 137
          local.get 136
          i32.add
          local.set 138
          local.get 3
          local.get 138
          i32.store8 offset=271
          local.get 3
          v128.load offset=272
          local.set 139
          local.get 3
          local.get 139
          v128.store offset=544
          i32.const 9
          local.set 140
          local.get 3
          local.get 140
          i32.store offset=540
          local.get 3
          v128.load offset=544
          local.set 141
          local.get 3
          i32.load offset=540
          local.set 142
          local.get 142
          local.get 133
          i32.and
          local.set 143
          i32.const 16
          local.set 144
          local.get 3
          local.get 144
          i32.add
          local.set 145
          local.get 145
          local.get 143
          i32.or
          local.set 146
          local.get 3
          local.get 141
          v128.store offset=16
          local.get 146
          i32.load8_u
          local.set 147
          local.get 3
          i32.load8_u offset=271
          local.set 148
          local.get 148
          local.get 147
          i32.add
          local.set 149
          local.get 3
          local.get 149
          i32.store8 offset=271
          local.get 3
          v128.load offset=272
          local.set 150
          local.get 3
          local.get 150
          v128.store offset=512
          i32.const 10
          local.set 151
          local.get 3
          local.get 151
          i32.store offset=508
          local.get 3
          v128.load offset=512
          local.set 152
          local.get 3
          i32.load offset=508
          local.set 153
          local.get 153
          local.get 133
          i32.and
          local.set 154
          i32.const 32
          local.set 155
          local.get 3
          local.get 155
          i32.add
          local.set 156
          local.get 156
          local.get 154
          i32.or
          local.set 157
          local.get 3
          local.get 152
          v128.store offset=32
          local.get 157
          i32.load8_u
          local.set 158
          local.get 3
          i32.load8_u offset=271
          local.set 159
          local.get 159
          local.get 158
          i32.add
          local.set 160
          local.get 3
          local.get 160
          i32.store8 offset=271
          local.get 3
          v128.load offset=272
          local.set 161
          local.get 3
          local.get 161
          v128.store offset=480
          i32.const 11
          local.set 162
          local.get 3
          local.get 162
          i32.store offset=476
          local.get 3
          v128.load offset=480
          local.set 163
          local.get 3
          i32.load offset=476
          local.set 164
          local.get 164
          local.get 133
          i32.and
          local.set 165
          i32.const 48
          local.set 166
          local.get 3
          local.get 166
          i32.add
          local.set 167
          local.get 167
          local.get 165
          i32.or
          local.set 168
          local.get 3
          local.get 163
          v128.store offset=48
          local.get 168
          i32.load8_u
          local.set 169
          local.get 3
          i32.load8_u offset=271
          local.set 170
          local.get 170
          local.get 169
          i32.add
          local.set 171
          local.get 3
          local.get 171
          i32.store8 offset=271
          local.get 3
          v128.load offset=272
          local.set 172
          local.get 3
          local.get 172
          v128.store offset=448
          i32.const 12
          local.set 173
          local.get 3
          local.get 173
          i32.store offset=444
          local.get 3
          v128.load offset=448
          local.set 174
          local.get 3
          i32.load offset=444
          local.set 175
          local.get 175
          local.get 133
          i32.and
          local.set 176
          i32.const 64
          local.set 177
          local.get 3
          local.get 177
          i32.add
          local.set 178
          local.get 178
          local.get 176
          i32.or
          local.set 179
          local.get 3
          local.get 174
          v128.store offset=64
          local.get 179
          i32.load8_u
          local.set 180
          local.get 3
          i32.load8_u offset=271
          local.set 181
          local.get 181
          local.get 180
          i32.add
          local.set 182
          local.get 3
          local.get 182
          i32.store8 offset=271
          local.get 3
          v128.load offset=272
          local.set 183
          local.get 3
          local.get 183
          v128.store offset=416
          i32.const 13
          local.set 184
          local.get 3
          local.get 184
          i32.store offset=412
          local.get 3
          v128.load offset=416
          local.set 185
          local.get 3
          i32.load offset=412
          local.set 186
          local.get 186
          local.get 133
          i32.and
          local.set 187
          i32.const 80
          local.set 188
          local.get 3
          local.get 188
          i32.add
          local.set 189
          local.get 189
          local.get 187
          i32.or
          local.set 190
          local.get 3
          local.get 185
          v128.store offset=80
          local.get 190
          i32.load8_u
          local.set 191
          local.get 3
          i32.load8_u offset=271
          local.set 192
          local.get 192
          local.get 191
          i32.add
          local.set 193
          local.get 3
          local.get 193
          i32.store8 offset=271
          local.get 3
          v128.load offset=272
          local.set 194
          local.get 3
          local.get 194
          v128.store offset=384
          i32.const 14
          local.set 195
          local.get 3
          local.get 195
          i32.store offset=380
          local.get 3
          v128.load offset=384
          local.set 196
          local.get 3
          i32.load offset=380
          local.set 197
          local.get 197
          local.get 133
          i32.and
          local.set 198
          i32.const 96
          local.set 199
          local.get 3
          local.get 199
          i32.add
          local.set 200
          local.get 200
          local.get 198
          i32.or
          local.set 201
          local.get 3
          local.get 196
          v128.store offset=96
          local.get 201
          i32.load8_u
          local.set 202
          local.get 3
          i32.load8_u offset=271
          local.set 203
          local.get 203
          local.get 202
          i32.add
          local.set 204
          local.get 3
          local.get 204
          i32.store8 offset=271
          local.get 3
          v128.load offset=272
          local.set 205
          local.get 3
          local.get 205
          v128.store offset=352
          local.get 3
          local.get 133
          i32.store offset=348
          local.get 3
          v128.load offset=352
          local.set 206
          local.get 3
          i32.load offset=348
          local.set 207
          local.get 207
          local.get 133
          i32.and
          local.set 208
          i32.const 112
          local.set 209
          local.get 3
          local.get 209
          i32.add
          local.set 210
          local.get 210
          local.get 208
          i32.or
          local.set 211
          local.get 3
          local.get 206
          v128.store offset=112
          local.get 211
          i32.load8_u
          local.set 212
          i32.const 255
          local.set 213
          local.get 212
          local.get 213
          i32.and
          local.set 214
          local.get 3
          i32.load8_u offset=271
          local.set 215
          i32.const 255
          local.set 216
          local.get 215
          local.get 216
          i32.and
          local.set 217
          local.get 217
          local.get 214
          i32.add
          local.set 218
          local.get 3
          local.get 218
          i32.store8 offset=271
          local.get 3
          i32.load8_u offset=271
          local.set 219
          i32.const 255
          local.set 220
          local.get 219
          local.get 220
          i32.and
          local.set 221
          i32.const 32
          local.set 222
          local.get 221
          local.set 223
          local.get 222
          local.set 224
          local.get 223
          local.get 224
          i32.ne
          local.set 225
          i32.const 1
          local.set 226
          local.get 225
          local.get 226
          i32.and
          local.set 227
          block  ;; label = @4
            local.get 227
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            local.set 228
            i32.const 1
            local.set 229
            local.get 228
            local.get 229
            i32.and
            local.set 230
            local.get 3
            local.get 230
            i32.store8 offset=315
            br 3 (;@1;)
          end
          local.get 3
          i32.load8_u offset=307
          local.set 231
          i32.const 255
          local.set 232
          local.get 231
          local.get 232
          i32.and
          local.set 233
          i32.const 2
          local.set 234
          local.get 233
          local.get 234
          i32.add
          local.set 235
          local.get 3
          local.get 235
          i32.store8 offset=307
          br 0 (;@3;)
        end
      end
      i32.const 1
      local.set 236
      i32.const 1
      local.set 237
      local.get 236
      local.get 237
      i32.and
      local.set 238
      local.get 3
      local.get 238
      i32.store8 offset=315
    end
    local.get 3
    i32.load8_u offset=315
    local.set 239
    i32.const 1
    local.set 240
    local.get 239
    local.get 240
    i32.and
    local.set 241
    i32.const 848
    local.set 242
    local.get 3
    local.get 242
    i32.add
    local.set 243
    local.get 243
    global.set 0
    local.get 241
    return)
  (func (;42;) (type 11) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 v128 i32 i32 i32 i32 i32 v128 v128 v128 v128 v128 v128 v128 v128 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 128
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=64
    i32.const 0
    local.set 4
    local.get 3
    local.get 4
    i32.store8 offset=63
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load8_u offset=63
          local.set 5
          i32.const 255
          local.set 6
          local.get 5
          local.get 6
          i32.and
          local.set 7
          i32.const 8
          local.set 8
          local.get 7
          local.set 9
          local.get 8
          local.set 10
          local.get 9
          local.get 10
          i32.lt_s
          local.set 11
          i32.const 1
          local.set 12
          local.get 11
          local.get 12
          i32.and
          local.set 13
          local.get 13
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.load8_u offset=63
          local.set 14
          i32.const 255
          local.set 15
          local.get 14
          local.get 15
          i32.and
          local.set 16
          i32.const 1
          local.set 17
          local.get 16
          local.get 17
          i32.add
          local.set 18
          local.get 3
          local.get 18
          i32.store8 offset=62
          block  ;; label = @4
            loop  ;; label = @5
              local.get 3
              i32.load8_u offset=62
              local.set 19
              i32.const 255
              local.set 20
              local.get 19
              local.get 20
              i32.and
              local.set 21
              i32.const 7
              local.set 22
              local.get 21
              local.set 23
              local.get 22
              local.set 24
              local.get 23
              local.get 24
              i32.lt_s
              local.set 25
              i32.const 1
              local.set 26
              local.get 25
              local.get 26
              i32.and
              local.set 27
              local.get 27
              i32.eqz
              br_if 1 (;@4;)
              local.get 3
              i32.load offset=64
              local.set 28
              local.get 3
              i32.load8_u offset=63
              local.set 29
              i32.const 3
              local.set 30
              local.get 29
              local.get 30
              i32.shl
              local.set 31
              local.get 28
              local.get 31
              i32.add
              local.set 32
              local.get 3
              local.get 32
              i32.store offset=76
              local.get 3
              i32.load offset=76
              local.set 33
              local.get 33
              v128.load align=1
              local.set 34
              local.get 3
              local.get 34
              v128.store offset=32
              local.get 3
              i32.load offset=64
              local.set 35
              local.get 3
              i32.load8_u offset=62
              local.set 36
              local.get 36
              local.get 30
              i32.shl
              local.set 37
              local.get 35
              local.get 37
              i32.add
              local.set 38
              local.get 3
              local.get 38
              i32.store offset=72
              local.get 3
              i32.load offset=72
              local.set 39
              local.get 39
              v128.load align=1
              local.set 40
              local.get 3
              local.get 40
              v128.store offset=16
              local.get 3
              v128.load offset=32
              local.set 41
              local.get 3
              v128.load offset=16
              local.set 42
              local.get 3
              local.get 41
              v128.store offset=96
              local.get 3
              local.get 42
              v128.store offset=80
              local.get 3
              v128.load offset=96
              local.set 43
              local.get 3
              v128.load offset=80
              local.set 44
              local.get 43
              local.get 44
              i64x2.eq
              local.set 45
              local.get 3
              local.get 45
              v128.store
              local.get 3
              v128.load
              local.set 46
              local.get 3
              local.get 46
              v128.store offset=112
              local.get 3
              v128.load offset=112
              local.set 47
              local.get 47
              drop
              local.get 47
              v128.any_true
              local.set 48
              block  ;; label = @6
                local.get 48
                i32.eqz
                br_if 0 (;@6;)
                i32.const 0
                local.set 49
                i32.const 1
                local.set 50
                local.get 49
                local.get 50
                i32.and
                local.set 51
                local.get 3
                local.get 51
                i32.store8 offset=71
                br 5 (;@1;)
              end
              local.get 3
              i32.load8_u offset=62
              local.set 52
              i32.const 255
              local.set 53
              local.get 52
              local.get 53
              i32.and
              local.set 54
              i32.const 2
              local.set 55
              local.get 54
              local.get 55
              i32.add
              local.set 56
              local.get 3
              local.get 56
              i32.store8 offset=62
              br 0 (;@5;)
            end
          end
          local.get 3
          i32.load8_u offset=63
          local.set 57
          i32.const 255
          local.set 58
          local.get 57
          local.get 58
          i32.and
          local.set 59
          i32.const 2
          local.set 60
          local.get 59
          local.get 60
          i32.add
          local.set 61
          local.get 3
          local.get 61
          i32.store8 offset=63
          br 0 (;@3;)
        end
      end
      i32.const 1
      local.set 62
      i32.const 1
      local.set 63
      local.get 62
      local.get 63
      i32.and
      local.set 64
      local.get 3
      local.get 64
      i32.store8 offset=71
    end
    local.get 3
    i32.load8_u offset=71
    local.set 65
    i32.const 1
    local.set 66
    local.get 65
    local.get 66
    i32.and
    local.set 67
    local.get 67
    return)
  (func (;43;) (type 11) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 v128 v128 i32 v128 i32 v128 v128 v128 v128 v128 v128 i32 v128 i32 v128 v128 v128 v128 v128 v128 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 208
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=52
    i32.const 0
    local.set 4
    local.get 3
    local.get 4
    i32.store8 offset=51
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load8_u offset=51
          local.set 5
          i32.const 255
          local.set 6
          local.get 5
          local.get 6
          i32.and
          local.set 7
          i32.const 8
          local.set 8
          local.get 7
          local.set 9
          local.get 8
          local.set 10
          local.get 9
          local.get 10
          i32.lt_s
          local.set 11
          i32.const 1
          local.set 12
          local.get 11
          local.get 12
          i32.and
          local.set 13
          local.get 13
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=52
          local.set 14
          local.get 3
          i32.load8_u offset=51
          local.set 15
          i32.const 3
          local.set 16
          local.get 15
          local.get 16
          i32.shl
          local.set 17
          local.get 14
          local.get 17
          i32.add
          local.set 18
          local.get 3
          local.get 18
          i32.store offset=60
          local.get 3
          i32.load offset=60
          local.set 19
          local.get 19
          v128.load align=1
          local.set 20
          local.get 3
          local.get 20
          v128.store offset=32
          local.get 3
          v128.load offset=32
          local.set 21
          local.get 3
          local.get 21
          v128.store offset=192
          i32.const 1
          local.set 22
          local.get 3
          local.get 22
          i32.store offset=188
          local.get 3
          v128.load offset=192
          local.set 23
          local.get 3
          i32.load offset=188
          local.set 24
          local.get 23
          local.get 24
          i64x2.shr_u
          local.set 25
          local.get 3
          local.get 21
          v128.store offset=128
          local.get 3
          local.get 25
          v128.store offset=112
          local.get 3
          v128.load offset=128
          local.set 26
          local.get 3
          v128.load offset=112
          local.set 27
          local.get 26
          local.get 27
          v128.and
          local.set 28
          local.get 3
          local.get 28
          v128.store offset=16
          local.get 3
          v128.load offset=16
          local.set 29
          local.get 3
          v128.load offset=32
          local.set 30
          local.get 3
          local.get 30
          v128.store offset=160
          i32.const 2
          local.set 31
          local.get 3
          local.get 31
          i32.store offset=156
          local.get 3
          v128.load offset=160
          local.set 32
          local.get 3
          i32.load offset=156
          local.set 33
          local.get 32
          local.get 33
          i64x2.shr_u
          local.set 34
          local.get 3
          local.get 29
          v128.store offset=96
          local.get 3
          local.get 34
          v128.store offset=80
          local.get 3
          v128.load offset=96
          local.set 35
          local.get 3
          v128.load offset=80
          local.set 36
          local.get 35
          local.get 36
          v128.and
          local.set 37
          local.get 3
          local.get 37
          v128.store
          local.get 3
          v128.load
          local.set 38
          local.get 3
          local.get 38
          v128.store offset=64
          local.get 3
          v128.load offset=64
          local.set 39
          local.get 39
          drop
          local.get 39
          v128.any_true
          local.set 40
          block  ;; label = @4
            local.get 40
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            local.set 41
            i32.const 1
            local.set 42
            local.get 41
            local.get 42
            i32.and
            local.set 43
            local.get 3
            local.get 43
            i32.store8 offset=59
            br 3 (;@1;)
          end
          local.get 3
          i32.load8_u offset=51
          local.set 44
          i32.const 255
          local.set 45
          local.get 44
          local.get 45
          i32.and
          local.set 46
          i32.const 2
          local.set 47
          local.get 46
          local.get 47
          i32.add
          local.set 48
          local.get 3
          local.get 48
          i32.store8 offset=51
          br 0 (;@3;)
        end
      end
      i32.const 1
      local.set 49
      i32.const 1
      local.set 50
      local.get 49
      local.get 50
      i32.and
      local.set 51
      local.get 3
      local.get 51
      i32.store8 offset=59
    end
    local.get 3
    i32.load8_u offset=59
    local.set 52
    i32.const 1
    local.set 53
    local.get 52
    local.get 53
    i32.and
    local.set 54
    i32.const 208
    local.set 55
    local.get 3
    local.get 55
    i32.add
    local.set 56
    local.get 56
    global.set 0
    local.get 54
    return)
  (func (;44;) (type 11) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 v128 v128 v128 v128 v128 i32 v128 i32 v128 v128 v128 v128 v128 v128 i32 v128 i32 v128 v128 v128 v128 v128 v128 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 240
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=68
    i32.const 0
    local.set 4
    local.get 3
    local.get 4
    i32.store8 offset=67
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load8_u offset=67
          local.set 5
          i32.const 255
          local.set 6
          local.get 5
          local.get 6
          i32.and
          local.set 7
          i32.const 8
          local.set 8
          local.get 7
          local.set 9
          local.get 8
          local.set 10
          local.get 9
          local.get 10
          i32.lt_s
          local.set 11
          i32.const 1
          local.set 12
          local.get 11
          local.get 12
          i32.and
          local.set 13
          local.get 13
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=68
          local.set 14
          local.get 3
          i32.load8_u offset=67
          local.set 15
          i32.const 3
          local.set 16
          local.get 15
          local.get 16
          i32.shl
          local.set 17
          local.get 14
          local.get 17
          i32.add
          local.set 18
          local.get 3
          local.get 18
          i32.store offset=76
          local.get 3
          i32.load offset=76
          local.set 19
          local.get 19
          v128.load align=1
          local.set 20
          local.get 3
          local.get 20
          v128.store offset=48
          local.get 3
          v128.load offset=48
          local.set 21
          local.get 3
          local.get 21
          v128.store offset=224
          local.get 3
          v128.load offset=224
          local.set 22
          local.get 22
          v128.not
          local.set 23
          local.get 3
          local.get 23
          v128.store offset=32
          local.get 3
          v128.load offset=32
          local.set 24
          local.get 3
          local.get 24
          v128.store offset=208
          i32.const 1
          local.set 25
          local.get 3
          local.get 25
          i32.store offset=204
          local.get 3
          v128.load offset=208
          local.set 26
          local.get 3
          i32.load offset=204
          local.set 27
          local.get 26
          local.get 27
          i64x2.shr_u
          local.set 28
          local.get 3
          local.get 24
          v128.store offset=144
          local.get 3
          local.get 28
          v128.store offset=128
          local.get 3
          v128.load offset=144
          local.set 29
          local.get 3
          v128.load offset=128
          local.set 30
          local.get 29
          local.get 30
          v128.and
          local.set 31
          local.get 3
          local.get 31
          v128.store offset=16
          local.get 3
          v128.load offset=16
          local.set 32
          local.get 3
          v128.load offset=32
          local.set 33
          local.get 3
          local.get 33
          v128.store offset=176
          i32.const 2
          local.set 34
          local.get 3
          local.get 34
          i32.store offset=172
          local.get 3
          v128.load offset=176
          local.set 35
          local.get 3
          i32.load offset=172
          local.set 36
          local.get 35
          local.get 36
          i64x2.shr_u
          local.set 37
          local.get 3
          local.get 32
          v128.store offset=112
          local.get 3
          local.get 37
          v128.store offset=96
          local.get 3
          v128.load offset=112
          local.set 38
          local.get 3
          v128.load offset=96
          local.set 39
          local.get 38
          local.get 39
          v128.and
          local.set 40
          local.get 3
          local.get 40
          v128.store
          local.get 3
          v128.load
          local.set 41
          local.get 3
          local.get 41
          v128.store offset=80
          local.get 3
          v128.load offset=80
          local.set 42
          local.get 42
          drop
          local.get 42
          v128.any_true
          local.set 43
          block  ;; label = @4
            local.get 43
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            local.set 44
            i32.const 1
            local.set 45
            local.get 44
            local.get 45
            i32.and
            local.set 46
            local.get 3
            local.get 46
            i32.store8 offset=75
            br 3 (;@1;)
          end
          local.get 3
          i32.load8_u offset=67
          local.set 47
          i32.const 255
          local.set 48
          local.get 47
          local.get 48
          i32.and
          local.set 49
          i32.const 2
          local.set 50
          local.get 49
          local.get 50
          i32.add
          local.set 51
          local.get 3
          local.get 51
          i32.store8 offset=67
          br 0 (;@3;)
        end
      end
      i32.const 1
      local.set 52
      i32.const 1
      local.set 53
      local.get 52
      local.get 53
      i32.and
      local.set 54
      local.get 3
      local.get 54
      i32.store8 offset=75
    end
    local.get 3
    i32.load8_u offset=75
    local.set 55
    i32.const 1
    local.set 56
    local.get 55
    local.get 56
    i32.and
    local.set 57
    i32.const 240
    local.set 58
    local.get 3
    local.get 58
    i32.add
    local.set 59
    local.get 59
    global.set 0
    local.get 57
    return)
  (func (;45;) (type 11) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    call 41
    local.set 5
    i32.const 0
    local.set 6
    i32.const 1
    local.set 7
    local.get 5
    local.get 7
    i32.and
    local.set 8
    local.get 6
    local.set 9
    block  ;; label = @1
      local.get 8
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.set 10
      i32.const 512
      local.set 11
      local.get 10
      local.get 11
      i32.add
      local.set 12
      local.get 12
      call 41
      local.set 13
      i32.const 0
      local.set 14
      i32.const 1
      local.set 15
      local.get 13
      local.get 15
      i32.and
      local.set 16
      local.get 14
      local.set 9
      local.get 16
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.set 17
      local.get 17
      call 42
      local.set 18
      i32.const 0
      local.set 19
      i32.const 1
      local.set 20
      local.get 18
      local.get 20
      i32.and
      local.set 21
      local.get 19
      local.set 9
      local.get 21
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.set 22
      i32.const 512
      local.set 23
      local.get 22
      local.get 23
      i32.add
      local.set 24
      local.get 24
      call 42
      local.set 25
      i32.const 0
      local.set 26
      i32.const 1
      local.set 27
      local.get 25
      local.get 27
      i32.and
      local.set 28
      local.get 26
      local.set 9
      local.get 28
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.set 29
      local.get 29
      call 44
      local.set 30
      i32.const 0
      local.set 31
      i32.const 1
      local.set 32
      local.get 30
      local.get 32
      i32.and
      local.set 33
      local.get 31
      local.set 9
      local.get 33
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.set 34
      i32.const 512
      local.set 35
      local.get 34
      local.get 35
      i32.add
      local.set 36
      local.get 36
      call 44
      local.set 37
      i32.const 0
      local.set 38
      i32.const 1
      local.set 39
      local.get 37
      local.get 39
      i32.and
      local.set 40
      local.get 38
      local.set 9
      local.get 40
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.set 41
      local.get 41
      call 43
      local.set 42
      i32.const 0
      local.set 43
      i32.const 1
      local.set 44
      local.get 42
      local.get 44
      i32.and
      local.set 45
      local.get 43
      local.set 9
      local.get 45
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.set 46
      i32.const 512
      local.set 47
      local.get 46
      local.get 47
      i32.add
      local.set 48
      local.get 48
      call 43
      local.set 49
      local.get 49
      local.set 9
    end
    local.get 9
    local.set 50
    i32.const 1
    local.set 51
    local.get 50
    local.get 51
    i32.and
    local.set 52
    i32.const 16
    local.set 53
    local.get 3
    local.get 53
    i32.add
    local.set 54
    local.get 54
    global.set 0
    local.get 52
    return)
  (func (;46;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    i32.load offset=8
    local.set 5
    local.get 4
    i32.load offset=12
    local.set 6
    i32.const 512
    local.set 7
    local.get 5
    local.get 6
    local.get 7
    memory.copy
    i32.const 0
    local.set 8
    local.get 4
    local.get 8
    i32.store8 offset=7
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load8_u offset=7
        local.set 9
        i32.const 255
        local.set 10
        local.get 9
        local.get 10
        i32.and
        local.set 11
        i32.const 64
        local.set 12
        local.get 11
        local.set 13
        local.get 12
        local.set 14
        local.get 13
        local.get 14
        i32.lt_s
        local.set 15
        i32.const 1
        local.set 16
        local.get 15
        local.get 16
        i32.and
        local.set 17
        local.get 17
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.load8_u offset=7
        local.set 18
        i32.const 255
        local.set 19
        local.get 18
        local.get 19
        i32.and
        local.set 20
        i32.const 63
        local.set 21
        local.get 21
        local.get 20
        i32.sub
        local.set 22
        local.get 4
        local.get 22
        i32.store8 offset=6
        i32.const 0
        local.set 23
        local.get 4
        local.get 23
        i32.store8 offset=5
        block  ;; label = @3
          loop  ;; label = @4
            local.get 4
            i32.load8_u offset=5
            local.set 24
            i32.const 255
            local.set 25
            local.get 24
            local.get 25
            i32.and
            local.set 26
            i32.const 64
            local.set 27
            local.get 26
            local.set 28
            local.get 27
            local.set 29
            local.get 28
            local.get 29
            i32.lt_s
            local.set 30
            i32.const 1
            local.set 31
            local.get 30
            local.get 31
            i32.and
            local.set 32
            local.get 32
            i32.eqz
            br_if 1 (;@3;)
            local.get 4
            i32.load offset=8
            local.set 33
            i32.const 512
            local.set 34
            local.get 33
            local.get 34
            i32.add
            local.set 35
            local.get 4
            i32.load8_u offset=7
            local.set 36
            i32.const 255
            local.set 37
            local.get 36
            local.get 37
            i32.and
            local.set 38
            i32.const 3
            local.set 39
            local.get 38
            local.get 39
            i32.shl
            local.set 40
            local.get 35
            local.get 40
            i32.add
            local.set 41
            local.get 41
            i64.load
            local.set 42
            i64.const 1
            local.set 43
            local.get 42
            local.get 43
            i64.shl
            local.set 44
            local.get 41
            local.get 44
            i64.store
            local.get 4
            i32.load offset=12
            local.set 45
            local.get 4
            i32.load8_u offset=5
            local.set 46
            i32.const 255
            local.set 47
            local.get 46
            local.get 47
            i32.and
            local.set 48
            i32.const 3
            local.set 49
            local.get 48
            local.get 49
            i32.shl
            local.set 50
            local.get 45
            local.get 50
            i32.add
            local.set 51
            local.get 51
            i64.load
            local.set 52
            local.get 4
            i32.load8_u offset=6
            local.set 53
            i32.const 255
            local.set 54
            local.get 53
            local.get 54
            i32.and
            local.set 55
            local.get 55
            local.set 56
            local.get 56
            i64.extend_i32_u
            local.set 57
            local.get 52
            local.get 57
            i64.shr_u
            local.set 58
            i64.const 1
            local.set 59
            local.get 58
            local.get 59
            i64.and
            local.set 60
            local.get 4
            i32.load offset=8
            local.set 61
            i32.const 512
            local.set 62
            local.get 61
            local.get 62
            i32.add
            local.set 63
            local.get 4
            i32.load8_u offset=7
            local.set 64
            i32.const 255
            local.set 65
            local.get 64
            local.get 65
            i32.and
            local.set 66
            i32.const 3
            local.set 67
            local.get 66
            local.get 67
            i32.shl
            local.set 68
            local.get 63
            local.get 68
            i32.add
            local.set 69
            local.get 69
            i64.load
            local.set 70
            local.get 70
            local.get 60
            i64.or
            local.set 71
            local.get 69
            local.get 71
            i64.store
            local.get 4
            i32.load8_u offset=5
            local.set 72
            i32.const 1
            local.set 73
            local.get 72
            local.get 73
            i32.add
            local.set 74
            local.get 4
            local.get 74
            i32.store8 offset=5
            br 0 (;@4;)
          end
        end
        local.get 4
        i32.load8_u offset=7
        local.set 75
        i32.const 1
        local.set 76
        local.get 75
        local.get 76
        i32.add
        local.set 77
        local.get 4
        local.get 77
        i32.store8 offset=7
        br 0 (;@2;)
      end
    end
    return)
  (func (;47;) (type 11) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i64 i64 i64 i64 i64 i64 i64 i32 i32 i32 i32 i64 i64 i64 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i32 i32 i32 i32 i32 i64 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 1584
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store offset=1580
    i32.const 1024
    local.set 4
    i32.const 0
    local.set 5
    i32.const 552
    local.set 6
    local.get 3
    local.get 6
    i32.add
    local.set 7
    local.get 7
    local.get 5
    local.get 4
    memory.fill
    i32.const 512
    local.set 8
    i32.const 0
    local.set 9
    i32.const 32
    local.set 10
    local.get 3
    local.get 10
    i32.add
    local.set 11
    local.get 11
    local.get 9
    local.get 8
    memory.fill
    i32.const 65808
    local.set 12
    i32.const 512
    local.set 13
    i32.const 32
    local.set 14
    local.get 3
    local.get 14
    i32.add
    local.set 15
    local.get 15
    local.get 12
    local.get 13
    memory.copy
    i32.const 0
    local.set 16
    local.get 3
    local.get 16
    i32.store16 offset=30
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.load16_u offset=30
        local.set 17
        i32.const 65535
        local.set 18
        local.get 17
        local.get 18
        i32.and
        local.set 19
        i32.const 256
        local.set 20
        local.get 19
        local.set 21
        local.get 20
        local.set 22
        local.get 21
        local.get 22
        i32.lt_s
        local.set 23
        i32.const 1
        local.set 24
        local.get 23
        local.get 24
        i32.and
        local.set 25
        local.get 25
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.load16_u offset=30
        local.set 26
        i32.const 65535
        local.set 27
        local.get 26
        local.get 27
        i32.and
        local.set 28
        local.get 28
        i32.load8_u offset=65552
        local.set 29
        i32.const 255
        local.set 30
        local.get 29
        local.get 30
        i32.and
        local.set 31
        local.get 3
        i32.load offset=1580
        local.set 32
        local.get 3
        i32.load16_u offset=30
        local.set 33
        i32.const 65535
        local.set 34
        local.get 33
        local.get 34
        i32.and
        local.set 35
        local.get 32
        local.get 35
        i32.add
        local.set 36
        local.get 36
        i32.load8_u
        local.set 37
        i32.const 255
        local.set 38
        local.get 37
        local.get 38
        i32.and
        local.set 39
        local.get 39
        local.get 31
        i32.xor
        local.set 40
        local.get 36
        local.get 40
        i32.store8
        local.get 3
        i32.load16_u offset=30
        local.set 41
        i32.const 1
        local.set 42
        local.get 41
        local.get 42
        i32.add
        local.set 43
        local.get 3
        local.get 43
        i32.store16 offset=30
        br 0 (;@2;)
      end
    end
    i64.const 0
    local.set 44
    local.get 3
    local.get 44
    i64.store offset=16
    i32.const 0
    local.set 45
    local.get 3
    local.get 45
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.load offset=12
        local.set 46
        i32.const 64
        local.set 47
        local.get 46
        local.set 48
        local.get 47
        local.set 49
        local.get 48
        local.get 49
        i32.lt_u
        local.set 50
        i32.const 1
        local.set 51
        local.get 50
        local.get 51
        i32.and
        local.set 52
        local.get 52
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 53
        local.get 3
        local.get 53
        i32.store offset=8
        block  ;; label = @3
          loop  ;; label = @4
            local.get 3
            i32.load offset=8
            local.set 54
            i32.const 64
            local.set 55
            local.get 54
            local.set 56
            local.get 55
            local.set 57
            local.get 56
            local.get 57
            i32.lt_u
            local.set 58
            i32.const 1
            local.set 59
            local.get 58
            local.get 59
            i32.and
            local.set 60
            local.get 60
            i32.eqz
            br_if 1 (;@3;)
            local.get 3
            i32.load offset=8
            local.set 61
            i32.const 63
            local.set 62
            local.get 62
            local.get 61
            i32.sub
            local.set 63
            local.get 3
            local.get 63
            i32.store offset=4
            local.get 3
            i32.load offset=12
            local.set 64
            i32.const 66320
            local.set 65
            i32.const 3
            local.set 66
            local.get 64
            local.get 66
            i32.shl
            local.set 67
            local.get 65
            local.get 67
            i32.add
            local.set 68
            local.get 68
            i64.load
            local.set 69
            local.get 3
            i32.load offset=4
            local.set 70
            local.get 70
            local.set 71
            local.get 71
            i64.extend_i32_u
            local.set 72
            local.get 69
            local.get 72
            i64.shr_u
            local.set 73
            i64.const 1
            local.set 74
            local.get 73
            local.get 74
            i64.and
            local.set 75
            i64.const 0
            local.set 76
            local.get 75
            local.set 77
            local.get 76
            local.set 78
            local.get 77
            local.get 78
            i64.ne
            local.set 79
            i32.const 1
            local.set 80
            local.get 79
            local.get 80
            i32.and
            local.set 81
            block  ;; label = @5
              local.get 81
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=1580
              local.set 82
              local.get 3
              i64.load offset=16
              local.set 83
              i64.const 3
              local.set 84
              local.get 83
              local.get 84
              i64.shr_u
              local.set 85
              local.get 85
              i32.wrap_i64
              local.set 86
              local.get 82
              local.get 86
              i32.add
              local.set 87
              local.get 87
              i32.load8_u
              local.set 88
              i32.const 255
              local.set 89
              local.get 88
              local.get 89
              i32.and
              local.set 90
              local.get 3
              i64.load offset=16
              local.set 91
              i64.const 7
              local.set 92
              local.get 91
              local.get 92
              i64.and
              local.set 93
              i64.const 7
              local.set 94
              local.get 94
              local.get 93
              i64.sub
              local.set 95
              local.get 95
              i32.wrap_i64
              local.set 96
              local.get 90
              local.get 96
              i32.shr_s
              local.set 97
              i32.const 1
              local.set 98
              local.get 97
              local.get 98
              i32.and
              local.set 99
              local.get 99
              local.set 100
              local.get 100
              i64.extend_i32_s
              local.set 101
              local.get 3
              i32.load offset=4
              local.set 102
              local.get 102
              local.set 103
              local.get 103
              i64.extend_i32_u
              local.set 104
              local.get 101
              local.get 104
              i64.shl
              local.set 105
              local.get 3
              i32.load offset=12
              local.set 106
              i32.const 32
              local.set 107
              local.get 3
              local.get 107
              i32.add
              local.set 108
              local.get 108
              local.set 109
              i32.const 3
              local.set 110
              local.get 106
              local.get 110
              i32.shl
              local.set 111
              local.get 109
              local.get 111
              i32.add
              local.set 112
              local.get 112
              i64.load
              local.set 113
              local.get 113
              local.get 105
              i64.or
              local.set 114
              local.get 112
              local.get 114
              i64.store
              local.get 3
              i64.load offset=16
              local.set 115
              i64.const 1
              local.set 116
              local.get 115
              local.get 116
              i64.add
              local.set 117
              local.get 3
              local.get 117
              i64.store offset=16
            end
            local.get 3
            i32.load offset=8
            local.set 118
            i32.const 1
            local.set 119
            local.get 118
            local.get 119
            i32.add
            local.set 120
            local.get 3
            local.get 120
            i32.store offset=8
            br 0 (;@4;)
          end
        end
        local.get 3
        i32.load offset=12
        local.set 121
        i32.const 1
        local.set 122
        local.get 121
        local.get 122
        i32.add
        local.set 123
        local.get 3
        local.get 123
        i32.store offset=12
        br 0 (;@2;)
      end
    end
    i32.const 32
    local.set 124
    local.get 3
    local.get 124
    i32.add
    local.set 125
    local.get 125
    local.set 126
    i32.const 552
    local.set 127
    local.get 3
    local.get 127
    i32.add
    local.set 128
    local.get 128
    local.set 129
    local.get 126
    local.get 129
    call 46
    i32.const 552
    local.set 130
    local.get 3
    local.get 130
    i32.add
    local.set 131
    local.get 131
    local.set 132
    local.get 132
    call 45
    local.set 133
    i32.const 1
    local.set 134
    local.get 133
    local.get 134
    i32.and
    local.set 135
    i32.const 1584
    local.set 136
    local.get 3
    local.get 136
    i32.add
    local.set 137
    local.get 137
    global.set 0
    local.get 135
    return)
  (func (;48;) (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
    local.get 4
    local.get 5
    i32.store offset=40
    local.get 3
    i32.load offset=12
    local.set 6
    local.get 6
    local.get 5
    i32.store offset=36
    local.get 3
    i32.load offset=12
    local.set 7
    local.get 7
    local.get 5
    i32.store offset=32
    local.get 3
    i32.load offset=12
    local.set 8
    local.get 8
    local.get 5
    i32.store offset=28
    local.get 3
    i32.load offset=12
    local.set 9
    local.get 9
    i32.load offset=24
    local.set 10
    i32.const 2
    local.set 11
    local.get 10
    local.get 11
    i32.gt_u
    drop
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 10
            br_table 0 (;@4;) 2 (;@2;) 1 (;@3;) 2 (;@2;)
          end
          br 2 (;@1;)
        end
        local.get 3
        i32.load offset=12
        local.set 12
        i32.const 3
        local.set 13
        local.get 12
        local.get 13
        i32.store offset=32
        local.get 3
        i32.load offset=12
        local.set 14
        i32.const 4
        local.set 15
        local.get 14
        local.get 15
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=12
      local.set 16
      i32.const 5
      local.set 17
      local.get 16
      local.get 17
      i32.store offset=32
      local.get 3
      i32.load offset=12
      local.set 18
      i32.const 6
      local.set 19
      local.get 18
      local.get 19
      i32.store offset=28
    end
    return)
  (func (;49;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 f32 f32 f32 i32 f32 f32 i32 i32 i32 f32 f32 i32 f32 f32 f32 f32 f32 f32 f32 f64 f64 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 f32 f32 i32 f32 i32 f32 f32 i32 f32 i32 f32 f32 i32 f32 i32 f32 f32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 32
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    local.get 4
    local.get 0
    i32.store offset=24
    local.get 4
    local.get 1
    i32.store offset=20
    local.get 4
    i32.load offset=20
    local.set 5
    local.get 5
    f32.load offset=27032
    local.set 6
    f32.const 0x1.cp+2 (;=7;)
    local.set 7
    local.get 6
    local.get 7
    f32.add
    local.set 8
    local.get 4
    i32.load offset=24
    local.set 9
    local.get 9
    f32.load
    local.set 10
    local.get 8
    local.get 10
    f32.sub
    local.set 11
    local.get 4
    local.get 11
    f32.store offset=16
    local.get 4
    i32.load offset=20
    local.set 12
    i32.const 27036
    local.set 13
    local.get 12
    local.get 13
    i32.add
    local.set 14
    local.get 14
    f32.load
    local.set 15
    local.get 15
    local.get 7
    f32.add
    local.set 16
    local.get 4
    i32.load offset=24
    local.set 17
    local.get 17
    f32.load offset=4
    local.set 18
    local.get 16
    local.get 18
    f32.sub
    local.set 19
    local.get 4
    local.get 19
    f32.store offset=12
    local.get 4
    f32.load offset=16
    local.set 20
    local.get 4
    f32.load offset=12
    local.set 21
    local.get 21
    local.get 21
    f32.mul
    local.set 22
    local.get 20
    local.get 20
    f32.mul
    local.set 23
    local.get 23
    local.get 22
    f32.add
    local.set 24
    local.get 24
    f64.promote_f32
    local.set 25
    local.get 25
    call 6
    local.set 26
    f64.const 0x1.4p+4 (;=20;)
    local.set 27
    local.get 26
    local.get 27
    f64.lt
    local.set 28
    i32.const 1
    local.set 29
    local.get 28
    local.get 29
    i32.and
    local.set 30
    block  ;; label = @1
      block  ;; label = @2
        local.get 30
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=24
        local.set 31
        local.get 31
        i32.load offset=44
        local.set 32
        local.get 4
        i32.load offset=20
        local.set 33
        local.get 33
        i32.load offset=27040
        local.set 34
        local.get 34
        local.get 32
        i32.sub
        local.set 35
        local.get 33
        local.get 35
        i32.store offset=27040
        local.get 4
        i32.load offset=24
        local.set 36
        i32.const 0
        local.set 37
        local.get 36
        local.get 37
        i32.store offset=52
        i32.const 1
        local.set 38
        local.get 4
        local.get 38
        i32.store offset=28
        br 1 (;@1;)
      end
      local.get 4
      i32.load offset=24
      local.set 39
      local.get 39
      f32.load offset=16
      local.set 40
      local.get 4
      i32.load offset=24
      local.set 41
      local.get 41
      f32.load offset=8
      local.set 42
      local.get 42
      local.get 40
      f32.mul
      local.set 43
      local.get 41
      local.get 43
      f32.store offset=8
      local.get 4
      i32.load offset=24
      local.set 44
      local.get 44
      f32.load offset=8
      local.set 45
      local.get 4
      i32.load offset=24
      local.set 46
      local.get 46
      f32.load
      local.set 47
      local.get 47
      local.get 45
      f32.add
      local.set 48
      local.get 46
      local.get 48
      f32.store
      local.get 4
      i32.load offset=24
      local.set 49
      local.get 49
      f32.load offset=20
      local.set 50
      local.get 4
      i32.load offset=24
      local.set 51
      local.get 51
      f32.load offset=12
      local.set 52
      local.get 52
      local.get 50
      f32.mul
      local.set 53
      local.get 51
      local.get 53
      f32.store offset=12
      local.get 4
      i32.load offset=24
      local.set 54
      local.get 54
      f32.load offset=12
      local.set 55
      local.get 4
      i32.load offset=24
      local.set 56
      local.get 56
      f32.load offset=4
      local.set 57
      local.get 57
      local.get 55
      f32.add
      local.set 58
      local.get 56
      local.get 58
      f32.store offset=4
      i32.const 1
      local.set 59
      local.get 4
      local.get 59
      i32.store offset=28
    end
    local.get 4
    i32.load offset=28
    local.set 60
    i32.const 32
    local.set 61
    local.get 4
    local.get 61
    i32.add
    local.set 62
    local.get 62
    global.set 0
    local.get 60
    return)
  (func (;50;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 f32 i32 f32 f32 i32 f32 f32 i32 i32)
    global.get 0
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    i32.const 16711680
    local.set 5
    local.get 5
    call 7
    call 8
    local.get 4
    i32.load offset=12
    local.set 6
    local.get 6
    f32.load
    local.set 7
    local.get 4
    i32.load offset=12
    local.set 8
    local.get 8
    f32.load offset=4
    local.set 9
    f32.const 0x1.4p+2 (;=5;)
    local.set 10
    i32.const 0
    local.set 11
    local.get 11
    f32.convert_i32_s
    local.set 12
    f32.const 0x1.921fb6p+2 (;=6.28319;)
    local.set 13
    local.get 7
    local.get 9
    local.get 10
    local.get 12
    local.get 13
    call 9
    call 10
    i32.const 16
    local.set 14
    local.get 4
    local.get 14
    i32.add
    local.set 15
    local.get 15
    global.set 0
    return)
  (func (;51;) (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 f32 i32 f32 f32 i32 f32 i32 f32 f32 i32 f32 i32 f32 f32 i32 f32 i32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 f32 f32 f32 i32 i32 i32 i32 f32 f32 f32 i32 f32 i32 i32 i32 i32 f32 i32 f32 f32 f32 i32 i32 i32 i32 f32 f32 f32 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 i32 i32 i32 i32 f32 i32 i32 i32 i32 i32 i32 f32 f32 f32 i32 f32 f32 f64 f64 f32 i32 i32 i32 i32 i32 f32 f32 i32 f32 f32 f64 f64 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 32
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    local.get 4
    local.get 0
    i32.store offset=28
    local.get 4
    local.get 1
    i32.store offset=24
    local.get 4
    i32.load offset=28
    local.set 5
    local.get 5
    f32.load offset=16
    local.set 6
    local.get 4
    i32.load offset=28
    local.set 7
    local.get 7
    f32.load offset=8
    local.set 8
    local.get 8
    local.get 6
    f32.mul
    local.set 9
    local.get 7
    local.get 9
    f32.store offset=8
    local.get 4
    i32.load offset=28
    local.set 10
    local.get 10
    f32.load offset=8
    local.set 11
    local.get 4
    i32.load offset=28
    local.set 12
    local.get 12
    f32.load
    local.set 13
    local.get 13
    local.get 11
    f32.add
    local.set 14
    local.get 12
    local.get 14
    f32.store
    local.get 4
    i32.load offset=28
    local.set 15
    local.get 15
    f32.load offset=20
    local.set 16
    local.get 4
    i32.load offset=28
    local.set 17
    local.get 17
    f32.load offset=12
    local.set 18
    local.get 18
    local.get 16
    f32.mul
    local.set 19
    local.get 17
    local.get 19
    f32.store offset=12
    local.get 4
    i32.load offset=28
    local.set 20
    local.get 20
    f32.load offset=12
    local.set 21
    local.get 4
    i32.load offset=28
    local.set 22
    local.get 22
    f32.load offset=4
    local.set 23
    local.get 23
    local.get 21
    f32.add
    local.set 24
    local.get 22
    local.get 24
    f32.store offset=4
    local.get 4
    i32.load offset=28
    local.set 25
    local.get 25
    i32.load offset=44
    local.set 26
    block  ;; label = @1
      local.get 26
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load offset=28
      local.set 27
      local.get 27
      i32.load offset=36
      local.set 28
      i32.const 0
      local.set 29
      local.get 28
      local.set 30
      local.get 29
      local.set 31
      local.get 30
      local.get 31
      i32.eq
      local.set 32
      i32.const 1
      local.set 33
      local.get 32
      local.get 33
      i32.and
      local.set 34
      local.get 34
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      local.set 35
      i32.const 4
      local.set 36
      local.get 35
      local.get 36
      call 36
      local.set 37
      local.get 4
      i32.load offset=28
      local.set 38
      local.get 38
      local.get 37
      i32.store offset=36
    end
    local.get 4
    i32.load offset=28
    local.set 39
    local.get 39
    i32.load offset=36
    local.set 40
    i32.const 0
    local.set 41
    local.get 40
    local.set 42
    local.get 41
    local.set 43
    local.get 42
    local.get 43
    i32.ne
    local.set 44
    i32.const 1
    local.set 45
    local.get 44
    local.get 45
    i32.and
    local.set 46
    block  ;; label = @1
      local.get 46
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load offset=28
      local.set 47
      local.get 47
      i32.load offset=36
      local.set 48
      local.get 48
      i32.load
      local.set 49
      i32.const 1
      local.set 50
      local.get 49
      local.get 50
      i32.add
      local.set 51
      local.get 48
      local.get 51
      i32.store
    end
    local.get 4
    i32.load offset=28
    local.set 52
    local.get 52
    i32.load offset=44
    local.set 53
    block  ;; label = @1
      local.get 53
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load offset=24
      local.set 54
      local.get 54
      f32.load offset=27032
      local.set 55
      local.get 4
      i32.load offset=28
      local.set 56
      local.get 56
      f32.load
      local.set 57
      f32.const 0x1p+3 (;=8;)
      local.set 58
      local.get 57
      local.get 58
      f32.add
      local.set 59
      local.get 55
      local.get 59
      f32.lt
      local.set 60
      i32.const 1
      local.set 61
      local.get 60
      local.get 61
      i32.and
      local.set 62
      local.get 62
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load offset=24
      local.set 63
      local.get 63
      f32.load offset=27032
      local.set 64
      f32.const 0x1.ep+3 (;=15;)
      local.set 65
      local.get 64
      local.get 65
      f32.add
      local.set 66
      local.get 4
      i32.load offset=28
      local.set 67
      local.get 67
      f32.load
      local.set 68
      local.get 66
      local.get 68
      f32.gt
      local.set 69
      i32.const 1
      local.set 70
      local.get 69
      local.get 70
      i32.and
      local.set 71
      local.get 71
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load offset=24
      local.set 72
      local.get 72
      f32.load offset=27036
      local.set 73
      local.get 4
      i32.load offset=28
      local.set 74
      local.get 74
      f32.load offset=4
      local.set 75
      f32.const 0x1p+3 (;=8;)
      local.set 76
      local.get 75
      local.get 76
      f32.add
      local.set 77
      local.get 73
      local.get 77
      f32.lt
      local.set 78
      i32.const 1
      local.set 79
      local.get 78
      local.get 79
      i32.and
      local.set 80
      local.get 80
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load offset=24
      local.set 81
      local.get 81
      f32.load offset=27036
      local.set 82
      f32.const 0x1.ep+3 (;=15;)
      local.set 83
      local.get 83
      local.get 82
      f32.add
      local.set 84
      local.get 4
      i32.load offset=28
      local.set 85
      local.get 85
      f32.load offset=4
      local.set 86
      local.get 84
      local.get 86
      f32.gt
      local.set 87
      i32.const 1
      local.set 88
      local.get 87
      local.get 88
      i32.and
      local.set 89
      local.get 89
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load offset=28
      local.set 90
      local.get 90
      i32.load offset=44
      local.set 91
      local.get 4
      i32.load offset=24
      local.set 92
      local.get 92
      i32.load offset=27040
      local.set 93
      local.get 93
      local.get 91
      i32.sub
      local.set 94
      local.get 92
      local.get 94
      i32.store offset=27040
      local.get 4
      i32.load offset=28
      local.set 95
      i32.const 0
      local.set 96
      local.get 95
      local.get 96
      i32.store offset=44
      i32.const 400
      local.set 97
      local.get 97
      call 35
      local.set 98
      local.get 4
      i32.load offset=28
      local.set 99
      local.get 99
      local.get 98
      i32.store offset=40
      local.get 4
      i32.load offset=28
      local.set 100
      local.get 100
      i32.load offset=40
      local.set 101
      i32.const 400
      local.set 102
      i32.const 0
      local.set 103
      local.get 101
      local.get 103
      local.get 102
      memory.fill
      f32.const 0x1.99999ap-4 (;=0.1;)
      local.set 104
      local.get 4
      local.get 104
      f32.store offset=20
      i32.const 0
      local.set 105
      local.get 4
      local.get 105
      i32.store offset=16
      block  ;; label = @2
        loop  ;; label = @3
          local.get 4
          i32.load offset=16
          local.set 106
          i32.const 10
          local.set 107
          local.get 106
          local.set 108
          local.get 107
          local.set 109
          local.get 108
          local.get 109
          i32.lt_u
          local.set 110
          i32.const 1
          local.set 111
          local.get 110
          local.get 111
          i32.and
          local.set 112
          local.get 112
          i32.eqz
          br_if 1 (;@2;)
          local.get 4
          i32.load offset=28
          local.set 113
          local.get 113
          i32.load offset=40
          local.set 114
          local.get 4
          i32.load offset=16
          local.set 115
          i32.const 40
          local.set 116
          local.get 115
          local.get 116
          i32.mul
          local.set 117
          local.get 114
          local.get 117
          i32.add
          local.set 118
          i32.const 7
          local.set 119
          local.get 118
          local.get 119
          i32.store
          local.get 4
          i32.load offset=28
          local.set 120
          local.get 120
          i32.load offset=40
          local.set 121
          local.get 4
          i32.load offset=16
          local.set 122
          local.get 122
          local.get 116
          i32.mul
          local.set 123
          local.get 121
          local.get 123
          i32.add
          local.set 124
          i32.const 8
          local.set 125
          local.get 124
          local.get 125
          i32.store offset=4
          local.get 4
          i32.load offset=28
          local.set 126
          local.get 126
          i32.load offset=40
          local.set 127
          local.get 4
          i32.load offset=16
          local.set 128
          local.get 128
          local.get 116
          i32.mul
          local.set 129
          local.get 127
          local.get 129
          i32.add
          local.set 130
          i32.const 1065353216
          local.set 131
          local.get 130
          local.get 131
          i32.store offset=28
          local.get 4
          i32.load offset=28
          local.set 132
          local.get 132
          i32.load offset=40
          local.set 133
          local.get 4
          i32.load offset=16
          local.set 134
          local.get 134
          local.get 116
          i32.mul
          local.set 135
          local.get 133
          local.get 135
          i32.add
          local.set 136
          i32.const 32
          local.set 137
          local.get 136
          local.get 137
          i32.add
          local.set 138
          local.get 138
          local.get 131
          i32.store
          local.get 4
          i32.load offset=28
          local.set 139
          local.get 139
          f32.load
          local.set 140
          local.get 139
          i32.load offset=40
          local.set 141
          local.get 4
          i32.load offset=16
          local.set 142
          local.get 142
          local.get 116
          i32.mul
          local.set 143
          local.get 141
          local.get 143
          i32.add
          local.set 144
          local.get 144
          local.get 140
          f32.store offset=12
          local.get 4
          i32.load offset=28
          local.set 145
          local.get 145
          f32.load offset=4
          local.set 146
          local.get 145
          i32.load offset=40
          local.set 147
          local.get 4
          i32.load offset=16
          local.set 148
          local.get 148
          local.get 116
          i32.mul
          local.set 149
          local.get 147
          local.get 149
          i32.add
          local.set 150
          i32.const 16
          local.set 151
          local.get 150
          local.get 151
          i32.add
          local.set 152
          local.get 152
          local.get 146
          f32.store
          local.get 4
          f32.load offset=20
          local.set 153
          f32.const 0x1.921fb6p+2 (;=6.28319;)
          local.set 154
          local.get 153
          local.get 154
          f32.mul
          local.set 155
          local.get 4
          i32.load offset=16
          local.set 156
          local.get 156
          f32.convert_i32_u
          local.set 157
          local.get 155
          local.get 157
          f32.mul
          local.set 158
          local.get 158
          f64.promote_f32
          local.set 159
          local.get 159
          call 11
          local.set 160
          local.get 160
          f32.demote_f64
          local.set 161
          local.get 4
          i32.load offset=28
          local.set 162
          local.get 162
          i32.load offset=40
          local.set 163
          local.get 4
          i32.load offset=16
          local.set 164
          local.get 164
          local.get 116
          i32.mul
          local.set 165
          local.get 163
          local.get 165
          i32.add
          local.set 166
          local.get 166
          local.get 161
          f32.store offset=20
          local.get 4
          f32.load offset=20
          local.set 167
          local.get 167
          local.get 154
          f32.mul
          local.set 168
          local.get 4
          i32.load offset=16
          local.set 169
          local.get 169
          f32.convert_i32_u
          local.set 170
          local.get 168
          local.get 170
          f32.mul
          local.set 171
          local.get 171
          f64.promote_f32
          local.set 172
          local.get 172
          call 12
          local.set 173
          local.get 173
          f32.demote_f64
          local.set 174
          local.get 4
          i32.load offset=28
          local.set 175
          local.get 175
          i32.load offset=40
          local.set 176
          local.get 4
          i32.load offset=16
          local.set 177
          i32.const 40
          local.set 178
          local.get 177
          local.get 178
          i32.mul
          local.set 179
          local.get 176
          local.get 179
          i32.add
          local.set 180
          local.get 180
          local.get 174
          f32.store offset=24
          local.get 4
          i32.load offset=28
          local.set 181
          local.get 181
          i32.load offset=40
          local.set 182
          local.get 4
          i32.load offset=16
          local.set 183
          i32.const 40
          local.set 184
          local.get 183
          local.get 184
          i32.mul
          local.set 185
          local.get 182
          local.get 185
          i32.add
          local.set 186
          i32.const 1
          local.set 187
          local.get 186
          local.get 187
          i32.store offset=8
          local.get 4
          i32.load offset=28
          local.set 188
          local.get 188
          i32.load offset=40
          local.set 189
          local.get 4
          i32.load offset=16
          local.set 190
          i32.const 40
          local.set 191
          local.get 190
          local.get 191
          i32.mul
          local.set 192
          local.get 189
          local.get 192
          i32.add
          local.set 193
          i32.const 0
          local.set 194
          local.get 193
          local.get 194
          i32.store offset=36
          local.get 4
          i32.load offset=16
          local.set 195
          i32.const 1
          local.set 196
          local.get 195
          local.get 196
          i32.add
          local.set 197
          local.get 4
          local.get 197
          i32.store offset=16
          br 0 (;@3;)
        end
      end
    end
    local.get 4
    i32.load offset=28
    local.set 198
    local.get 198
    i32.load offset=40
    local.set 199
    i32.const 0
    local.set 200
    local.get 199
    local.set 201
    local.get 200
    local.set 202
    local.get 201
    local.get 202
    i32.ne
    local.set 203
    i32.const 1
    local.set 204
    local.get 203
    local.get 204
    i32.and
    local.set 205
    block  ;; label = @1
      local.get 205
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 206
      local.get 4
      local.get 206
      i32.store offset=12
      block  ;; label = @2
        loop  ;; label = @3
          local.get 4
          i32.load offset=12
          local.set 207
          i32.const 10
          local.set 208
          local.get 207
          local.set 209
          local.get 208
          local.set 210
          local.get 209
          local.get 210
          i32.lt_u
          local.set 211
          i32.const 1
          local.set 212
          local.get 211
          local.get 212
          i32.and
          local.set 213
          local.get 213
          i32.eqz
          br_if 1 (;@2;)
          local.get 4
          i32.load offset=28
          local.set 214
          local.get 214
          i32.load offset=40
          local.set 215
          local.get 4
          i32.load offset=12
          local.set 216
          i32.const 40
          local.set 217
          local.get 216
          local.get 217
          i32.mul
          local.set 218
          local.get 215
          local.get 218
          i32.add
          local.set 219
          local.get 219
          i32.load offset=8
          local.set 220
          block  ;; label = @4
            block  ;; label = @5
              local.get 220
              br_if 0 (;@5;)
              br 1 (;@4;)
            end
            local.get 4
            i32.load offset=28
            local.set 221
            local.get 221
            i32.load offset=40
            local.set 222
            local.get 4
            i32.load offset=12
            local.set 223
            i32.const 40
            local.set 224
            local.get 223
            local.get 224
            i32.mul
            local.set 225
            local.get 222
            local.get 225
            i32.add
            local.set 226
            local.get 226
            i32.load
            local.set 227
            local.get 4
            i32.load offset=28
            local.set 228
            local.get 4
            i32.load offset=28
            local.set 229
            local.get 229
            i32.load offset=40
            local.set 230
            local.get 4
            i32.load offset=12
            local.set 231
            i32.const 40
            local.set 232
            local.get 231
            local.get 232
            i32.mul
            local.set 233
            local.get 230
            local.get 233
            i32.add
            local.set 234
            local.get 228
            local.get 234
            local.get 227
            call_indirect (type 0)
          end
          local.get 4
          i32.load offset=12
          local.set 235
          i32.const 1
          local.set 236
          local.get 235
          local.get 236
          i32.add
          local.set 237
          local.get 4
          local.get 237
          i32.store offset=12
          br 0 (;@3;)
        end
      end
      local.get 4
      i32.load offset=28
      local.set 238
      local.get 238
      i32.load offset=52
      local.set 239
      local.get 4
      i32.load offset=24
      local.set 240
      local.get 240
      i32.load
      local.set 241
      local.get 239
      local.set 242
      local.get 241
      local.set 243
      local.get 242
      local.get 243
      i32.eq
      local.set 244
      i32.const 1
      local.set 245
      local.get 244
      local.get 245
      i32.and
      local.set 246
      block  ;; label = @2
        local.get 246
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=28
        local.set 247
        local.get 247
        i32.load offset=40
        local.set 248
        local.get 248
        call 40
      end
    end
    i32.const 1
    local.set 249
    i32.const 32
    local.set 250
    local.get 4
    local.get 250
    i32.add
    local.set 251
    local.get 251
    global.set 0
    local.get 249
    return)
  (func (;52;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 f32 f32 f32 f32 f32 i32 i32 i32 f32 f32 f32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    call 2
    i32.const 16753920
    local.set 5
    local.get 5
    call 7
    local.get 4
    i32.load offset=12
    local.set 6
    local.get 6
    f32.load
    local.set 7
    f32.const 0x1p+2 (;=4;)
    local.set 8
    local.get 7
    local.get 8
    f32.add
    local.set 9
    local.get 6
    f32.load offset=4
    local.set 10
    local.get 10
    local.get 8
    f32.add
    local.set 11
    local.get 9
    local.get 11
    call 13
    local.get 4
    i32.load offset=12
    local.set 12
    local.get 12
    i32.load offset=36
    local.set 13
    local.get 13
    i32.load
    local.set 14
    local.get 14
    f32.convert_i32_u
    local.set 15
    f32.const 0x1.4p+1 (;=2.5;)
    local.set 16
    local.get 15
    local.get 16
    f32.div
    local.set 17
    local.get 17
    call 14
    f32.const -0x1p+2 (;=-4;)
    local.set 18
    f32.const 0x1p+3 (;=8;)
    local.set 19
    local.get 18
    local.get 18
    local.get 19
    local.get 19
    call 4
    call 3
    local.get 4
    i32.load offset=12
    local.set 20
    local.get 20
    i32.load offset=40
    local.set 21
    i32.const 0
    local.set 22
    local.get 21
    local.set 23
    local.get 22
    local.set 24
    local.get 23
    local.get 24
    i32.ne
    local.set 25
    i32.const 1
    local.set 26
    local.get 25
    local.get 26
    i32.and
    local.set 27
    block  ;; label = @1
      local.get 27
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 28
      local.get 4
      local.get 28
      i32.store offset=4
      block  ;; label = @2
        loop  ;; label = @3
          local.get 4
          i32.load offset=4
          local.set 29
          i32.const 10
          local.set 30
          local.get 29
          local.set 31
          local.get 30
          local.set 32
          local.get 31
          local.get 32
          i32.lt_u
          local.set 33
          i32.const 1
          local.set 34
          local.get 33
          local.get 34
          i32.and
          local.set 35
          local.get 35
          i32.eqz
          br_if 1 (;@2;)
          local.get 4
          i32.load offset=12
          local.set 36
          local.get 36
          i32.load offset=40
          local.set 37
          local.get 4
          i32.load offset=4
          local.set 38
          i32.const 40
          local.set 39
          local.get 38
          local.get 39
          i32.mul
          local.set 40
          local.get 37
          local.get 40
          i32.add
          local.set 41
          local.get 41
          i32.load offset=8
          local.set 42
          block  ;; label = @4
            block  ;; label = @5
              local.get 42
              br_if 0 (;@5;)
              br 1 (;@4;)
            end
            call 2
            local.get 4
            i32.load offset=12
            local.set 43
            local.get 43
            i32.load offset=40
            local.set 44
            local.get 4
            i32.load offset=4
            local.set 45
            i32.const 40
            local.set 46
            local.get 45
            local.get 46
            i32.mul
            local.set 47
            local.get 44
            local.get 47
            i32.add
            local.set 48
            local.get 48
            i32.load offset=4
            local.set 49
            local.get 4
            i32.load offset=12
            local.set 50
            local.get 50
            i32.load offset=40
            local.set 51
            local.get 4
            i32.load offset=4
            local.set 52
            i32.const 40
            local.set 53
            local.get 52
            local.get 53
            i32.mul
            local.set 54
            local.get 51
            local.get 54
            i32.add
            local.set 55
            local.get 4
            i32.load offset=8
            local.set 56
            local.get 55
            local.get 56
            local.get 49
            call_indirect (type 0)
            call 3
          end
          local.get 4
          i32.load offset=4
          local.set 57
          i32.const 1
          local.set 58
          local.get 57
          local.get 58
          i32.add
          local.set 59
          local.get 4
          local.get 59
          i32.store offset=4
          br 0 (;@3;)
        end
      end
    end
    i32.const 16
    local.set 60
    local.get 4
    local.get 60
    i32.add
    local.set 61
    local.get 61
    global.set 0
    return)
  (func (;53;) (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
    local.get 4
    local.get 5
    i32.store offset=28
    local.get 3
    i32.load offset=12
    local.set 6
    local.get 6
    local.get 5
    i32.store offset=32
    local.get 3
    i32.load offset=12
    local.set 7
    local.get 7
    i32.load offset=24
    local.set 8
    i32.const 1
    local.set 9
    local.get 8
    local.get 9
    i32.ne
    local.set 10
    block  ;; label = @1
      block  ;; label = @2
        local.get 10
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=12
        local.set 11
        i32.const 9
        local.set 12
        local.get 11
        local.get 12
        i32.store offset=28
        local.get 3
        i32.load offset=12
        local.set 13
        i32.const 10
        local.set 14
        local.get 13
        local.get 14
        i32.store offset=32
        br 1 (;@1;)
      end
    end
    return)
  (func (;54;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 f32 i32 f32 f32 f32 i32 i32)
    global.get 0
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    i32.load offset=12
    local.set 5
    local.get 5
    f32.load
    local.set 6
    local.get 4
    i32.load offset=12
    local.set 7
    local.get 7
    f32.load offset=4
    local.set 8
    f32.const 0x1.4p+4 (;=20;)
    local.set 9
    f32.const 0x1.4p+3 (;=10;)
    local.set 10
    local.get 6
    local.get 8
    local.get 9
    local.get 10
    call 4
    i32.const 16
    local.set 11
    local.get 4
    local.get 11
    i32.add
    local.set 12
    local.get 12
    global.set 0
    return)
  (func (;55;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 f32 i32 f32 f32 i32 f32 i32 f32 f32 i32 f32 i32 f32 f32 i32 f32 i32 f32 f32)
    global.get 0
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    i32.load offset=12
    local.set 5
    local.get 5
    f32.load offset=16
    local.set 6
    local.get 4
    i32.load offset=12
    local.set 7
    local.get 7
    f32.load offset=8
    local.set 8
    local.get 8
    local.get 6
    f32.mul
    local.set 9
    local.get 7
    local.get 9
    f32.store offset=8
    local.get 4
    i32.load offset=12
    local.set 10
    local.get 10
    f32.load offset=8
    local.set 11
    local.get 4
    i32.load offset=12
    local.set 12
    local.get 12
    f32.load
    local.set 13
    local.get 13
    local.get 11
    f32.add
    local.set 14
    local.get 12
    local.get 14
    f32.store
    local.get 4
    i32.load offset=12
    local.set 15
    local.get 15
    f32.load offset=20
    local.set 16
    local.get 4
    i32.load offset=12
    local.set 17
    local.get 17
    f32.load offset=12
    local.set 18
    local.get 18
    local.get 16
    f32.mul
    local.set 19
    local.get 17
    local.get 19
    f32.store offset=12
    local.get 4
    i32.load offset=12
    local.set 20
    local.get 20
    f32.load offset=12
    local.set 21
    local.get 4
    i32.load offset=12
    local.set 22
    local.get 22
    f32.load offset=4
    local.set 23
    local.get 23
    local.get 21
    f32.add
    local.set 24
    local.get 22
    local.get 24
    f32.store offset=4
    return)
  (func (;56;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 f32 i32 f32 f32 i32 f32 i32 f32 f32 i32 f32 i32 f32 f32 i32 f32 i32 f32 f32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    i32.load offset=8
    local.set 5
    local.get 5
    f32.load offset=28
    local.set 6
    local.get 4
    i32.load offset=8
    local.set 7
    local.get 7
    f32.load offset=20
    local.set 8
    local.get 8
    local.get 6
    f32.mul
    local.set 9
    local.get 7
    local.get 9
    f32.store offset=20
    local.get 4
    i32.load offset=8
    local.set 10
    local.get 10
    f32.load offset=20
    local.set 11
    local.get 4
    i32.load offset=8
    local.set 12
    local.get 12
    f32.load offset=12
    local.set 13
    local.get 13
    local.get 11
    f32.add
    local.set 14
    local.get 12
    local.get 14
    f32.store offset=12
    local.get 4
    i32.load offset=8
    local.set 15
    local.get 15
    f32.load offset=32
    local.set 16
    local.get 4
    i32.load offset=8
    local.set 17
    local.get 17
    f32.load offset=24
    local.set 18
    local.get 18
    local.get 16
    f32.mul
    local.set 19
    local.get 17
    local.get 19
    f32.store offset=24
    local.get 4
    i32.load offset=8
    local.set 20
    local.get 20
    f32.load offset=24
    local.set 21
    local.get 4
    i32.load offset=8
    local.set 22
    local.get 22
    f32.load offset=16
    local.set 23
    local.get 23
    local.get 21
    f32.add
    local.set 24
    local.get 22
    local.get 24
    f32.store offset=16
    local.get 4
    i32.load offset=8
    local.set 25
    local.get 25
    i32.load offset=36
    local.set 26
    i32.const 1
    local.set 27
    local.get 26
    local.get 27
    i32.add
    local.set 28
    local.get 25
    local.get 28
    i32.store offset=36
    return)
  (func (;57;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 f32 i32 i32 f32 i32 i32 f32 f32 f32 i32 f32 f32 i32 i32 i32 i32 i32 i32 i32 i32 f32 i32 f32 f32 f32 i32 f32 f32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    i32.const 255
    local.set 5
    local.get 5
    call 7
    call 8
    local.get 4
    i32.load offset=12
    local.set 6
    local.get 6
    f32.load offset=12
    local.set 7
    i32.const 16
    local.set 8
    local.get 6
    local.get 8
    i32.add
    local.set 9
    local.get 9
    f32.load
    local.set 10
    local.get 7
    local.get 10
    call 13
    local.get 4
    i32.load offset=12
    local.set 11
    local.get 11
    i32.load offset=36
    local.set 12
    local.get 12
    f32.convert_i32_u
    local.set 13
    f32.const 0x1.4p+1 (;=2.5;)
    local.set 14
    local.get 13
    local.get 14
    f32.div
    local.set 15
    local.get 15
    call 14
    i32.const 0
    local.set 16
    local.get 16
    f32.convert_i32_s
    local.set 17
    f32.const -0x1.4p+2 (;=-5;)
    local.set 18
    local.get 17
    local.get 18
    call 15
    i32.const 0
    local.set 19
    local.get 4
    local.get 19
    i32.store offset=4
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load offset=4
        local.set 20
        i32.const 5
        local.set 21
        local.get 20
        local.set 22
        local.get 21
        local.set 23
        local.get 22
        local.get 23
        i32.lt_u
        local.set 24
        i32.const 1
        local.set 25
        local.get 24
        local.get 25
        i32.and
        local.set 26
        local.get 26
        i32.eqz
        br_if 1 (;@1;)
        f32.const 0x1.41b2f8p-1 (;=0.628319;)
        local.set 27
        local.get 27
        call 14
        i32.const 0
        local.set 28
        local.get 28
        f32.convert_i32_s
        local.set 29
        f32.const 0x1.4p+2 (;=5;)
        local.set 30
        local.get 29
        local.get 30
        call 16
        f32.const 0x1.41b2f8p-1 (;=0.628319;)
        local.set 31
        local.get 31
        call 14
        i32.const 0
        local.set 32
        local.get 32
        f32.convert_i32_s
        local.set 33
        f32.const -0x1.4p+2 (;=-5;)
        local.set 34
        local.get 33
        local.get 34
        call 16
        local.get 4
        i32.load offset=4
        local.set 35
        i32.const 1
        local.set 36
        local.get 35
        local.get 36
        i32.add
        local.set 37
        local.get 4
        local.get 37
        i32.store offset=4
        br 0 (;@2;)
      end
    end
    call 17
    call 10
    i32.const 16
    local.set 38
    local.get 4
    local.get 38
    i32.add
    local.set 39
    local.get 39
    global.set 0
    return)
  (table (;0;) 11 11 funcref)
  (global (;0;) (mut i32) (i32.const 65536))
  (global (;1;) (mut i32) (i32.const 0))
  (global (;2;) i32 (i32.const 93936))
  (export "__stack_pointer" (global 0))
  (export "onAnimationFrame" (func 19))
  (export "loadState" (func 20))
  (export "onKeyDown" (func 21))
  (export "onKeyUp" (func 22))
  (export "start" (func 23))
  (export "tickObstacles" (func 24))
  (export "__indirect_function_table" (table 0))
  (export "malloc" (func 35))
  (export "calloc" (func 36))
  (export "free" (func 40))
  (export "__heap_base" (global 2))
  (export "checkFlag" (func 47))
  (start 18)
  (elem (;0;) (i32.const 1) func 19 1 49 50 51 52 56 57 55 54)
  (data (;0;) "\f0n\01\00\00\00\00\00\00\00\00\00\00\00\00\00\80z\88(]\e7$p6\d0j\ba\ab-\1d\d5\86U2\f9S\a8\f8\d7\c9\d5s\0eO\94\89\08\95\14\7f\9b\b3k% =\ed\9fh\08S\a2+\8c\a3\06_\eeRn\f2?Y\c0\e7F\f2Ne@\00[T\99<@%\f5\fc\f6u\fd\db\c0%\ea-\01\f6\03\0f\d6\95\80\a5\98\c1\8fR\0b\db*\ce8\ec\c2Y\fb\05\0e\f4y/\80' i\ca+H\0e\f8\df\b9\9e;i\de\ffg\cf\9a\a5\14\fa\e4`\af\5c\b4\a3\fa\efx\cb\12H\e40Pbr\b1o\faY\06g\a2\d2\9e_\fd\19\aaI\7f\a5*\e6\06\cf\f3\1a\86<\b1p\a4\c95\e9\92\ec\97\c7\04\af$Q\e98vW\8djD\f6\d7!^\ad\ef\f0\94\01{\a5\b39Z\80\94i\f7:\80\c7\a6\1b\da\b3\1a\0a\cc\e9,\1e\d2T\0e\16\0ee*\03b\b2VX~\e6\10\96\d5L\e6e-\1f0;\09\5c\08\94\c36?\b93\0b\10U!\c8BA@$\ad\01\92bR\02@\12@\12\01\81\00\05\aaEH\8c\b4(2j@)\b0R\02\06\001B\12I\00K\88\96\cc\00\03\83 $\00\22\0a\14\c0`\00\01`\00\00\00H\82ED\88!\08J\01B\a2\00\19\d0\b2\a5\a0\0c\08\98\00\00\01\02\82\10\14$\08\010\084\00\a8\11DV\01 !\84\04\02\89@\05$J\c3\10\04!\a0$\1ad*\08\c32\08\88&\80\80\04B\91\80\c8 \94\04\08 \08\084\10Bj\04\000\a1\b0b\852\00B\0c\04\0b\1a\00\00$\10H\09\11\00\02C\00T\b4\b0H\01\95\a5\11\01\00\10%\a0JRR\98\02\0a\89\90\a0\a0%\a0\a4\a0\0c\0a\01\04\1a\22\01\93`\19\1a\92\04\85\80D\91\14\0c\15\10\10\0d\d1\00)\91*\06d\081\98\81\02\09(\83\90H\05\80! \c0h`\02\c0\02\84\a0,\c1\0a\91 \89XP\01\b4P\90\12\00\98\84P\04\88\08il\a4\01\01\88\0cH\03D\08\82\86\c0\90@\0c\00\11\04\86$ \08 \02\06\84(\00\84\04\82\a9 X\02\00\08\0a\94E\92\89\04\08\805i\88@\82\84\00\11J,\04\04\0c\89I\02\99\82\1a\04\80d\16\10@\90\01I`\08D6I\0b\01\19\00&\02$\80D\84 %\90\10\0a`\04I\02\00@$%P@\80\00\04(K\00\94\a0$\01\a8\14\04\00h\96\08\10\10\11l\00\12\08 \a1,@\00\12\a6LP\14\90%\b4\08\09\12*\12\80D\01\04\22\14\00I2\89\1a\a0\81 K\93`\06d\d9\22$\09\00I@\98!A\8b4\03!\90,\90\04 !\90\a0\10D\80\88Y\91\a0\14(\00\0a\0aX\14\22\08\09\b1\a1\00\a4\00\19\a4\91`\b6\02\00\010\08\16\80I\80P @\96\22\81\14\90\01  \06M\02\11\16\1a\14\e0-\aa\8e#\a9\ae\14\c1\02\d8%\9c\89\f9\1b\e8\b3,\dax\f7\e8\11\aa\91s\03U\80\91\9d\d6M\a9\f1\d0iJ\9dm\86w\847a1\bdl\18\dd\81\9f\d8\e4K\1f\9e_\fe\9e\7f\9f\de3u\aa:RFe!v\bd\1c\fb\c6'\00J_rcf/\db\fa\f4X\ef\89\d1q\f4\0e\d5\88\fbWD\92!l\d6\8e p]v\1f\9a\825\1c\85\b2LO\93a\99T\e3<\84\a3S\08Z<\9b5h^\15\d4k\9b\f5\dfDe\c1\cf8\15#\fb\c7\1a\0b\0d:M\f9\a4\b1\bbt\84\96\dd\8a\ef\b2\d0\e6\bf\dd,\f7\8b\02F\b6\fehJl\fe\cd\8f\90S\b5\a1\0de\fdtvoO\0c\c0\16J\14\e1p\b4\c9d\c9\e8\0c\0e\c4Ea\fb\1a\1a+(\a3a\c2f\af\f2\0c\fe\d0.P\a8\92\97\86#\14\ddV\c7T*7b[Z\87;\97\9dd\1f\fdzL\d2*\b0N\94p\a7'\d8\0a'\0a\ec\97gc\0ec%\e5\06\01R.nB\b0\a7X3\f3|1\17B\96\f3\9f\eey1\c8\db\97]\dd\90cW\efi\ea\5cD\cd\a7\fd\d5\b1\d5J\92\09tSU~@\10#\bf-b\faD\b4\c0\e9\e1`2\84\e8&tDk_\18a\af?\05\a6\96\17\b7\aa\c9\a6$\ce\e0R\d9y\d9\1a\1a;\d6\8a'M\f5\07\b9\22\fd)\9f\d8\8a/)w\f9\f2G\b4\eb(N[N\03\eb\90\ff\85\08\e7\ebg\ce\93wHg\d6\5c\c3\bb\db\c1\18\b3\07\cag\9a\09\f4\f2\e9\c5\ec_\b2t\e3M\ca%\80LB\e4Zt_\b4\0c\8c\99\80\02\95\8bt\b4\a2\b6G\cc\1et\8a\f8\de-\c0G\eb\0fHJ^\a4\90?R\a0NT\e9\d2k\d4q\87j\d9\97\f6\06\0c\ffQ9BC\06\8b@y=\fa\c6\d3\88}4&\8a\5c\89I\dct\aaK|\1b\97\a1\00\e9\ea`\e4\8b"))
