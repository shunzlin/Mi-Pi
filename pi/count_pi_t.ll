; ModuleID = 'count_pi_t.ll'
source_filename = "count_pi.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-ellcc-linux"

@.str = private unnamed_addr constant [9 x i8] c"pi:%.6f\0A\00", align 1

; Function Attrs: nounwind
define arm_aapcscc i32 @main() #0 {
  %allocaVec = alloca <4 x float>, align 16
  %Recovery = alloca float, align 4
  %allocaVec2 = alloca <4 x float>, align 16
  %Recovery1 = alloca float, align 4
  %allocaVec3 = alloca <4 x i32>, align 16
  %1 = alloca i32, align 4
  %allocaVec4 = alloca <4 x float>, align 16
  %2 = alloca float, align 4
  %allocaVec5 = alloca <4 x float>, align 16
  %3 = alloca float, align 4
  %allocaVec6 = alloca <4 x float>, align 16
  %4 = alloca float, align 4
  %allocaVec7 = alloca <4 x float>, align 16
  %5 = alloca float, align 4
  %allocaVec8 = alloca <4 x float>, align 16
  %6 = alloca float, align 4
  %allocaVec9 = alloca <4 x float>, align 16
  %7 = alloca float, align 4
  store i32 0, i32* %1, align 4
  store float 1.000000e+00, float* %2, align 4
  store float 0.000000e+00, float* %3, align 4
  store float 1.000000e+00, float* %4, align 4
  store float 1.000000e+00, float* %5, align 4
  store float 2.000000e+00, float* %6, align 4
  store float 0.000000e+00, float* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %39, %0
  %9 = load float, float* %4, align 4
  %10 = fpext float %9 to double
  %11 = call arm_aapcscc double @fabs(double %10) #3
  %12 = fcmp oge double %11, 1.000000e-06
  br i1 %12, label %13, label %41

; <label>:13:                                     ; preds = %8
  %14 = load float, float* %4, align 4
  %insertElmt = insertelement <4 x float> undef, float %14, i32 0
  %insertElmt10 = insertelement <4 x float> %insertElmt, float %14, i32 1
  %insertElmt11 = insertelement <4 x float> %insertElmt10, float %14, i32 2
  %insertElmt12 = insertelement <4 x float> %insertElmt11, float %14, i32 3
  store <4 x float> %insertElmt12, <4 x float>* %allocaVec6, align 16
  %15 = load float, float* %3, align 4
  %insertElmt13 = insertelement <4 x float> undef, float %15, i32 0
  %insertElmt14 = insertelement <4 x float> %insertElmt13, float %15, i32 1
  %insertElmt15 = insertelement <4 x float> %insertElmt14, float %15, i32 2
  %insertElmt16 = insertelement <4 x float> %insertElmt15, float %15, i32 3
  store <4 x float> %insertElmt16, <4 x float>* %allocaVec5, align 16
  %16 = load <4 x float>, <4 x float>* %allocaVec5, align 16
  %17 = load <4 x float>, <4 x float>* %allocaVec6, align 16
  %Vop = fadd <4 x float> %16, %17
  store <4 x float> %Vop, <4 x float>* %allocaVec5
  %18 = fadd float %15, %14
  store float %18, float* %3, align 4
  %19 = load float, float* %5, align 4
  %insertElmt17 = insertelement <4 x float> undef, float %19, i32 0
  %insertElmt18 = insertelement <4 x float> %insertElmt17, float %19, i32 1
  %insertElmt19 = insertelement <4 x float> %insertElmt18, float %19, i32 2
  %insertElmt20 = insertelement <4 x float> %insertElmt19, float %19, i32 3
  store <4 x float> %insertElmt20, <4 x float>* %allocaVec7, align 16
  %20 = load float, float* %6, align 4
  %insertElmt21 = insertelement <4 x float> undef, float %20, i32 0
  %insertElmt22 = insertelement <4 x float> %insertElmt21, float %20, i32 1
  %insertElmt23 = insertelement <4 x float> %insertElmt22, float %20, i32 2
  %insertElmt24 = insertelement <4 x float> %insertElmt23, float %20, i32 3
  store <4 x float> %insertElmt24, <4 x float>* %allocaVec8, align 16
  %21 = load <4 x float>, <4 x float>* %allocaVec7, align 16
  %22 = load <4 x float>, <4 x float>* %allocaVec8, align 16
  %Vop25 = fadd <4 x float> %21, %22
  store <4 x float> %Vop25, <4 x float>* %allocaVec7
  %23 = fadd float %19, %20
  store float %23, float* %5, align 4
  %24 = load float, float* %7, align 4
  %insertElmt26 = insertelement <4 x float> undef, float %24, i32 0
  %insertElmt27 = insertelement <4 x float> %insertElmt26, float %24, i32 1
  %insertElmt28 = insertelement <4 x float> %insertElmt27, float %24, i32 2
  %insertElmt29 = insertelement <4 x float> %insertElmt28, float %24, i32 3
  store <4 x float> %insertElmt29, <4 x float>* %allocaVec9, align 16
  %25 = load float, float* %2, align 4
  %insertElmt30 = insertelement <4 x float> undef, float %25, i32 0
  %insertElmt31 = insertelement <4 x float> %insertElmt30, float %25, i32 1
  %insertElmt32 = insertelement <4 x float> %insertElmt31, float %25, i32 2
  %insertElmt33 = insertelement <4 x float> %insertElmt32, float %25, i32 3
  store <4 x float> %insertElmt33, <4 x float>* %allocaVec4, align 16
  %26 = load <4 x float>, <4 x float>* %allocaVec9, align 16
  %27 = load <4 x float>, <4 x float>* %allocaVec4, align 16
  %Vop34 = fsub <4 x float> %26, %27
  store <4 x float> %Vop34, <4 x float>* %allocaVec4
  %28 = fsub float %24, %25
  store float %28, float* %2, align 4
  %29 = load float, float* %2, align 4
  %30 = load float, float* %5, align 4
  %31 = load <4 x float>, <4 x float>* %allocaVec4, align 16
  %32 = load <4 x float>, <4 x float>* %allocaVec7, align 16
  %Vop35 = fdiv <4 x float> %31, %32
  store <4 x float> %Vop35, <4 x float>* %allocaVec6
  %33 = load <4 x float>, <4 x float>* %allocaVec6, align 4
  %extractE = extractelement <4 x float> %33, i64 0
  %extractE36 = extractelement <4 x float> %33, i64 1
  %extractE37 = extractelement <4 x float> %33, i64 2
  %sum = fadd float %extractE, %extractE36
  %sum38 = fadd float %sum, %extractE37
  %34 = fdiv float %29, %30
  %Fmul = fmul float %34, 3.000000e+00
  store float %34, float* %Recovery
  %Fcmp = fcmp une float %sum38, %Fmul
  br i1 %Fcmp, label %35, label %39

