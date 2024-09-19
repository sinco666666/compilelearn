; ModuleID = 'cs1.c'
source_filename = "cs1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@qj = dso_local global i32 100, align 4
@CONST = dso_local constant i32 500, align 4
@.str = private unnamed_addr constant [27 x i8] c"fundamentals of compiling\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"integer: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"floating: %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"constant: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"sum2: %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"global variable: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"constant integer: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_message() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %5, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x float], align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 0
  store float 5.000000e+00, float* %6, align 4
  %7 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 1
  store float 7.000000e+00, float* %7, align 4
  %8 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 2
  store float 0.000000e+00, float* %8, align 4
  %9 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* noundef %3)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %14, %0
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = sitofp i32 %15 to double
  %17 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 2
  %18 = load float, float* %17, align 4
  %19 = fpext float %18 to double
  %20 = call double @llvm.fmuladd.f64(double %16, double 1.000000e-01, double %19)
  %21 = fptrunc double %20 to float
  store float %21, float* %17, align 4
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %10, !llvm.loop !6

24:                                               ; preds = %10
  %25 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 0
  %26 = load float, float* %25, align 4
  %27 = fptosi float %26 to i32
  %28 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 1
  %29 = load float, float* %28, align 4
  %30 = fptosi float %29 to i32
  %31 = call i32 @add(i32 noundef %27, i32 noundef %30)
  store i32 %31, i32* %5, align 4
  call void @print_message()
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 noundef %32)
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), double noundef 3.140000e+00)
  %35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 noundef 42)
  %36 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 2
  %37 = load float, float* %36, align 4
  %38 = fpext float %37 to double
  %39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), double noundef %38)
  %40 = load i32, i32* @qj, align 4
  %41 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef %40)
  %42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef 500)
  ret i32 0
}

declare i32 @__isoc99_scanf(i8* noundef, ...) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
