; ModuleID = 'string.cpp'
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc18.0.0"

%"union.eastl::EmptyString" = type { i32 }

@"\01?gEmptyString@eastl@@3TEmptyString@1@A" = global %"union.eastl::EmptyString" zeroinitializer, align 4

; Function Attrs: nounwind uwtable
define zeroext i1 @"\01?UCS4ToUTF8@eastl@@YA_NIAEAPEAD@Z"(i32 %c, i8** dereferenceable(8) %pResult) #0 {
entry:
  %retval = alloca i1, align 1
  %pResult.addr = alloca i8**, align 8
  %c.addr = alloca i32, align 4
  store i8** %pResult, i8*** %pResult.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp ult i32 %0, 128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %1 to i8
  %2 = load i8**, i8*** %pResult.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %2, align 8
  store i8 %conv, i8* %3, align 1
  br label %if.end107

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp ult i32 %4, 2048
  br i1 %cmp1, label %if.then2, label %if.else8

if.then2:                                         ; preds = %if.else
  %5 = load i32, i32* %c.addr, align 4
  %shr = lshr i32 %5, 6
  %or = or i32 192, %shr
  %conv3 = trunc i32 %or to i8
  %6 = load i8**, i8*** %pResult.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr4, i8** %6, align 8
  store i8 %conv3, i8* %7, align 1
  %8 = load i32, i32* %c.addr, align 4
  %and = and i32 %8, 63
  %or5 = or i32 128, %and
  %conv6 = trunc i32 %or5 to i8
  %9 = load i8**, i8*** %pResult.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr7, i8** %9, align 8
  store i8 %conv6, i8* %10, align 1
  br label %if.end106

if.else8:                                         ; preds = %if.else
  %11 = load i32, i32* %c.addr, align 4
  %cmp9 = icmp ule i32 %11, 65535
  br i1 %cmp9, label %if.then10, label %if.else24

if.then10:                                        ; preds = %if.else8
  %12 = load i32, i32* %c.addr, align 4
  %shr11 = lshr i32 %12, 12
  %or12 = or i32 224, %shr11
  %conv13 = trunc i32 %or12 to i8
  %13 = load i8**, i8*** %pResult.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr14, i8** %13, align 8
  store i8 %conv13, i8* %14, align 1
  %15 = load i32, i32* %c.addr, align 4
  %shr15 = lshr i32 %15, 6
  %and16 = and i32 %shr15, 63
  %or17 = or i32 128, %and16
  %conv18 = trunc i32 %or17 to i8
  %16 = load i8**, i8*** %pResult.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr19, i8** %16, align 8
  store i8 %conv18, i8* %17, align 1
  %18 = load i32, i32* %c.addr, align 4
  %and20 = and i32 %18, 63
  %or21 = or i32 128, %and20
  %conv22 = trunc i32 %or21 to i8
  %19 = load i8**, i8*** %pResult.addr, align 8
  %20 = load i8*, i8** %19, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr23, i8** %19, align 8
  store i8 %conv22, i8* %20, align 1
  br label %if.end105

if.else24:                                        ; preds = %if.else8
  %21 = load i32, i32* %c.addr, align 4
  %cmp25 = icmp ule i32 %21, 2097151
  br i1 %cmp25, label %if.then26, label %if.else45

if.then26:                                        ; preds = %if.else24
  %22 = load i32, i32* %c.addr, align 4
  %shr27 = lshr i32 %22, 18
  %or28 = or i32 240, %shr27
  %conv29 = trunc i32 %or28 to i8
  %23 = load i8**, i8*** %pResult.addr, align 8
  %24 = load i8*, i8** %23, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr30, i8** %23, align 8
  store i8 %conv29, i8* %24, align 1
  %25 = load i32, i32* %c.addr, align 4
  %shr31 = lshr i32 %25, 12
  %and32 = and i32 %shr31, 63
  %or33 = or i32 128, %and32
  %conv34 = trunc i32 %or33 to i8
  %26 = load i8**, i8*** %pResult.addr, align 8
  %27 = load i8*, i8** %26, align 8
  %incdec.ptr35 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr35, i8** %26, align 8
  store i8 %conv34, i8* %27, align 1
  %28 = load i32, i32* %c.addr, align 4
  %shr36 = lshr i32 %28, 6
  %and37 = and i32 %shr36, 63
  %or38 = or i32 128, %and37
  %conv39 = trunc i32 %or38 to i8
  %29 = load i8**, i8*** %pResult.addr, align 8
  %30 = load i8*, i8** %29, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr40, i8** %29, align 8
  store i8 %conv39, i8* %30, align 1
  %31 = load i32, i32* %c.addr, align 4
  %and41 = and i32 %31, 63
  %or42 = or i32 128, %and41
  %conv43 = trunc i32 %or42 to i8
  %32 = load i8**, i8*** %pResult.addr, align 8
  %33 = load i8*, i8** %32, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr44, i8** %32, align 8
  store i8 %conv43, i8* %33, align 1
  br label %if.end104

if.else45:                                        ; preds = %if.else24
  %34 = load i32, i32* %c.addr, align 4
  %cmp46 = icmp ule i32 %34, 67108863
  br i1 %cmp46, label %if.then47, label %if.else70

if.then47:                                        ; preds = %if.else45
  %35 = load i32, i32* %c.addr, align 4
  %shr48 = lshr i32 %35, 24
  %or49 = or i32 248, %shr48
  %conv50 = trunc i32 %or49 to i8
  %36 = load i8**, i8*** %pResult.addr, align 8
  %37 = load i8*, i8** %36, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr51, i8** %36, align 8
  store i8 %conv50, i8* %37, align 1
  %38 = load i32, i32* %c.addr, align 4
  %shr52 = lshr i32 %38, 18
  %or53 = or i32 128, %shr52
  %conv54 = trunc i32 %or53 to i8
  %39 = load i8**, i8*** %pResult.addr, align 8
  %40 = load i8*, i8** %39, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr55, i8** %39, align 8
  store i8 %conv54, i8* %40, align 1
  %41 = load i32, i32* %c.addr, align 4
  %shr56 = lshr i32 %41, 12
  %and57 = and i32 %shr56, 63
  %or58 = or i32 128, %and57
  %conv59 = trunc i32 %or58 to i8
  %42 = load i8**, i8*** %pResult.addr, align 8
  %43 = load i8*, i8** %42, align 8
  %incdec.ptr60 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr60, i8** %42, align 8
  store i8 %conv59, i8* %43, align 1
  %44 = load i32, i32* %c.addr, align 4
  %shr61 = lshr i32 %44, 6
  %and62 = and i32 %shr61, 63
  %or63 = or i32 128, %and62
  %conv64 = trunc i32 %or63 to i8
  %45 = load i8**, i8*** %pResult.addr, align 8
  %46 = load i8*, i8** %45, align 8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr65, i8** %45, align 8
  store i8 %conv64, i8* %46, align 1
  %47 = load i32, i32* %c.addr, align 4
  %and66 = and i32 %47, 63
  %or67 = or i32 128, %and66
  %conv68 = trunc i32 %or67 to i8
  %48 = load i8**, i8*** %pResult.addr, align 8
  %49 = load i8*, i8** %48, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr69, i8** %48, align 8
  store i8 %conv68, i8* %49, align 1
  br label %if.end103

