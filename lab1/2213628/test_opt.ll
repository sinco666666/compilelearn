; ModuleID = 'test.ll'
source_filename = "test.ll"

@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"integer: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"floating: %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"constant: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"sum2: %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"global: %d\0A\00", align 1
@global = local_unnamed_addr global i32 1
@str = private unnamed_addr constant [26 x i8] c"fundamentals of compiling\00", align 1

declare dso_local i32 @__isoc99_scanf(ptr, ...) local_unnamed_addr

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #0

; Function Attrs: nofree nounwind
define dso_local void @print_message() local_unnamed_addr #0 {
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local i32 @add(i32 noundef %a, i32 noundef %b) local_unnamed_addr #1 {
  %result = add nsw i32 %b, %a
  ret i32 %result
}

define dso_local noundef i32 @main() local_unnamed_addr {
  %input = alloca i32, align 4
  %1 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %input)
  %input_val = load i32, ptr %input, align 4
  br label %loop

loop:                                             ; preds = %loop, %0
  %arr.sroa.4.0 = phi float [ 0.000000e+00, %0 ], [ %updated, %loop ]
  %i = phi i32 [ 0, %0 ], [ %next, %loop ]
  %i_float = sitofp i32 %i to float
  %updated = fadd float %arr.sroa.4.0, %i_float
  %next = add i32 %i, 1
  %cmp.not = icmp sgt i32 %next, %input_val
  br i1 %cmp.not, label %exit, label %loop

exit:                                             ; preds = %loop
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %2 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 12)
  %3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef 3.140000e+00)
  %4 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef 42)
  %arr_2_double = fpext float %updated to double
  %5 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %arr_2_double)
  %global = load i32, ptr @global, align 4
  %6 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %global)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #0

attributes #0 = { nofree nounwind }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
