@.str = private unnamed_addr constant [27 x i8] c"fundamentals of compiling\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"integer: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"floating: %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"constant: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"sum2: %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"global: %d\0A\00", align 1

declare dso_local i32 @__isoc99_scanf(i8*, ...)
declare dso_local i32 @printf(i8*, ...)

@global = global i32 1

define dso_local void @print_message() {
  call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret void
}


define dso_local i32 @add(i32 noundef %a, i32 noundef %b) {
  %result = add nsw i32 %a, %b
  ret i32 %result
}

define dso_local i32 @main(){
%sum = alloca i32, align 4
%arr = alloca [3 x float], align 4

%arr_0 = getelementptr inbounds [3 x float], ptr %arr, i64 0, i64 0
store float 5.0, ptr %arr_0, align 4
%arr_1 = getelementptr inbounds [3 x float], ptr %arr, i64 0, i64 1
store float 7.0, ptr %arr_1, align 4
%arr_2 = getelementptr inbounds [3 x float], ptr %arr, i64 0, i64 2
store float 0.0, ptr %arr_2, align 4

%input = alloca i32, align 4
call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.1, ptr noundef %input)
%input_val = load i32, ptr %input, align 4

br label %loop

loop:                                             ; preds = %loop, %0
  %i = phi i32 [ 0, %0 ], [ %next, %loop ]
  %arr_2_val = load float, ptr %arr_2, align 4
  %i_float = sitofp i32 %i to float
  %updated = fadd float %arr_2_val, %i_float
  store float %updated, ptr %arr_2, align 4

  %next = add i32 %i, 1
  %cmp = icmp sle i32 %next, %input_val
  br i1 %cmp, label %loop, label %exit

exit:                                             ; preds = %loop
  %val_0 = load float, ptr %arr_0, align 4
  %val_1 = load float, ptr %arr_1, align 4
  %val_0_int = fptosi float %val_0 to i32
  %val_1_int = fptosi float %val_1 to i32
  %sum_int = call i32 @add(i32 noundef %val_0_int, i32 noundef %val_1_int)
  store i32 %sum_int, ptr %sum, align 4
  
  call void @print_message()
  %final_sum = load i32, ptr %sum, align 4
  call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %final_sum)
  call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef 3.14)
  call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef 42)

  %arr_2_final = load float, ptr %arr_2, align 4
  %arr_2_double = fpext float %arr_2_final to double
  call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %arr_2_double)
  
  %global = load i32, ptr @global
  call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %global)
  
  ret i32 0
}