if.else70:                                        ; preds = %if.else45
  %50 = load i32, i32* %c.addr, align 4
  %cmp71 = icmp ule i32 %50, 2147483647
  br i1 %cmp71, label %if.then72, label %if.else101

if.then72:                                        ; preds = %if.else70
  %51 = load i32, i32* %c.addr, align 4
  %shr73 = lshr i32 %51, 30
  %or74 = or i32 252, %shr73
  %conv75 = trunc i32 %or74 to i8
  %52 = load i8**, i8*** %pResult.addr, align 8
  %53 = load i8*, i8** %52, align 8
  %incdec.ptr76 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr76, i8** %52, align 8
  store i8 %conv75, i8* %53, align 1
  %54 = load i32, i32* %c.addr, align 4
  %shr77 = lshr i32 %54, 24
  %and78 = and i32 %shr77, 63
  %or79 = or i32 128, %and78
  %conv80 = trunc i32 %or79 to i8
  %55 = load i8**, i8*** %pResult.addr, align 8
  %56 = load i8*, i8** %55, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr81, i8** %55, align 8
  store i8 %conv80, i8* %56, align 1
  %57 = load i32, i32* %c.addr, align 4
  %shr82 = lshr i32 %57, 18
  %and83 = and i32 %shr82, 63
  %or84 = or i32 128, %and83
  %conv85 = trunc i32 %or84 to i8
  %58 = load i8**, i8*** %pResult.addr, align 8
  %59 = load i8*, i8** %58, align 8
  %incdec.ptr86 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr86, i8** %58, align 8
  store i8 %conv85, i8* %59, align 1
  %60 = load i32, i32* %c.addr, align 4
  %shr87 = lshr i32 %60, 12
  %and88 = and i32 %shr87, 63
  %or89 = or i32 128, %and88
  %conv90 = trunc i32 %or89 to i8
  %61 = load i8**, i8*** %pResult.addr, align 8
  %62 = load i8*, i8** %61, align 8
  %incdec.ptr91 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr91, i8** %61, align 8
  store i8 %conv90, i8* %62, align 1
  %63 = load i32, i32* %c.addr, align 4
  %shr92 = lshr i32 %63, 6
  %and93 = and i32 %shr92, 63
  %or94 = or i32 128, %and93
  %conv95 = trunc i32 %or94 to i8
  %64 = load i8**, i8*** %pResult.addr, align 8
  %65 = load i8*, i8** %64, align 8
  %incdec.ptr96 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr96, i8** %64, align 8
  store i8 %conv95, i8* %65, align 1
  %66 = load i32, i32* %c.addr, align 4
  %and97 = and i32 %66, 63
  %or98 = or i32 128, %and97
  %conv99 = trunc i32 %or98 to i8
  %67 = load i8**, i8*** %pResult.addr, align 8
  %68 = load i8*, i8** %67, align 8
  %incdec.ptr100 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr100, i8** %67, align 8
  store i8 %conv99, i8* %68, align 1
  br label %if.end

if.else101:                                       ; preds = %if.else70
  %69 = load i8**, i8*** %pResult.addr, align 8
  %70 = load i8*, i8** %69, align 8
  %incdec.ptr102 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr102, i8** %69, align 8
  store i8 1, i8* %70, align 1
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %if.then72
  br label %if.end103

if.end103:                                        ; preds = %if.end, %if.then47
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then26
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.then10
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.then2
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end107, %if.else101
  %71 = load i1, i1* %retval, align 1
  ret i1 %71
}

; Function Attrs: nounwind uwtable
define zeroext i1 @"\01?UCS2ToUTF8@eastl@@YA_NGAEAPEAD@Z"(i16 %c, i8** dereferenceable(8) %pResult) #0 {
entry:
  %pResult.addr = alloca i8**, align 8
  %c.addr = alloca i16, align 2
  store i8** %pResult, i8*** %pResult.addr, align 8
  store i16 %c, i16* %c.addr, align 2
  %0 = load i8**, i8*** %pResult.addr, align 8
  %1 = load i16, i16* %c.addr, align 2
  %conv = zext i16 %1 to i32
  %call = call zeroext i1 @"\01?UCS4ToUTF8@eastl@@YA_NIAEAPEAD@Z"(i32 %conv, i8** dereferenceable(8) %0)
  ret i1 %call
}

; Function Attrs: nounwind uwtable
define zeroext i1 @"\01?UTF8ToUCS4@eastl@@YA_NAEAPEBDPEBDAEAI@Z"(i8** dereferenceable(8) %p, i8* %pEnd, i32* dereferenceable(4) %result) #0 {
entry:
  %result.addr = alloca i32*, align 8
  %pEnd.addr = alloca i8*, align 8
  %p.addr = alloca i8**, align 8
  %success = alloca i8, align 1
  %c = alloca i32, align 4
  %pNext = alloca i8*, align 8
  %cChar0 = alloca i8, align 1
  %cChar1 = alloca i8, align 1
  %cChar2 = alloca i8, align 1
  %cChar3 = alloca i8, align 1
  store i32* %result, i32** %result.addr, align 8
  store i8* %pEnd, i8** %pEnd.addr, align 8
  store i8** %p, i8*** %p.addr, align 8
  store i8 1, i8* %success, align 1
  store i32 65535, i32* %c, align 4
  store i8* null, i8** %pNext, align 8
  %0 = load i8**, i8*** %p.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = load i8*, i8** %pEnd.addr, align 8
  %cmp = icmp ult i8* %1, %2
  br i1 %cmp, label %if.then, label %if.else133

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %p.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %cChar0, align 1
  %6 = load i8, i8* %cChar0, align 1
  %conv = zext i8 %6 to i32
  %cmp1 = icmp slt i32 %conv, 128
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %7 = load i8**, i8*** %p.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1
  store i8* %add.ptr, i8** %pNext, align 8
  %9 = load i8, i8* %cChar0, align 1
  %conv3 = zext i8 %9 to i32
  store i32 %conv3, i32* %c, align 4
  br label %if.end132

if.else:                                          ; preds = %if.then
  %10 = load i8, i8* %cChar0, align 1
  %conv4 = zext i8 %10 to i32
  %and = and i32 %conv4, 192
  %cmp5 = icmp ne i32 %and, 192
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  store i8 0, i8* %success, align 1
  br label %Failure

if.end:                                           ; preds = %if.else
  %11 = load i8, i8* %cChar0, align 1
  %conv7 = zext i8 %11 to i32
  %and8 = and i32 %conv7, 224
  %cmp9 = icmp eq i32 %and8, 192
  br i1 %cmp9, label %if.then10, label %if.else27

if.then10:                                        ; preds = %if.end
  %12 = load i8**, i8*** %p.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %13, i64 2
  store i8* %add.ptr11, i8** %pNext, align 8
  %14 = load i8*, i8** %pNext, align 8
  %15 = load i8*, i8** %pEnd.addr, align 8
  %cmp12 = icmp ule i8* %14, %15
  br i1 %cmp12, label %if.then13, label %if.else25

