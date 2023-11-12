(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i64 i32) (result i64)))
  (func (;0;) (type 3)
    call 8)
  ;; fibonacci関数
  (func (;1;) (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0  ;; グローバル変数を読み込んでスタックにプッシュ	[g0]
    local.set 1   ;; スタックの値をポップしてローカル変数1に保存	[]		L1=g0
    i32.const 32  ;; 32をスタックにプッシュ	                  [32]
    local.set 2   ;; スタックの値をポップしてローカル変数2に保存	[]		L2=32
    local.get 1   ;; ローカル変数1をスタックにプッシュ	        [L1]
    local.get 2   ;; ローカル変数2をスタックにプッシュ	        [L2,L1]
    i32.sub       ;; L1 - L2						                   [L1-L2]
    local.set 3   ;; スタックの値をポップしてローカル変数3に保存   L3=L1-L2
    local.get 3   ;; ローカル変数3をスタックにプッシュ          [L3]
    local.get 0   ;; ローカル変数0をスタックにプッシュ          [g0,L3]
    i32.store offset=24 ;; スタックの先頭の値をポップして24番地に書く [L3]      [24] = n
    local.get 3   ;; ローカル変数3をスタックにプッシュ          [L3,L3]
    i32.load offset=24 ;; 24番地の値をスタックにプッシュ		[n,L3,L3]
    local.set 4	  ;; スタックの値をポップしてローカル変数４に保存	[L3,L3]		L4=n
    block  ;; label = @1
      block  ;; label = @2
        local.get 4 ;; ローカル変数4をスタックにプッシュ		[L4,L3,L3]
        br_if 0 (;@2;) ;; スタックの値が非ゼロならTRUE→ブロックを抜ける	[L3,L3]
        i32.const 0 ;; 0をスタックにプッシュ			[0,L3,L3]
        local.set 5 ;; スタックの値をポップしてローカル変数5に保存	[L3,L3]		L5=0
        local.get 3 ;; ローカル変数3をスタックにプッシュ		[L3,L3,L3]
        local.get 5 ;; ローカル変数5をスタックにプッシュ		[L5(0),L3,L3,L3]
        i32.store offset=28 ;; スタックの先頭の値をポップして28番地に書く	[L3,L3]		[28] = L5(0)
        br 1 (;@1;) ;; ブロック@1を抜ける
      end
      local.get 3 ;; ローカル変数３をスタックにプッシュ [L3,L3,L3]
      i32.load offset=24 ;; 24番地の値をスタックにプッシュ		[n,L3,L3,L3]
      local.set 6 ;; スタックの値をポップしてローカル変数6に保存	[L3,L3,L3]		L6=n
      i32.const 1 ;; [1,L3,L3,L3]
      local.set 7 ;; スタックの値をポップしてローカル変数７に保存	[L3,L3,L3]	L7=1
      local.get 6 ;; ローカル変数6をスタックにプッシュ		[L6,n,L3,L3,L3]
      local.set 8 ;; スタックの値をポップしてローカル変数８に保存	[L3,L3,L3]	L8=n
      local.get 7 ;; ローカル変数７をスタックにプッシュ		[1,L3,L3,L3]
      local.set 9 ;; スタックの値をポップしてローカル変数９に保存	[L3,L3,L3]	L9=1
      local.get 8 ;; ローカル変数８をスタックにプッシュ		[n,L3,L3,L3]
      local.get 9 ;; ローカル変数９をスタックにプッシュ		[1,n,L3,L3,L3]
      i32.eq      ;; 1==n が真なら1，偽なら0をプッシュ		[1or0,L3,L3,L3]
      local.set 10 ;; スタックの値をポップしてローカル変数10に保存	[L3,L3,L3]	L10=1or0
      i32.const 1 ;;  [1,L3,L3,L3]
      local.set 11 ;; スタックの値をポップしてローカル変数11に保存	[L3,L3,L3]	L11=1
      local.get 10 ;; ローカル変数10をスタックにプッシュ		[L10(1or0), L3, L3, L3]
      local.get 11 ;; ローカル変数11をスタックにプッシュ		[L11(1), L10(1or0), L3, L3, L3]
      i32.and ;; L10 & L11 をスタックにプッシュ		[L10(1or0) & L11(1), L3, L3, L3]
      local.set 12 ;; スタックの値をポップしてローカル変数12に保存	[L3,L3,L3]	L12=L10 & L11
      block  ;; label = @2
        local.get 12 ;; ローカル変数12をスタックにプッシュ		[L12(L10 & L11), L3, L3]
        i32.eqz ;; スタックの先頭が0かどうか			[(n!=1),L3,L3,L3]
        br_if 0 (;@2;) ;; スタックの値が非ゼロならTRUE→ブロックを抜ける	[L3,L3,L3]
        i32.const 1 ;; [1,L3,L3,L3]
        local.set 13 ;; [L3,L3,L3]	L13=1
        local.get 3 ;; ローカル変数3をスタックにプッシュ		[L3,L3,L3,L3]
        local.get 13 ;; [L13(1), L3, L3, L3, L3]
        i32.store offset=28 ;; [L3,L3,L3,L3]			[28]=1
        br 1 (;@1;) ;; ブロック@1を抜ける
      end
      i32.const 0 ;; 0 をスタックにプッシュ			[0,L3,L3]
      local.set 14 ;; スタックの値をポップしてローカル変数14に保存	[L3,L3]	L14=0
      local.get 3  ;; ローカル変数３をスタックにプッシュ		[L3,L3,L3]
      local.get 14 ;; ローカル変数１４をスタックにプッシュ		[L14(0),L3,L3,L3]
      i32.store offset=20 ;; スタックの先頭の値をポップして20番地に書く	[L3,L3,L3]			[20]=L14(0)(== t1)
      i32.const 1 ;; 1をスタックにプッシュ			[1, L3, L3, L3]
      local.set 15 ;; スタックの値をポップしてローカル変数15に保存	[L3, L3,L3]	L15=1
      local.get 3 ;; ローカル変数３をスタックにプッシュ		[L3,L3,L3]
      local.get 15 ;; ローカル変数１５をスタックにプッシュ		[L15(1),L3,L3,L3]
      i32.store offset=16 ;; スタックの先頭の値をポップして16番地に書く	[L3,L3,L3]			[16]=L15(1)(== t2)
      i32.const 1 ;; 1をスタックにプッシュ			[1,L3,L3,L3]
      local.set 16 ;; スタックの値をポップしてローカル変数16に保存	[L3,L3,L3]	L16=1
      local.get 3 ;; ローカル変数３をスタックにプッシュ		[L3,L3,L3,L3] 
      local.get 16 ;; ローカル変数１６をスタックにプッシュ		[L16(1),L3,L3,L3,L3]
      i32.store offset=8 ;; スタックの先頭の値をポップして8番地に書く	[L3,L3,L3,L3,L3]		[8]=L16(1)(== i)
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3 ;; ローカル変数３をスタックにプッシュ		[L3×6]
          i32.load offset=8 ;; 8番地の値をスタックにプッシュ		["8番地(i)",L3,L3,L3,L3,L3,L3]
          local.set 17 ;; スタックの値をポップしてローカル変数17に保存	[L3,L3,L3,L3,L3]	L17=i
          local.get 3 ;; ローカル変数３をスタックにプッシュ		[L3,L3,L3,L3,L3,L3,L3]
          i32.load offset=24 ;; 24番地の値をスタックにプッシュ		["24番地(n)",L3,L3,L3,L3,L3,L3,L3]
          local.set 18 ;; スタックの値をポップしてローカル変数18に保存	[L3,L3,L3,L3,L3,L3,L3]	L18="24番地(n)"
          local.get 17 ;; ローカル変数17をスタックにプッシュ		["8番地",L3,L3,L3,L3,L3,L3,L3]
          local.set 19 ;; スタックの値をポップしてローカル変数19に保存	[L3,L3,L3,L3,L3,L3,L3]	L19="8番地"
          local.get 18 ;; ローカル変数18をスタックにプッシュ		["24番地(n)",L3,L3,L3,L3,L3,L3,L3]
          local.set 20 ;; スタックの値をポップしてローカル変数20に保存	[L3,L3,L3,L3,L3,L3,L3]	L20="24番地(n)"
          local.get 19 ;; ローカル変数19をスタックにプッシュ		["8番地(i)",L3,L3,L3,L3,L3,L3,L3]
          local.get 20 ;; ローカル変数20をスタックにプッシュ		["24番地(n)","8番地(i)",L3,L3,L3,L3,L3,L3,L3]
          i32.le_s ;; i <= n (真:1，偽:0をプッシュ)		[0or1,L3,L3,L3,L3,L3,L3,L3]
          local.set 21 ;; スタックの値をポップしてローカル変数21に保存	[L3,L3,L3,L3,L3,L3,L3]	L21=0or1
          i32.const 1 ;; [1,L3,L3,L3,L3,L3,L3,L3]
          local.set 22 ;; スタックの値をポップしてローカル変数22に保存	[L3,L3,L3,L3,L3,L3,L3]	L22=1
          local.get 21 ;; [0or1,L3,L3,L3,L3,L3,L3,L3]
          local.get 22 ;; [1, 0or1,L3,L3,L3,L3,L3,L3,L3]
          i32.and ;; [0or1,L3,L3,L3,L3,L3,L3,L3]
          local.set 23 ;; [L3,L3,L3,L3,L3,L3,L3]	L23=0or1
          local.get 23 ;; [0or1,L3,L3,L3,L3,L3,L3,L3]
          i32.eqz ;; 0or1 == 0					[0or1==0,L3,L3,L3,L3,L3,L3,L3]
          br_if 1 (;@2;) ;; スタックの値が非ゼロならTRUE→ブロックを抜ける[L3,L3,L3,L3,L3,L3,L3]
          local.get 3 ;; ローカル変数３をスタックにプッシュ		[L3,L3,L3,L3,L3,L3,L3,L3,L3]
          i32.load offset=20 ;; 20番地の値をスタックにプッシュ ["20番地(t1)", L3,L3,L3,L3,L3,L3,L3,L3]
          local.set 24 ;; スタックの値をポップしてローカル変数24に保存	[L3,L3,L3,L3,L3,L3,L3,L3]	L24="20番地(t1)"
          local.get 3 ;; ローカル変数３をスタックにプッシュ		[L3,L3,L3,L3,L3,L3,L3,L3,L3]
          i32.load offset=16 ;; 16番地の値をスタックにプッシュ ["16番地(t2)", L3,L3,L3,L3,L3,L3,L3,L3,L3]
          local.set 25 ;; スタックの値をポップしてローカル変数25に保存 	[L3,L3,L3,L3,L3,L3,L3,L3,L3] 	L25="16番地(t2)"
          local.get 24 ;; ローカル変数24をスタックにプッシュ["20番地(t1)", L3,L3,L3,L3,L3,L3,L3,L3,L3]
          local.get 25 ;; ローカル変数25をスタックにプッシュ["16番地(t2)" , "20番地(t1)", L3,L3,L3,L3,L3,L3,L3,L3,L3]
          i32.add ;; "20番地(t1)" + "16番地(t2)"	 ["20番地(t1)" + "16番地(t2)", L3,L3,L3,L3,L3,L3,L3,L3,L3]
          local.set 26 ;; スタックの値をポップしてローカル変数26に保存 [L3,L3,L3,L3,L3,L3,L3,L3,L3] 	L26= "20番地(t1)" + "16番地(t2)"
          local.get 3 ;; ローカル変数３をスタックにプッシュ		[L3,L3,L3,L3,L3,L3,L3,L3,L3,L3]
          local.get 26 ;; ローカル変数26をスタックにプッシュ 	["t1+t2",]
          i32.store offset=12 ;; スタックに先頭を12番地に書きこむ [L3,L3,L3,L3,L3,L3,L3,L3,L3,L3]		[12] = "t1+t2" (==nextTerm)
          local.get 3 ;; ローカル変数３をスタックにプッシュ		[L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3]
          i32.load offset=16 ;; 16番地(t2)の値をスタックにプッシュ ["t2",L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3]
          local.set 27 ;; スタックの値をポップしてローカル変数27に保存 [L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3] 	L27="t2"
          local.get 3 ;; ローカル変数３をスタックにプッシュ	[L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3]
          local.get 27 ;; ローカル変数27をスタックにプッシュ	["t2",L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3]
          i32.store offset=20 ;; スタックの値を20番地に書きこむ	[L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3]		[20]="t2" (==t1)
          local.get 3 ;; ローカル変数３をスタックにプッシュ	 [L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3]
          i32.load offset=12 ;; 12番地の値をスタックにプッシュ ["12番地(nextTerm)", L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3]
          local.set 28 ;; スタックの値をポップしてローカル変数28に保存 [L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3] L28="12番地(nextTerm)"
          local.get 3 ;; ローカル変数３をスタックにプッシュ [L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3]
          local.get 28 ;; ローカル変数28をスタックにプッシュ["nextTerm",L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3]
          i32.store offset=16 ;; スタックの値を16番地に書きこむ [L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3]	[16]="nextTerm"(==t2)
          local.get 3 ;; ローカル変数３をスタックにプッシュ [L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3]
          i32.load offset=8 ;; 8番地(i)の値をスタックにプッシュ ["8番地(i)", L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3]
          local.set 29 ;; スタックの値をポップしてローカル変数29に保存 [L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3] L29="8番地(i)"
          i32.const 1 ;; 1をスタックにプッシュ [1, L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3]
          local.set 30 ;; スタックの値をポップしてローカル変数30に保存 [L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3] L30=1
          local.get 29 ;; ローカル変数29をスタックにプッシュ ["8番地(i)", L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3] 
          local.get 30 ;; ローカル変数30をスタックにプッシュ [1, "8番地(i)", L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3] 
          i32.add ;; "8番地(i)"+1	["i+1", L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3] 
          local.set 31 ;; スタックの値をポップしてローカル変数31に保存 [L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3] L31="i+1"
          local.get 3 ;; ローカル変数３をスタックにプッシュ [L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3]
          local.get 31 ;; ローカル変数31をスタックにプッシュ ["i+1",L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3]
          i32.store offset=8 ;; スタックの値を8番地に書きこむ [L3×16]		[8]="i+1"(==i)
          br 0 (;@3;) ;; ブロック@3がLoopなので，continueの振舞いをする
        end
        unreachable
      end
      local.get 3 ;; ローカル変数3をスタックにプッシュ 	[L3,L3,L3,L3,L3,L3,L3,L3]
      i32.load offset=20 ;; 20番地をスタックにプッシュ		[t1,L3,L3,L3,L3,L3,L3,L3,L3]
      local.set 32 ;; [L3,L3,L3,L3,L3,L3,L3,L3]	L32=t1
      local.get 3 ;; [L3,L3,L3,L3,L3,L3,L3,L3,L3]
      local.get 32 ;; [t1,L3,L3,L3,L3,L3,L3,L3,L3,L3]
      i32.store offset=28 ;; [L3,L3,L3,L3,L3,L3,L3,L3,L3]		[28]=t1
    end
    local.get 3 ;; [L3,L3,L3,L3,L3,L3,L3,L3,L3,L3]	ループに入った瞬間抜けた場合の正しさを確認済
    i32.load offset=28 ;; [t1,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3]
    local.set 33 ;; [L3,L3,L3,L3,L3,L3,L3,L3,L3,L3]		L33=t1
    local.get 33 ;; [t1,L3,L3,L3,L3,L3,L3,L3,L3,L3,L3]
    return)
  ;; reverseNumber関数
  (func (;2;) (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0 ;; グローバル変数を読み込んでスタックにプッシュ	[g0]
    local.set 1 ;; スタックの値をポップしてローカル変数1に保存	[]		L1=g0
    i32.const 16 ;; 16をスタックにプッシュ	                  [16]
    local.set 2 ;; スタックの値をポップしてローカル変数2に保存	[]		L2=16
    local.get 1 ;; ローカル変数1をスタックにプッシュ [g0]
    local.get 2 ;; ローカル変数2をスタックにプッシュ [L2, g0]
    i32.sub     ;; g0 - L2 [g0 - L2]
    local.set 3 ;; スタックの値をポップしてローカル変数3に保存 [] L3= g0 - L2
    local.get 3 ;; ローカル変数3をスタックにプッシュ [L3]
    local.get 0 ;; ローカル変数0をスタックにプッシュ          [(g0ではなく引数1?),L3]
    i32.store offset=12 ;; スタックの先頭の値をポップして16番地に書く	[L3]			[12]= (g0ではなく引数1?)
    i32.const 0 ;; 0をスタックにプッシュ   [0, L3]
    local.set 4 ;; スタックの値をポップしてローカル変数4に保存 [L3]  L4=0
    local.get 3 ;; ローカル変数3をスタックにプッシュ [L3, L3]
    local.get 4 ;; ローカル変数4をスタックにプッシュ [0, L3, L3]
    i32.store offset=8 ;; スタックの先頭の値をポップして8番地に書く [L3, L3] [8]=0
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3 ;; ローカル変数3をスタックにプッシュ [L3, L3, L3]
        i32.load offset=12 ;; 12番地をスタックにプッシュ [(g0ではなく引数1?), L3, L3, L3]
        local.set 5 ;; スタックの値をポップしてローカル変数5に保存 [L3, L3, L3] L5=(g0ではなく引数1?)
        local.get 5 ;; ローカル変数5をスタックにプッシュ [L5, L3, L3, L3]
        i32.eqz ;; スタックの先頭が0かどうか [L5 == 0(1or0), L3, L3, L3]
        br_if 1 (;@1;) ;; スタックの値が非ゼロならTRUE→ブロックを抜ける [L3, L3, L3] 
        local.get 3 ;; ローカル変数3をスタックにプッシュ [L3, L3, L3, L3]
        i32.load offset=8 ;; 8番地をスタックにプッシュ [0, L3, L3, L3, L3]
        local.set 6 ;; スタックの値をポップしてローカル変数6に保存 [L3, L3, L3, L3] L6=0
        i32.const 10 ;; 10をスタックにプッシュ [10, L3, L3, L3, L3] 
        local.set 7 ;; スタックの値をポップしてローカル変数7に保存 [L3, L3, L3, L3] L7=10
        local.get 6 ;; ローカル変数6をスタックにプッシュ [0, L3, L3, L3, L3]
        local.get 7 ;; ローカル変数7をスタックにプッシュ [10, 0, L3, L3, L3, L3]
        i32.mul ;;  スタックの値の乗算 0*10 [10*0, L3, L3, L3, L3]
        local.set 8 ;; スタックの値をポップしてローカル変数8に保存 [L3, L3, L3, L3] L8=10*0
        local.get 3 ;; ローカル変数3をスタックにプッシュ [L3, L3, L3, L3, L3]
        i32.load offset=12 ;; 12番地をスタックにプッシュ	[[12], L3, L3, L3, L3, L3]
        local.set 9 ;; スタックの値をローカル変数9に保存 [L3, L3, L3, L3, L3] L9=[12]
        i32.const 10 ;; 10をスタックにプッシュ [10, L3, L3, L3, L3, L3]
        local.set 10 ;; スタックの値をローカル変数10に保存 [L3, L3, L3, L3, L3]
        local.get 9 ;; ローカル変数9をスタックにプッシュ [[12], L3, L3, L3, L3, L3]
        local.get 10 ;; ローカル変数10をスタックにプッシュ [10, [12], L3, L3, L3, L3, L3]
        i32.rem_s ;; [12]%10 の余りを取得 [[12]%10, L3, L3, L3, L3, L3]
        local.set 11 ;; スタックの値をローカル変数11に保存 [L3, L3, L3, L3, L3] L11=[12]%10
        local.get 8 ;; ローカル変数8をスタックにプッシュ [L8(10*0), L3, L3, L3, L3, L3]
        local.get 11 ;; ローカル変数11をスタックにプッシュ [L11([12]%10), L8(10*0), L3, L3, L3, L3, L3]
        i32.add ;;  L8(10*0) + L11([12]%10) [L8(10*0) + L11([12]%10), L3, L3, L3, L3, L3]
        local.set 12 ;; スタックの値をローカル変数12に保存 [L3, L3, L3, L3, L3] L12=L8(10*0) + L11([12]%10)
        local.get 3 ;; ローカル変数3をスタックにプッシュ [L3, L3, L3, L3, L3, L3]
        local.get 12 ;; ローカル変数12をスタックにプッシュ [L12(L8(10*0) + L11([12]%10)), L3, L3, L3, L3, L3, L3]
        i32.store offset=8 ;; スタックの先頭の値をポップして8番地に書く [L3, L3, L3, L3, L3, L3] [8]=L12(L8(10*0) + L11([12]%10))
        local.get 3 ;; ローカル変数3をスタックにプッシュ [L3, L3, L3, L3, L3, L3, L3]
        i32.load offset=12 ;; 12番地をスタックにプッシュ [[12], L3, L3, L3, L3, L3, L3, L3]
        local.set 13 ;; スタックの値をローカル変数13に保存 [L3, L3, L3, L3, L3, L3, L3] L13=[12]
        i32.const 10 ;; 10をスタックにプッシュ [10, L3, L3, L3, L3, L3, L3, L3]
        local.set 14 ;; スタックの値をローカル変数14に保存 [L3, L3, L3, L3, L3, L3, L3] L14=10
        local.get 13 ;; ローカル変数13をスタックにプッシュ [[12], L3, L3, L3, L3, L3, L3, L3]
        local.get 14 ;; ローカル変数14をスタックにプッシュ [10, [12], L3, L3, L3, L3, L3, L3]
        i32.div_s ;; [12]/10 の商を取得 [[12]/10, L3, L3, L3, L3, L3, L3]
        local.set 15 ;; スタックの値をローカル変数15に保存 [L3, L3, L3, L3, L3, L3, L3] L15=[12]/10
        local.get 3 ;; ローカル変数3をスタックにプッシュ [L3, L3, L3, L3, L3, L3, L3, L3]
        local.get 15 ;; ローカル変数15をスタックにプッシュ [[12]/10, L3, L3, L3, L3, L3, L3, L3, L3]
        i32.store offset=12 ;; スタックの先頭の値をポップして12番地に書く [L3, L3, L3, L3, L3, L3, L3] [12]=[12]/10
        br 0 (;@2;) ;; ブロック@2がLoopなので，continueの振舞いをする 
      end
      unreachable ;; ブロック@1が終了したら，ここに来る
    end
    local.get 3 ;; ローカル変数3をスタックにプッシュ [L3, L3, L3]
    i32.load offset=8 ;; 8番地をスタックにプッシュ [L12(L8(10*0) + L11([12]%10)), L3, L3, L3]
    local.set 16 ;; スタックの値をローカル変数16に保存 [L3, L3, L3] L16=L12(L8(10*0) + L11([12]%10))
    local.get 16 ;; ローカル変数16をスタックにプッシュ [L16(L12(L8(10*0) + L11([12]%10))), L3, L3]
    return ;; ローカル変数16を返す)
  ;; main関数
  (func (;3;) (type 0) (result i32)
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
    i32.const 10
    local.set 4
    local.get 2
    local.get 4
    i32.store offset=8
    local.get 2
    i32.load offset=8
    local.set 5
    local.get 5
    call 1
    local.set 6
    local.get 2
    local.get 6
    i32.store offset=4
    local.get 2
    i32.load offset=4
    local.set 7
    local.get 7
    call 2
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
  (func (;4;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call 3
    local.set 2
    local.get 2
    return)
  (func (;5;) (type 0) (result i32)
    i32.const 65536)
  (func (;6;) (type 2) (param i32)
    local.get 0
    global.set 1)
  (func (;7;) (type 0) (result i32)
    global.get 1)
  (func (;8;) (type 3)
    i32.const 65536
    global.set 3
    i32.const 0
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    global.set 2)
  (func (;9;) (type 0) (result i32)
    global.get 0
    global.get 2
    i32.sub)
  (func (;10;) (type 0) (result i32)
    global.get 3)
  (func (;11;) (type 0) (result i32)
    global.get 2)
  (func (;12;) (type 2) (param i32))
  (func (;13;) (type 2) (param i32))
  (func (;14;) (type 0) (result i32)
    i32.const 65540
    call 12
    i32.const 65544)
  (func (;15;) (type 3)
    i32.const 65540
    call 13)
  (func (;16;) (type 1) (param i32) (result i32)
    i32.const 1)
  (func (;17;) (type 2) (param i32))
  (func (;18;) (type 1) (param i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 0
      local.set 1
      block  ;; label = @2
        i32.const 0
        i32.load offset=65548
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=65548
        call 18
        local.set 1
      end
      block  ;; label = @2
        i32.const 0
        i32.load offset=65548
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=65548
        call 18
        local.get 1
        i32.or
        local.set 1
      end
      block  ;; label = @2
        call 14
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
            call 16
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
            call 18
            local.get 1
            i32.or
            local.set 1
          end
          block  ;; label = @4
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            call 17
          end
          local.get 0
          i32.load offset=56
          local.tee 0
          br_if 0 (;@3;)
        end
      end
      call 15
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
      call 16
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
      call 17
    end
    local.get 1)
  (func (;19;) (type 0) (result i32)
    global.get 0)
  (func (;20;) (type 2) (param i32)
    local.get 0
    global.set 0)
  (func (;21;) (type 1) (param i32) (result i32)
    (local i32 i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 1
    global.set 0
    local.get 1)
  (func (;22;) (type 0) (result i32)
    global.get 0)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 65536))
  (global (;1;) (mut i32) (i32.const 0))
  (global (;2;) (mut i32) (i32.const 0))
  (global (;3;) (mut i32) (i32.const 0))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 0))
  (export "main" (func 4))
  (export "__indirect_function_table" (table 0))
  (export "__errno_location" (func 5))
  (export "fflush" (func 18))
  (export "emscripten_stack_init" (func 8))
  (export "emscripten_stack_get_free" (func 9))
  (export "emscripten_stack_get_base" (func 10))
  (export "emscripten_stack_get_end" (func 11))
  (export "stackSave" (func 19))
  (export "stackRestore" (func 20))
  (export "stackAlloc" (func 21))
  (export "emscripten_stack_get_current" (func 22)))
