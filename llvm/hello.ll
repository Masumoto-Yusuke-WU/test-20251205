; hello.ll

; 定数文字列の定義
@msg = internal constant [14 x i8] c"Hello, LLVM!\0A\00"

; putsを宣言 (i32 puts(i8*))
declare i32 @puts(i8*)

; main
define i32 @main() {
entry:
    ; getelementptr で配列の先頭アドレスを取得 (ポインタ計算)
    ; [14 x i8]* 型の @msg を、i8* 型として扱えるようにする
    %ptr = getelementptr [14 x i8], [14 x i8]* @msg, i64 0, i64 0

    ; puts関数を呼び出す
    call i32 @puts(i8* %ptr)

    ; return 0;
    ret i32 0
}