; <label>:35:                                     ; preds = %13
  %remThree = fdiv float %sum38, %extractE
  %FcmpThree = fcmp une float %remThree, 3.000000e+00
  br i1 %FcmpThree, label %36, label %37

; <label>:36:                                     ; preds = %35
  store float %extractE, float* %Recovery, align 4
  br label %38

; <label>:37:                                     ; preds = %35
  store float %34, float* %Recovery, align 4
  br label %38

; <label>:38:                                     ; preds = %37, %36
  br label %39

; <label>:39:                                     ; preds = %38, %13
  %40 = load float, float* %Recovery, align 4
  store float %40, float* %4, align 4
  br label %8

; <label>:41:                                     ; preds = %8
  %42 = load float, float* %3, align 4
  %43 = alloca float, align 4
  %allocaCons = alloca <4 x float>, align 16
  store float 4.000000e+00, float* %43
  %44 = load float, float* %43, align 4
  %insertCons = insertelement <4 x float> undef, float %44, i32 0
  %insertCons39 = insertelement <4 x float> %insertCons, float %44, i32 1
  %insertCons40 = insertelement <4 x float> %insertCons39, float %44, i32 2
  %insertCons41 = insertelement <4 x float> %insertCons40, float %44, i32 3
  store <4 x float> %insertCons41, <4 x float>* %allocaCons, align 4
  %45 = load <4 x float>, <4 x float>* %allocaCons, align 4
  %46 = load <4 x float>, <4 x float>* %allocaVec5, align 16
  %Vop42 = fmul <4 x float> %45, %46
  store <4 x float> %Vop42, <4 x float>* %allocaVec5
  %47 = load <4 x float>, <4 x float>* %allocaVec5, align 4
  %extractE44 = extractelement <4 x float> %47, i64 0
  %extractE45 = extractelement <4 x float> %47, i64 1
  %extractE46 = extractelement <4 x float> %47, i64 2
  %sum47 = fadd float %extractE44, %extractE45
  %sum48 = fadd float %sum47, %extractE46
  %48 = fmul float 4.000000e+00, %42
  %Fmul43 = fmul float %48, 3.000000e+00
  store float %48, float* %Recovery1
  %Fcmp49 = fcmp une float %sum48, %Fmul43
  br i1 %Fcmp49, label %49, label %53

; <label>:49:                                     ; preds = %41
  %remThree50 = fdiv float %sum48, %extractE44
  %FcmpThree51 = fcmp une float %remThree50, 3.000000e+00
  br i1 %FcmpThree51, label %50, label %51

; <label>:50:                                     ; preds = %49
  store float %extractE44, float* %Recovery1, align 4
  br label %52

; <label>:51:                                     ; preds = %49
  store float %48, float* %Recovery1, align 4
  br label %52

; <label>:52:                                     ; preds = %51, %50
  br label %53

; <label>:53:                                     ; preds = %52, %41
  %54 = load float, float* %Recovery1, align 4
  store float %54, float* %3, align 4
  %55 = load float, float* %3, align 4
  %56 = fpext float %55 to double
  %57 = call arm_aapcscc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), double %56)
  ret i32 0
}

; Function Attrs: nounwind readnone
declare arm_aapcscc double @fabs(double) #1

declare arm_aapcscc i32 @printf(i8*, ...) #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a8" "target-features"="+dsp,+neon,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 4.0.0 (trunk)"}