if.then13:                                        ; preds = %if.then10
  %16 = load i8, i8* %cChar0, align 1
  %conv14 = zext i8 %16 to i32
  %and15 = and i32 %conv14, 31
  %shl = shl i32 %and15, 6
  store i32 %shl, i32* %c, align 4
  %17 = load i8**, i8*** %p.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8, i8* %arrayidx, align 1
  store i8 %19, i8* %cChar1, align 1
  %20 = load i8, i8* %cChar1, align 1
  %conv16 = zext i8 %20 to i32
  %and17 = and i32 %conv16, 63
  %21 = load i32, i32* %c, align 4
  %or = or i32 %21, %and17
  store i32 %or, i32* %c, align 4
  %22 = load i8, i8* %cChar1, align 1
  %conv18 = zext i8 %22 to i32
  %and19 = and i32 %conv18, 192
  %cmp20 = icmp eq i32 %and19, 128
  br i1 %cmp20, label %lor.lhs.false, label %if.then23

lor.lhs.false:                                    ; preds = %if.then13
  %23 = load i32, i32* %c, align 4
  %cmp21 = icmp uge i32 %23, 128
  br i1 %cmp21, label %land.lhs.true, label %if.then23

land.lhs.true:                                    ; preds = %lor.lhs.false
  %24 = load i32, i32* %c, align 4
  %cmp22 = icmp ult i32 %24, 2048
  br i1 %cmp22, label %if.end24, label %if.then23

if.then23:                                        ; preds = %land.lhs.true, %lor.lhs.false, %if.then13
  store i8 0, i8* %success, align 1
  br label %Failure

if.end24:                                         ; preds = %land.lhs.true
  br label %if.end26

if.else25:                                        ; preds = %if.then10
  store i8 0, i8* %success, align 1
  br label %Failure

if.end26:                                         ; preds = %if.end24
  br label %if.end131

if.else27:                                        ; preds = %if.end
  %25 = load i8, i8* %cChar0, align 1
  %conv28 = zext i8 %25 to i32
  %and29 = and i32 %conv28, 240
  %cmp30 = icmp eq i32 %and29, 224
  br i1 %cmp30, label %if.then31, label %if.else62

if.then31:                                        ; preds = %if.else27
  %26 = load i8**, i8*** %p.addr, align 8
  %27 = load i8*, i8** %26, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %27, i64 3
  store i8* %add.ptr32, i8** %pNext, align 8
  %28 = load i8*, i8** %pNext, align 8
  %29 = load i8*, i8** %pEnd.addr, align 8
  %cmp33 = icmp ule i8* %28, %29
  br i1 %cmp33, label %if.then34, label %if.else60

if.then34:                                        ; preds = %if.then31
  %30 = load i8, i8* %cChar0, align 1
  %conv35 = zext i8 %30 to i32
  %and36 = and i32 %conv35, 15
  %shl37 = shl i32 %and36, 12
  store i32 %shl37, i32* %c, align 4
  %31 = load i8**, i8*** %p.addr, align 8
  %32 = load i8*, i8** %31, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %32, i64 1
  %33 = load i8, i8* %arrayidx38, align 1
  store i8 %33, i8* %cChar1, align 1
  %34 = load i8, i8* %cChar1, align 1
  %conv39 = zext i8 %34 to i32
  %and40 = and i32 %conv39, 63
  %shl41 = shl i32 %and40, 6
  %35 = load i32, i32* %c, align 4
  %or42 = or i32 %35, %shl41
  store i32 %or42, i32* %c, align 4
  %36 = load i8**, i8*** %p.addr, align 8
  %37 = load i8*, i8** %36, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %37, i64 2
  %38 = load i8, i8* %arrayidx43, align 1
  store i8 %38, i8* %cChar2, align 1
  %39 = load i8, i8* %cChar2, align 1
  %conv44 = zext i8 %39 to i32
  %and45 = and i32 %conv44, 63
  %40 = load i32, i32* %c, align 4
  %or46 = or i32 %40, %and45
  store i32 %or46, i32* %c, align 4
  %41 = load i8, i8* %cChar1, align 1
  %conv47 = zext i8 %41 to i32
  %and48 = and i32 %conv47, 192
  %cmp49 = icmp eq i32 %and48, 128
  br i1 %cmp49, label %lor.lhs.false50, label %if.then58

lor.lhs.false50:                                  ; preds = %if.then34
  %42 = load i8, i8* %cChar2, align 1
  %conv51 = zext i8 %42 to i32
  %and52 = and i32 %conv51, 192
  %cmp53 = icmp eq i32 %and52, 128
  br i1 %cmp53, label %lor.lhs.false54, label %if.then58

lor.lhs.false54:                                  ; preds = %lor.lhs.false50
  %43 = load i32, i32* %c, align 4
  %cmp55 = icmp uge i32 %43, 2048
  br i1 %cmp55, label %land.lhs.true56, label %if.then58

land.lhs.true56:                                  ; preds = %lor.lhs.false54
  %44 = load i32, i32* %c, align 4
  %cmp57 = icmp ult i32 %44, 65536
  br i1 %cmp57, label %if.end59, label %if.then58

if.then58:                                        ; preds = %land.lhs.true56, %lor.lhs.false54, %lor.lhs.false50, %if.then34
  store i8 0, i8* %success, align 1
  br label %Failure

if.end59:                                         ; preds = %land.lhs.true56
  br label %if.end61

if.else60:                                        ; preds = %if.then31
  store i8 0, i8* %success, align 1
  br label %Failure

if.end61:                                         ; preds = %if.end59
  br label %if.end130

if.else62:                                        ; preds = %if.else27
  %45 = load i8, i8* %cChar0, align 1
  %conv63 = zext i8 %45 to i32
  %and64 = and i32 %conv63, 248
  %cmp65 = icmp eq i32 %and64, 240
  br i1 %cmp65, label %if.then66, label %if.else106

if.then66:                                        ; preds = %if.else62
  %46 = load i8**, i8*** %p.addr, align 8
  %47 = load i8*, i8** %46, align 8
  %add.ptr67 = getelementptr inbounds i8, i8* %47, i64 4
  store i8* %add.ptr67, i8** %pNext, align 8
  %48 = load i8*, i8** %pNext, align 8
  %49 = load i8*, i8** %pEnd.addr, align 8
  %cmp68 = icmp ule i8* %48, %49
  br i1 %cmp68, label %if.then69, label %if.else104

