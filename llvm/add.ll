; add.ll

define i32 @add_numbers(i32 %a, i32 %b) {
    ; %a と %b を足して %result に入れる
    %result = add i32 %a, %b
    ret i32 %result
}

define i32 @main() {
    ; add_numbers(10, 20) を呼び出す
    %sum = call i32 @add_numbers(i32 10, i32 20)

    ; ここでは結果を終了コードとして返す (echo $? で確認可能)
    ret i32 %sum
}