if.then69:                                        ; preds = %if.then66
  %50 = load i8, i8* %cChar0, align 1
  %conv70 = zext i8 %50 to i32
  %and71 = and i32 %conv70, 7
  %shl72 = shl i32 %and71, 18
  store i32 %shl72, i32* %c, align 4
  %51 = load i8**, i8*** %p.addr, align 8
  %52 = load i8*, i8** %51, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %52, i64 1
  %53 = load i8, i8* %arrayidx73, align 1
  store i8 %53, i8* %cChar1, align 1
  %54 = load i8, i8* %cChar1, align 1
  %conv74 = zext i8 %54 to i32
  %and75 = and i32 %conv74, 63
  %shl76 = shl i32 %and75, 12
  %55 = load i32, i32* %c, align 4
  %or77 = or i32 %55, %shl76
  store i32 %or77, i32* %c, align 4
  %56 = load i8**, i8*** %p.addr, align 8
  %57 = load i8*, i8** %56, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %57, i64 2
  %58 = load i8, i8* %arrayidx78, align 1
  store i8 %58, i8* %cChar2, align 1
  %59 = load i8, i8* %cChar2, align 1
  %conv79 = zext i8 %59 to i32
  %and80 = and i32 %conv79, 63
  %shl81 = shl i32 %and80, 6
  %60 = load i32, i32* %c, align 4
  %or82 = or i32 %60, %shl81
  store i32 %or82, i32* %c, align 4
  %61 = load i8**, i8*** %p.addr, align 8
  %62 = load i8*, i8** %61, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %62, i64 3
  %63 = load i8, i8* %arrayidx83, align 1
  store i8 %63, i8* %cChar3, align 1
  %64 = load i8, i8* %cChar3, align 1
  %conv84 = zext i8 %64 to i32
  %and85 = and i32 %conv84, 63
  %65 = load i32, i32* %c, align 4
  %or86 = or i32 %65, %and85
  store i32 %or86, i32* %c, align 4
  %66 = load i8, i8* %cChar0, align 1
  %conv87 = zext i8 %66 to i32
  %and88 = and i32 %conv87, 248
  %cmp89 = icmp eq i32 %and88, 240
  br i1 %cmp89, label %lor.lhs.false90, label %if.then102

lor.lhs.false90:                                  ; preds = %if.then69
  %67 = load i8, i8* %cChar1, align 1
  %conv91 = zext i8 %67 to i32
  %and92 = and i32 %conv91, 192
  %cmp93 = icmp eq i32 %and92, 128
  br i1 %cmp93, label %lor.lhs.false94, label %if.then102

lor.lhs.false94:                                  ; preds = %lor.lhs.false90
  %68 = load i8, i8* %cChar2, align 1
  %conv95 = zext i8 %68 to i32
  %and96 = and i32 %conv95, 192
  %cmp97 = icmp eq i32 %and96, 128
  br i1 %cmp97, label %lor.lhs.false98, label %if.then102

lor.lhs.false98:                                  ; preds = %lor.lhs.false94
  %69 = load i32, i32* %c, align 4
  %cmp99 = icmp uge i32 %69, 65536
  br i1 %cmp99, label %land.lhs.true100, label %if.then102

land.lhs.true100:                                 ; preds = %lor.lhs.false98
  %70 = load i32, i32* %c, align 4
  %cmp101 = icmp ule i32 %70, 1114111
  br i1 %cmp101, label %if.end103, label %if.then102

if.then102:                                       ; preds = %land.lhs.true100, %lor.lhs.false98, %lor.lhs.false94, %lor.lhs.false90, %if.then69
  store i8 0, i8* %success, align 1
  br label %Failure

if.end103:                                        ; preds = %land.lhs.true100
  br label %if.end105

if.else104:                                       ; preds = %if.then66
  store i8 0, i8* %success, align 1
  br label %Failure

if.end105:                                        ; preds = %if.end103
  br label %if.end129

if.else106:                                       ; preds = %if.else62
  %71 = load i8, i8* %cChar0, align 1
  %conv107 = zext i8 %71 to i32
  %and108 = and i32 %conv107, 252
  %cmp109 = icmp eq i32 %and108, 248
  br i1 %cmp109, label %if.then110, label %if.else116

if.then110:                                       ; preds = %if.else106
  %72 = load i8**, i8*** %p.addr, align 8
  %73 = load i8*, i8** %72, align 8
  %add.ptr111 = getelementptr inbounds i8, i8* %73, i64 4
  store i8* %add.ptr111, i8** %pNext, align 8
  %74 = load i8*, i8** %pNext, align 8
  %75 = load i8*, i8** %pEnd.addr, align 8
  %cmp112 = icmp ule i8* %74, %75
  br i1 %cmp112, label %if.then113, label %if.else114

if.then113:                                       ; preds = %if.then110
  br label %if.end115

if.else114:                                       ; preds = %if.then110
  store i8 0, i8* %success, align 1
  br label %Failure

if.end115:                                        ; preds = %if.then113
  br label %if.end128

if.else116:                                       ; preds = %if.else106
  %76 = load i8, i8* %cChar0, align 1
  %conv117 = zext i8 %76 to i32
  %and118 = and i32 %conv117, 254
  %cmp119 = icmp eq i32 %and118, 252
  br i1 %cmp119, label %if.then120, label %if.else126

if.then120:                                       ; preds = %if.else116
  %77 = load i8**, i8*** %p.addr, align 8
  %78 = load i8*, i8** %77, align 8
  %add.ptr121 = getelementptr inbounds i8, i8* %78, i64 5
  store i8* %add.ptr121, i8** %pNext, align 8
  %79 = load i8*, i8** %pNext, align 8
  %80 = load i8*, i8** %pEnd.addr, align 8
  %cmp122 = icmp ule i8* %79, %80
  br i1 %cmp122, label %if.then123, label %if.else124

if.then123:                                       ; preds = %if.then120
  br label %if.end125

if.else124:                                       ; preds = %if.then120
  store i8 0, i8* %success, align 1
  br label %Failure

if.end125:                                        ; preds = %if.then123
  br label %if.end127

if.else126:                                       ; preds = %if.else116
  store i8 0, i8* %success, align 1
  br label %Failure

if.end127:                                        ; preds = %if.end125
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.end115
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.end105
  br label %if.end130

if.end130:                                        ; preds = %if.end129, %if.end61
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %if.end26
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %if.then2
  br label %if.end134

if.else133:                                       ; preds = %entry
  store i8 0, i8* %success, align 1
  br label %if.end134

if.end134:                                        ; preds = %if.else133, %if.end132
  br label %Failure

Failure:                                          ; preds = %if.end134, %if.else126, %if.else124, %if.else114, %if.else104, %if.then102, %if.else60, %if.then58, %if.else25, %if.then23, %if.then6
  %81 = load i8, i8* %success, align 1
  %tobool = trunc i8 %81 to i1
  br i1 %tobool, label %if.then135, label %if.else136

if.then135:                                       ; preds = %Failure
  %82 = load i8*, i8** %pNext, align 8
  %83 = load i8**, i8*** %p.addr, align 8
  store i8* %82, i8** %83, align 8
  %84 = load i32, i32* %c, align 4
  %85 = load i32*, i32** %result.addr, align 8
  store i32 %84, i32* %85, align 4
  br label %if.end138

if.else136:                                       ; preds = %Failure
  %86 = load i8**, i8*** %p.addr, align 8
  %87 = load i8*, i8** %86, align 8
  %add.ptr137 = getelementptr inbounds i8, i8* %87, i64 1
  %88 = load i8**, i8*** %p.addr, align 8
  store i8* %add.ptr137, i8** %88, align 8
  %89 = load i32*, i32** %result.addr, align 8
  store i32 65535, i32* %89, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.else136, %if.then135
  %90 = load i8, i8* %success, align 1
  %tobool139 = trunc i8 %90 to i1
  ret i1 %tobool139
}

; Function Attrs: nounwind uwtable
define zeroext i1 @"\01?UTF8ToUCS2@eastl@@YA_NAEAPEBDPEBDAEAG@Z"(i8** dereferenceable(8) %p, i8* %pEnd, i16* dereferenceable(2) %result) #0 {
entry:
  %retval = alloca i1, align 1
  %result.addr = alloca i16*, align 8
  %pEnd.addr = alloca i8*, align 8
  %p.addr = alloca i8**, align 8
  %u32 = alloca i32, align 4
  store i16* %result, i16** %result.addr, align 8
  store i8* %pEnd, i8** %pEnd.addr, align 8
  store i8** %p, i8*** %p.addr, align 8
  %0 = load i8*, i8** %pEnd.addr, align 8
  %1 = load i8**, i8*** %p.addr, align 8
  %call = call zeroext i1 @"\01?UTF8ToUCS4@eastl@@YA_NAEAPEBDPEBDAEAI@Z"(i8** dereferenceable(8) %1, i8* %0, i32* dereferenceable(4) %u32)
  br i1 %call, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %u32, align 4
  %cmp = icmp ule i32 %2, 65535
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %3 = load i32, i32* %u32, align 4
  %conv = trunc i32 %3 to i16
  %4 = load i16*, i16** %result.addr, align 8
  store i16 %conv, i16* %4, align 2
  store i1 true, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry
  %5 = load i16*, i16** %result.addr, align 8
  store i16 -1, i16* %5, align 2
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end2, %if.then1
  %6 = load i1, i1* %retval, align 1
  ret i1 %6
}

; Function Attrs: nounwind uwtable
define zeroext i1 @"\01?DecodePart@eastl@@YA_NAEAPEBDPEBDAEAPEADPEAD@Z"(i8** dereferenceable(8) %pSrc, i8* %pSrcEnd, i8** dereferenceable(8) %pDest, i8* %pDestEnd) #0 {
entry:
  %pDestEnd.addr = alloca i8*, align 8
  %pDest.addr = alloca i8**, align 8
  %pSrcEnd.addr = alloca i8*, align 8
  %pSrc.addr = alloca i8**, align 8
  %sourceSize = alloca i32, align 4
  %destSize = alloca i32, align 4
  store i8* %pDestEnd, i8** %pDestEnd.addr, align 8
  store i8** %pDest, i8*** %pDest.addr, align 8
  store i8* %pSrcEnd, i8** %pSrcEnd.addr, align 8
  store i8** %pSrc, i8*** %pSrc.addr, align 8
  %0 = load i8*, i8** %pSrcEnd.addr, align 8
  %1 = load i8**, i8*** %pSrc.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %sourceSize, align 4
  %3 = load i8*, i8** %pDestEnd.addr, align 8
  %4 = load i8**, i8*** %pDest.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %sub.ptr.lhs.cast1 = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast2 = ptrtoint i8* %5 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %conv4 = trunc i64 %sub.ptr.sub3 to i32
  store i32 %conv4, i32* %destSize, align 4
  %6 = load i32, i32* %sourceSize, align 4
  %7 = load i32, i32* %destSize, align 4
  %cmp = icmp ugt i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %destSize, align 4
  store i32 %8, i32* %sourceSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8**, i8*** %pDest.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8**, i8*** %pSrc.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i32, i32* %sourceSize, align 4
  %conv5 = zext i32 %13 to i64
  %mul = mul i64 %conv5, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %10, i8* %12, i64 %mul, i32 1, i1 false)
  %14 = load i32, i32* %sourceSize, align 4
  %15 = load i8**, i8*** %pSrc.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %idx.ext = zext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr, i8** %15, align 8
  %17 = load i32, i32* %sourceSize, align 4
  %18 = load i8**, i8*** %pDest.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %idx.ext6 = zext i32 %17 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %19, i64 %idx.ext6
  store i8* %add.ptr7, i8** %18, align 8
  ret i1 true
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @"\01?DecodePart@eastl@@YA_NAEAPEBDPEBDAEAPEAEPEAE@Z"(i8** dereferenceable(8) %pSrc, i8* %pSrcEnd, i8** dereferenceable(8) %pDest, i8* %pDestEnd) #0 {
entry:
  %pDestEnd.addr = alloca i8*, align 8
  %pDest.addr = alloca i8**, align 8
  %pSrcEnd.addr = alloca i8*, align 8
  %pSrc.addr = alloca i8**, align 8
  %success = alloca i8, align 1
  store i8* %pDestEnd, i8** %pDestEnd.addr, align 8
  store i8** %pDest, i8*** %pDest.addr, align 8
  store i8* %pSrcEnd, i8** %pSrcEnd.addr, align 8
  store i8** %pSrc, i8*** %pSrc.addr, align 8
  store i8 1, i8* %success, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8, i8* %success, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %1 = load i8**, i8*** %pSrc.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = load i8*, i8** %pSrcEnd.addr, align 8
  %cmp = icmp ult i8* %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load i8**, i8*** %pDest.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8*, i8** %pDestEnd.addr, align 8
  %cmp1 = icmp ult i8* %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i8**, i8*** %pDest.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %8, align 8
  %10 = bitcast i8* %9 to i16*
  %11 = load i8*, i8** %pSrcEnd.addr, align 8
  %12 = load i8**, i8*** %pSrc.addr, align 8
  %call = call zeroext i1 @"\01?UTF8ToUCS2@eastl@@YA_NAEAPEBDPEBDAEAG@Z"(i8** dereferenceable(8) %12, i8* %11, i16* dereferenceable(2) %10)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %success, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load i8, i8* %success, align 1
  %tobool2 = trunc i8 %13 to i1
  ret i1 %tobool2
}

; Function Attrs: nounwind uwtable
define zeroext i1 @"\01?DecodePart@eastl@@YA_NAEAPEBDPEBDAEAPEAIPEAI@Z"(i8** dereferenceable(8) %pSrc, i8* %pSrcEnd, i32** dereferenceable(8) %pDest, i32* %pDestEnd) #0 {
entry:
  %pDestEnd.addr = alloca i32*, align 8
  %pDest.addr = alloca i32**, align 8
  %pSrcEnd.addr = alloca i8*, align 8
  %pSrc.addr = alloca i8**, align 8
  %success = alloca i8, align 1
  store i32* %pDestEnd, i32** %pDestEnd.addr, align 8
  store i32** %pDest, i32*** %pDest.addr, align 8
  store i8* %pSrcEnd, i8** %pSrcEnd.addr, align 8
  store i8** %pSrc, i8*** %pSrc.addr, align 8
  store i8 1, i8* %success, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8, i8* %success, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %1 = load i8**, i8*** %pSrc.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = load i8*, i8** %pSrcEnd.addr, align 8
  %cmp = icmp ult i8* %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load i32**, i32*** %pDest.addr, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load i32*, i32** %pDestEnd.addr, align 8
  %cmp1 = icmp ult i32* %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i32**, i32*** %pDest.addr, align 8
  %9 = load i32*, i32** %8, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %incdec.ptr, i32** %8, align 8
  %10 = load i8*, i8** %pSrcEnd.addr, align 8
  %11 = load i8**, i8*** %pSrc.addr, align 8
  %call = call zeroext i1 @"\01?UTF8ToUCS4@eastl@@YA_NAEAPEBDPEBDAEAI@Z"(i8** dereferenceable(8) %11, i8* %10, i32* dereferenceable(4) %9)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %success, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i8, i8* %success, align 1
  %tobool2 = trunc i8 %12 to i1
  ret i1 %tobool2
}

; Function Attrs: nounwind uwtable
define zeroext i1 @"\01?DecodePart@eastl@@YA_NAEAPEBEPEBEAEAPEADPEAD@Z"(i8** dereferenceable(8) %pSrc, i8* %pSrcEnd, i8** dereferenceable(8) %pDest, i8* %pDestEnd) #0 {
entry:
  %pDestEnd.addr = alloca i8*, align 8
  %pDest.addr = alloca i8**, align 8
  %pSrcEnd.addr = alloca i8*, align 8
  %pSrc.addr = alloca i8**, align 8
  %success = alloca i8, align 1
  store i8* %pDestEnd, i8** %pDestEnd.addr, align 8
  store i8** %pDest, i8*** %pDest.addr, align 8
  store i8* %pSrcEnd, i8** %pSrcEnd.addr, align 8
  store i8** %pSrc, i8*** %pSrc.addr, align 8
  store i8 1, i8* %success, align 1
  %0 = load i8*, i8** %pDestEnd.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 -6
  store i8* %add.ptr, i8** %pDestEnd.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8, i8* %success, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i8**, i8*** %pSrc.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i8*, i8** %pSrcEnd.addr, align 8
  %cmp = icmp ult i8* %3, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i8**, i8*** %pDest.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8*, i8** %pDestEnd.addr, align 8
  %cmp1 = icmp ult i8* %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8**, i8*** %pDest.addr, align 8
  %10 = load i8**, i8*** %pSrc.addr, align 8
  %11 = load i8*, i8** %10, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %conv = zext i8 %12 to i16
  %call = call zeroext i1 @"\01?UCS2ToUTF8@eastl@@YA_NGAEAPEAD@Z"(i16 %conv, i8** dereferenceable(8) %9)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %success, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load i8, i8* %success, align 1
  %tobool2 = trunc i8 %13 to i1
  ret i1 %tobool2
}

; Function Attrs: nounwind uwtable
define zeroext i1 @"\01?DecodePart@eastl@@YA_NAEAPEBEPEBEAEAPEAEPEAE@Z"(i8** dereferenceable(8) %pSrc, i8* %pSrcEnd, i8** dereferenceable(8) %pDest, i8* %pDestEnd) #0 {
entry:
  %pDestEnd.addr = alloca i8*, align 8
  %pDest.addr = alloca i8**, align 8
  %pSrcEnd.addr = alloca i8*, align 8
  %pSrc.addr = alloca i8**, align 8
  %sourceSize = alloca i32, align 4
  %destSize = alloca i32, align 4
  store i8* %pDestEnd, i8** %pDestEnd.addr, align 8
  store i8** %pDest, i8*** %pDest.addr, align 8
  store i8* %pSrcEnd, i8** %pSrcEnd.addr, align 8
  store i8** %pSrc, i8*** %pSrc.addr, align 8
  %0 = load i8*, i8** %pSrcEnd.addr, align 8
  %1 = load i8**, i8*** %pSrc.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %sourceSize, align 4
  %3 = load i8*, i8** %pDestEnd.addr, align 8
  %4 = load i8**, i8*** %pDest.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %sub.ptr.lhs.cast1 = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast2 = ptrtoint i8* %5 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %conv4 = trunc i64 %sub.ptr.sub3 to i32
  store i32 %conv4, i32* %destSize, align 4
  %6 = load i32, i32* %sourceSize, align 4
  %7 = load i32, i32* %destSize, align 4
  %cmp = icmp ugt i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %destSize, align 4
  store i32 %8, i32* %sourceSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8**, i8*** %pDest.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8**, i8*** %pSrc.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i32, i32* %sourceSize, align 4
  %conv5 = zext i32 %13 to i64
  %mul = mul i64 %conv5, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %10, i8* %12, i64 %mul, i32 1, i1 false)
  %14 = load i32, i32* %sourceSize, align 4
  %15 = load i8**, i8*** %pSrc.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %idx.ext = zext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr, i8** %15, align 8
  %17 = load i32, i32* %sourceSize, align 4
  %18 = load i8**, i8*** %pDest.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %idx.ext6 = zext i32 %17 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %19, i64 %idx.ext6
  store i8* %add.ptr7, i8** %18, align 8
  ret i1 true
}

; Function Attrs: nounwind uwtable
define zeroext i1 @"\01?DecodePart@eastl@@YA_NAEAPEBEPEBEAEAPEAIPEAI@Z"(i8** dereferenceable(8) %pSrc, i8* %pSrcEnd, i32** dereferenceable(8) %pDest, i32* %pDestEnd) #0 {
entry:
  %pDestEnd.addr = alloca i32*, align 8
  %pDest.addr = alloca i32**, align 8
  %pSrcEnd.addr = alloca i8*, align 8
  %pSrc.addr = alloca i8**, align 8
  %sourceSize = alloca i32, align 4
  %destSize = alloca i32, align 4
  store i32* %pDestEnd, i32** %pDestEnd.addr, align 8
  store i32** %pDest, i32*** %pDest.addr, align 8
  store i8* %pSrcEnd, i8** %pSrcEnd.addr, align 8
  store i8** %pSrc, i8*** %pSrc.addr, align 8
  %0 = load i8*, i8** %pSrcEnd.addr, align 8
  %1 = load i8**, i8*** %pSrc.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %sourceSize, align 4
  %3 = load i32*, i32** %pDestEnd.addr, align 8
  %4 = load i32**, i32*** %pDest.addr, align 8
  %5 = load i32*, i32** %4, align 8
  %sub.ptr.lhs.cast1 = ptrtoint i32* %3 to i64
  %sub.ptr.rhs.cast2 = ptrtoint i32* %5 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub3, 4
  %conv4 = trunc i64 %sub.ptr.div to i32
  store i32 %conv4, i32* %destSize, align 4
  %6 = load i32, i32* %sourceSize, align 4
  %7 = load i32, i32* %destSize, align 4
  %cmp = icmp ugt i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i8**, i8*** %pSrc.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i32, i32* %destSize, align 4
  %idx.ext = zext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %pSrcEnd.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %11 = load i8**, i8*** %pSrc.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i8*, i8** %pSrcEnd.addr, align 8
  %cmp5 = icmp ne i8* %12, %13
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i8**, i8*** %pSrc.addr, align 8
  %15 = load i8*, i8** %14, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %conv6 = zext i8 %16 to i32
  %17 = load i32**, i32*** %pDest.addr, align 8
  %18 = load i32*, i32** %17, align 8
  %incdec.ptr7 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %incdec.ptr7, i32** %17, align 8
  store i32 %conv6, i32* %18, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i1 true
}

; Function Attrs: nounwind uwtable
define zeroext i1 @"\01?DecodePart@eastl@@YA_NAEAPEBIPEBIAEAPEADPEAD@Z"(i32** dereferenceable(8) %pSrc, i32* %pSrcEnd, i8** dereferenceable(8) %pDest, i8* %pDestEnd) #0 {
entry:
  %pDestEnd.addr = alloca i8*, align 8
  %pDest.addr = alloca i8**, align 8
  %pSrcEnd.addr = alloca i32*, align 8
  %pSrc.addr = alloca i32**, align 8
  %success = alloca i8, align 1
  store i8* %pDestEnd, i8** %pDestEnd.addr, align 8
  store i8** %pDest, i8*** %pDest.addr, align 8
  store i32* %pSrcEnd, i32** %pSrcEnd.addr, align 8
  store i32** %pSrc, i32*** %pSrc.addr, align 8
  store i8 1, i8* %success, align 1
  %0 = load i8*, i8** %pDestEnd.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 -6
  store i8* %add.ptr, i8** %pDestEnd.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8, i8* %success, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32**, i32*** %pSrc.addr, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32*, i32** %pSrcEnd.addr, align 8
  %cmp = icmp ult i32* %3, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i8**, i8*** %pDest.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8*, i8** %pDestEnd.addr, align 8
  %cmp1 = icmp ult i8* %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8**, i8*** %pDest.addr, align 8
  %10 = load i32**, i32*** %pSrc.addr, align 8
  %11 = load i32*, i32** %10, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %incdec.ptr, i32** %10, align 8
  %12 = load i32, i32* %11, align 4
  %call = call zeroext i1 @"\01?UCS4ToUTF8@eastl@@YA_NIAEAPEAD@Z"(i32 %12, i8** dereferenceable(8) %9)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %success, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load i8, i8* %success, align 1
  %tobool2 = trunc i8 %13 to i1
  ret i1 %tobool2
}

; Function Attrs: nounwind uwtable
define zeroext i1 @"\01?DecodePart@eastl@@YA_NAEAPEBIPEBIAEAPEAEPEAE@Z"(i32** dereferenceable(8) %pSrc, i32* %pSrcEnd, i8** dereferenceable(8) %pDest, i8* %pDestEnd) #0 {
entry:
  %pDestEnd.addr = alloca i8*, align 8
  %pDest.addr = alloca i8**, align 8
  %pSrcEnd.addr = alloca i32*, align 8
  %pSrc.addr = alloca i32**, align 8
  %sourceSize = alloca i32, align 4
  %destSize = alloca i32, align 4
  store i8* %pDestEnd, i8** %pDestEnd.addr, align 8
  store i8** %pDest, i8*** %pDest.addr, align 8
  store i32* %pSrcEnd, i32** %pSrcEnd.addr, align 8
  store i32** %pSrc, i32*** %pSrc.addr, align 8
  %0 = load i32*, i32** %pSrcEnd.addr, align 8
  %1 = load i32**, i32*** %pSrc.addr, align 8
  %2 = load i32*, i32** %1, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %sourceSize, align 4
  %3 = load i8*, i8** %pDestEnd.addr, align 8
  %4 = load i8**, i8*** %pDest.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %sub.ptr.lhs.cast1 = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast2 = ptrtoint i8* %5 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %conv4 = trunc i64 %sub.ptr.sub3 to i32
  store i32 %conv4, i32* %destSize, align 4
  %6 = load i32, i32* %sourceSize, align 4
  %7 = load i32, i32* %destSize, align 4
  %cmp = icmp ugt i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32**, i32*** %pSrc.addr, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %destSize, align 4
  %idx.ext = zext i32 %10 to i64
  %add.ptr = getelementptr inbounds i32, i32* %9, i64 %idx.ext
  store i32* %add.ptr, i32** %pSrcEnd.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %11 = load i32**, i32*** %pSrc.addr, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = load i32*, i32** %pSrcEnd.addr, align 8
  %cmp5 = icmp ne i32* %12, %13
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32**, i32*** %pSrc.addr, align 8
  %15 = load i32*, i32** %14, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %incdec.ptr, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %conv6 = trunc i32 %16 to i8
  %17 = load i8**, i8*** %pDest.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr7, i8** %17, align 8
  store i8 %conv6, i8* %18, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i1 true
}

; Function Attrs: nounwind uwtable
define zeroext i1 @"\01?DecodePart@eastl@@YA_NAEAPEBIPEBIAEAPEAIPEAI@Z"(i32** dereferenceable(8) %pSrc, i32* %pSrcEnd, i32** dereferenceable(8) %pDest, i32* %pDestEnd) #0 {
entry:
  %pDestEnd.addr = alloca i32*, align 8
  %pDest.addr = alloca i32**, align 8
  %pSrcEnd.addr = alloca i32*, align 8
  %pSrc.addr = alloca i32**, align 8
  %sourceSize = alloca i32, align 4
  %destSize = alloca i32, align 4
  store i32* %pDestEnd, i32** %pDestEnd.addr, align 8
  store i32** %pDest, i32*** %pDest.addr, align 8
  store i32* %pSrcEnd, i32** %pSrcEnd.addr, align 8
  store i32** %pSrc, i32*** %pSrc.addr, align 8
  %0 = load i32*, i32** %pSrcEnd.addr, align 8
  %1 = load i32**, i32*** %pSrc.addr, align 8
  %2 = load i32*, i32** %1, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %sourceSize, align 4
  %3 = load i32*, i32** %pDestEnd.addr, align 8
  %4 = load i32**, i32*** %pDest.addr, align 8
  %5 = load i32*, i32** %4, align 8
  %sub.ptr.lhs.cast1 = ptrtoint i32* %3 to i64
  %sub.ptr.rhs.cast2 = ptrtoint i32* %5 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 4
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %destSize, align 4
  %6 = load i32, i32* %sourceSize, align 4
  %7 = load i32, i32* %destSize, align 4
  %cmp = icmp ugt i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %destSize, align 4
  store i32 %8, i32* %sourceSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32**, i32*** %pDest.addr, align 8
  %10 = load i32*, i32** %9, align 8
  %11 = bitcast i32* %10 to i8*
  %12 = load i32**, i32*** %pSrc.addr, align 8
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = load i32, i32* %sourceSize, align 4
  %conv6 = zext i32 %15 to i64
  %mul = mul i64 %conv6, 4
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %11, i8* %14, i64 %mul, i32 4, i1 false)
  %16 = load i32, i32* %sourceSize, align 4
  %17 = load i32**, i32*** %pSrc.addr, align 8
  %18 = load i32*, i32** %17, align 8
  %idx.ext = zext i32 %16 to i64
  %add.ptr = getelementptr inbounds i32, i32* %18, i64 %idx.ext
  store i32* %add.ptr, i32** %17, align 8
  %19 = load i32, i32* %sourceSize, align 4
  %20 = load i32**, i32*** %pDest.addr, align 8
  %21 = load i32*, i32** %20, align 8
  %idx.ext7 = zext i32 %19 to i64
  %add.ptr8 = getelementptr inbounds i32, i32* %21, i64 %idx.ext7
  store i32* %add.ptr8, i32** %20, align 8
  ret i1 true
}

; Function Attrs: nounwind uwtable
define zeroext i1 @"\01?DecodePart@eastl@@YA_NAEAPEBHPEBHAEAPEADPEAD@Z"(i32** dereferenceable(8) %pSrc, i32* %pSrcEnd, i8** dereferenceable(8) %pDest, i8* %pDestEnd) #0 {
entry:
  %pDestEnd.addr = alloca i8*, align 8
  %pDest.addr = alloca i8**, align 8
  %pSrcEnd.addr = alloca i32*, align 8
  %pSrc.addr = alloca i32**, align 8
  %success = alloca i8, align 1
  store i8* %pDestEnd, i8** %pDestEnd.addr, align 8
  store i8** %pDest, i8*** %pDest.addr, align 8
  store i32* %pSrcEnd, i32** %pSrcEnd.addr, align 8
  store i32** %pSrc, i32*** %pSrc.addr, align 8
  store i8 1, i8* %success, align 1
  %0 = load i8*, i8** %pDestEnd.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 -6
  store i8* %add.ptr, i8** %pDestEnd.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8, i8* %success, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32**, i32*** %pSrc.addr, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32*, i32** %pSrcEnd.addr, align 8
  %cmp = icmp ult i32* %3, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i8**, i8*** %pDest.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8*, i8** %pDestEnd.addr, align 8
  %cmp1 = icmp ult i8* %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8**, i8*** %pDest.addr, align 8
  %10 = load i32**, i32*** %pSrc.addr, align 8
  %11 = load i32*, i32** %10, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %incdec.ptr, i32** %10, align 8
  %12 = load i32, i32* %11, align 4
  %call = call zeroext i1 @"\01?UCS4ToUTF8@eastl@@YA_NIAEAPEAD@Z"(i32 %12, i8** dereferenceable(8) %9)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %success, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load i8, i8* %success, align 1
  %tobool2 = trunc i8 %13 to i1
  ret i1 %tobool2
}

; Function Attrs: nounwind uwtable
define zeroext i1 @"\01?DecodePart@eastl@@YA_NAEAPEBHPEBHAEAPEAEPEAE@Z"(i32** dereferenceable(8) %pSrc, i32* %pSrcEnd, i8** dereferenceable(8) %pDest, i8* %pDestEnd) #0 {
entry:
  %pDestEnd.addr = alloca i8*, align 8
  %pDest.addr = alloca i8**, align 8
  %pSrcEnd.addr = alloca i32*, align 8
  %pSrc.addr = alloca i32**, align 8
  %sourceSize = alloca i32, align 4
  %destSize = alloca i32, align 4
  store i8* %pDestEnd, i8** %pDestEnd.addr, align 8
  store i8** %pDest, i8*** %pDest.addr, align 8
  store i32* %pSrcEnd, i32** %pSrcEnd.addr, align 8
  store i32** %pSrc, i32*** %pSrc.addr, align 8
  %0 = load i32*, i32** %pSrcEnd.addr, align 8
  %1 = load i32**, i32*** %pSrc.addr, align 8
  %2 = load i32*, i32** %1, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %sourceSize, align 4
  %3 = load i8*, i8** %pDestEnd.addr, align 8
  %4 = load i8**, i8*** %pDest.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %sub.ptr.lhs.cast1 = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast2 = ptrtoint i8* %5 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %conv4 = trunc i64 %sub.ptr.sub3 to i32
  store i32 %conv4, i32* %destSize, align 4
  %6 = load i32, i32* %sourceSize, align 4
  %7 = load i32, i32* %destSize, align 4
  %cmp = icmp ugt i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32**, i32*** %pSrc.addr, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %destSize, align 4
  %idx.ext = zext i32 %10 to i64
  %add.ptr = getelementptr inbounds i32, i32* %9, i64 %idx.ext
  store i32* %add.ptr, i32** %pSrcEnd.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %11 = load i32**, i32*** %pSrc.addr, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = load i32*, i32** %pSrcEnd.addr, align 8
  %cmp5 = icmp ne i32* %12, %13
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32**, i32*** %pSrc.addr, align 8
  %15 = load i32*, i32** %14, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %incdec.ptr, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %conv6 = trunc i32 %16 to i8
  %17 = load i8**, i8*** %pDest.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr7, i8** %17, align 8
  store i8 %conv6, i8* %18, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i1 true
}

; Function Attrs: nounwind uwtable
define zeroext i1 @"\01?DecodePart@eastl@@YA_NAEAPEBHPEBHAEAPEAIPEAI@Z"(i32** dereferenceable(8) %pSrc, i32* %pSrcEnd, i32** dereferenceable(8) %pDest, i32* %pDestEnd) #0 {
entry:
  %pDestEnd.addr = alloca i32*, align 8
  %pDest.addr = alloca i32**, align 8
  %pSrcEnd.addr = alloca i32*, align 8
  %pSrc.addr = alloca i32**, align 8
  %sourceSize = alloca i32, align 4
  %destSize = alloca i32, align 4
  store i32* %pDestEnd, i32** %pDestEnd.addr, align 8
  store i32** %pDest, i32*** %pDest.addr, align 8
  store i32* %pSrcEnd, i32** %pSrcEnd.addr, align 8
  store i32** %pSrc, i32*** %pSrc.addr, align 8
  %0 = load i32*, i32** %pSrcEnd.addr, align 8
  %1 = load i32**, i32*** %pSrc.addr, align 8
  %2 = load i32*, i32** %1, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %sourceSize, align 4
  %3 = load i32*, i32** %pDestEnd.addr, align 8
  %4 = load i32**, i32*** %pDest.addr, align 8
  %5 = load i32*, i32** %4, align 8
  %sub.ptr.lhs.cast1 = ptrtoint i32* %3 to i64
  %sub.ptr.rhs.cast2 = ptrtoint i32* %5 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 4
  %conv5 = trunc i64 %sub.ptr.div4 to i32
  store i32 %conv5, i32* %destSize, align 4
  %6 = load i32, i32* %sourceSize, align 4
  %7 = load i32, i32* %destSize, align 4
  %cmp = icmp ugt i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32**, i32*** %pSrc.addr, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %destSize, align 4
  %idx.ext = zext i32 %10 to i64
  %add.ptr = getelementptr inbounds i32, i32* %9, i64 %idx.ext
  store i32* %add.ptr, i32** %pSrcEnd.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %11 = load i32**, i32*** %pSrc.addr, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = load i32*, i32** %pSrcEnd.addr, align 8
  %cmp6 = icmp ne i32* %12, %13
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32**, i32*** %pSrc.addr, align 8
  %15 = load i32*, i32** %14, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %incdec.ptr, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32**, i32*** %pDest.addr, align 8
  %18 = load i32*, i32** %17, align 8
  %incdec.ptr7 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %incdec.ptr7, i32** %17, align 8
  store i32 %16, i32* %18, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i1 true
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.8.0 (branches/release_38)"}
