.class public Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final SIGNAL_DEFAULT:Ljava/lang/String; = "0"

.field private static final SIGNAL_DEFAULT_BYTE_STRING:Lcom/google/firebase/crashlytics/internal/proto/ByteString;

.field private static final UNITY_PLATFORM_BYTE_STRING:Lcom/google/firebase/crashlytics/internal/proto/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0"

    .line 31
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    const-string v0, "Unity"

    .line 33
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->UNITY_PLATFORM_BYTE_STRING:Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBinaryImageSize(Lcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;)I
    .locals 4

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    .line 582
    invoke-static {v2, v0, v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    const/4 v3, 0x2

    .line 583
    invoke-static {v3, v0, v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int/2addr v2, v0

    const/4 v0, 0x3

    .line 584
    invoke-static {v0, p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result p0

    add-int/2addr v2, p0

    if-eqz p1, :cond_0

    const/4 p0, 0x4

    .line 586
    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result p0

    add-int/2addr v2, p0

    :cond_0
    return v2
.end method

.method private static getEventAppCustomAttributeSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 759
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result p0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 761
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static getEventAppExecutionExceptionSize(Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;II)I
    .locals 9

    .line 795
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;->className:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result v0

    const/4 v2, 0x0

    add-int/2addr v0, v2

    .line 798
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;->localizedMessage:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v4, 0x3

    .line 800
    invoke-static {v3}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    .line 803
    :cond_0
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;->stacktrace:[Ljava/lang/StackTraceElement;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 804
    invoke-static {v6, v1}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getFrameSize(Ljava/lang/StackTraceElement;Z)I

    move-result v6

    const/4 v7, 0x4

    .line 806
    invoke-static {v7}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result v7

    .line 807
    invoke-static {v6}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    add-int/2addr v0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 813
    :cond_1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;->cause:Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;

    if-eqz p0, :cond_4

    if-ge p1, p2, :cond_2

    add-int/2addr p1, v1

    .line 817
    invoke-static {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getEventAppExecutionExceptionSize(Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;II)I

    move-result p0

    const/4 p1, 0x6

    .line 819
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result p1

    .line 820
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p0

    add-int/2addr v0, p1

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    .line 827
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;->cause:Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x7

    .line 831
    invoke-static {p0, v2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeUInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_4
    :goto_2
    return v0
.end method

.method private static getEventAppExecutionSignalSize()I
    .locals 4

    .line 841
    sget-object v0, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 842
    sget-object v1, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    .line 843
    invoke-static {v1, v2, v3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getEventAppExecutionSize(Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Lcom/google/firebase/crashlytics/internal/proto/ByteString;",
            "Lcom/google/firebase/crashlytics/internal/proto/ByteString;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 720
    invoke-static {p1, p2, v1, v0}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getThreadSize(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result p1

    .line 722
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result p2

    .line 723
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr p2, v1

    add-int/2addr p2, p1

    const/4 p1, 0x0

    add-int/2addr p2, p1

    .line 726
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 728
    aget-object v3, p3, v2

    .line 729
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    invoke-static {v3, v4, p1, p1}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getThreadSize(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v3

    .line 731
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    .line 732
    invoke-static {v3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr p2, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 737
    :cond_0
    invoke-static {p0, v0, p5}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getEventAppExecutionExceptionSize(Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;II)I

    move-result p0

    const/4 p1, 0x2

    .line 739
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result p1

    .line 740
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p3

    add-int/2addr p1, p3

    add-int/2addr p1, p0

    add-int/2addr p2, p1

    .line 743
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getEventAppExecutionSignalSize()I

    move-result p0

    const/4 p1, 0x3

    .line 745
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result p3

    .line 746
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p4

    add-int/2addr p3, p4

    add-int/2addr p3, p0

    add-int/2addr p2, p3

    .line 749
    invoke-static {p6, p7}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getBinaryImageSize(Lcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result p0

    .line 751
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result p1

    .line 752
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p3

    add-int/2addr p1, p3

    add-int/2addr p1, p0

    add-int/2addr p2, p1

    return p2
.end method

.method private static getEventAppSize(Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Lcom/google/firebase/crashlytics/internal/proto/ByteString;",
            "Lcom/google/firebase/crashlytics/internal/proto/ByteString;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "I)I"
        }
    .end annotation

    .line 672
    invoke-static/range {p0 .. p7}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getEventAppExecutionSize(Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result p0

    const/4 p1, 0x1

    .line 682
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result p2

    .line 683
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p3

    add-int/2addr p2, p3

    add-int/2addr p2, p0

    const/4 p0, 0x0

    add-int/2addr p2, p0

    if-eqz p8, :cond_0

    .line 687
    invoke-interface {p8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 688
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {p5, p4}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getEventAppCustomAttributeSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    const/4 p5, 0x2

    .line 690
    invoke-static {p5}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result p5

    .line 691
    invoke-static {p4}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result p6

    add-int/2addr p5, p6

    add-int/2addr p5, p4

    add-int/2addr p2, p5

    goto :goto_0

    :cond_0
    if-eqz p9, :cond_2

    const/4 p3, 0x3

    .line 698
    iget p4, p9, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 p5, 0x64

    if-eq p4, p5, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 699
    :goto_1
    invoke-static {p3, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr p2, p0

    :cond_2
    const/4 p0, 0x4

    .line 704
    invoke-static {p0, p10}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeUInt32Size(II)I

    move-result p0

    add-int/2addr p2, p0

    return p2
.end method

.method private static getEventDeviceSize(Ljava/lang/Float;IZIJJ)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 775
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {v1, p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeFloatSize(IF)I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    const/4 p0, 0x2

    .line 777
    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeSInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 778
    invoke-static {p0, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x4

    .line 779
    invoke-static {p0, p3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeUInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x5

    .line 780
    invoke-static {p0, p4, p5}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x6

    .line 781
    invoke-static {p0, p6, p7}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static getEventLogSize(Lcom/google/firebase/crashlytics/internal/proto/ByteString;)I
    .locals 1

    const/4 v0, 0x1

    .line 788
    invoke-static {v0, p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result p0

    return p0
.end method

.method private static getFrameSize(Ljava/lang/StackTraceElement;Z)I
    .locals 6

    .line 851
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 853
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v3, v0

    invoke-static {v1, v3, v4}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 855
    invoke-static {v1, v3, v4}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 860
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object v1

    const/4 v3, 0x2

    .line 859
    invoke-static {v3, v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 862
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 863
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 866
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x4

    .line 868
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    int-to-long v4, p0

    invoke-static {v1, v4, v5}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_2
    const/4 p0, 0x5

    if-eqz p1, :cond_3

    const/4 v2, 0x2

    .line 870
    :cond_3
    invoke-static {p0, v2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeUInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static getSessionAppSize(Lcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I
    .locals 1

    const/4 v0, 0x1

    .line 527
    invoke-static {v0, p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result p0

    add-int/lit8 p0, p0, 0x0

    const/4 v0, 0x2

    .line 528
    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result p1

    add-int/2addr p0, p1

    const/4 p1, 0x3

    .line 529
    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result p1

    add-int/2addr p0, p1

    const/4 p1, 0x6

    .line 530
    invoke-static {p1, p3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result p1

    add-int/2addr p0, p1

    if-eqz p5, :cond_0

    const/16 p1, 0x8

    .line 533
    sget-object p2, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->UNITY_PLATFORM_BYTE_STRING:Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result p1

    add-int/2addr p0, p1

    const/16 p1, 0x9

    .line 534
    invoke-static {p1, p5}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result p1

    add-int/2addr p0, p1

    :cond_0
    const/16 p1, 0xa

    .line 537
    invoke-static {p1, p4}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeEnumSize(II)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static getSessionDeviceSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;IJJZILcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;)I
    .locals 2

    const/4 v0, 0x3

    .line 565
    invoke-static {v0, p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeEnumSize(II)I

    move-result p0

    const/4 v0, 0x0

    add-int/2addr p0, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 566
    invoke-static {v1, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result p1

    :goto_0
    add-int/2addr p0, p1

    const/4 p1, 0x5

    .line 567
    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeUInt32Size(II)I

    move-result p1

    add-int/2addr p0, p1

    const/4 p1, 0x6

    .line 568
    invoke-static {p1, p3, p4}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result p1

    add-int/2addr p0, p1

    const/4 p1, 0x7

    .line 569
    invoke-static {p1, p5, p6}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result p1

    add-int/2addr p0, p1

    const/16 p1, 0xa

    .line 570
    invoke-static {p1, p7}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBoolSize(IZ)I

    move-result p1

    add-int/2addr p0, p1

    const/16 p1, 0xc

    .line 571
    invoke-static {p1, p8}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeUInt32Size(II)I

    move-result p1

    add-int/2addr p0, p1

    if-nez p9, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/16 p1, 0xd

    .line 572
    invoke-static {p1, p9}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result p1

    :goto_1
    add-int/2addr p0, p1

    if-nez p10, :cond_2

    goto :goto_2

    :cond_2
    const/16 p1, 0xe

    .line 573
    invoke-static {p1, p10}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result v0

    :goto_2
    add-int/2addr p0, v0

    return p0
.end method

.method private static getSessionEventSize(JLjava/lang/String;Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILjava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;ILcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;Ljava/lang/Float;IZJJLcom/google/firebase/crashlytics/internal/proto/ByteString;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "I",
            "Lcom/google/firebase/crashlytics/internal/proto/ByteString;",
            "Lcom/google/firebase/crashlytics/internal/proto/ByteString;",
            "Ljava/lang/Float;",
            "IZJJ",
            "Lcom/google/firebase/crashlytics/internal/proto/ByteString;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x1

    move-wide v1, p0

    .line 614
    invoke-static {v0, p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 615
    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    move-object v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p12

    move-object/from16 v8, p13

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    .line 617
    invoke-static/range {v1 .. v11}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getEventAppSize(Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result v1

    const/4 v2, 0x3

    .line 630
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 631
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    move-object/from16 p0, p14

    move/from16 p1, p15

    move/from16 p2, p16

    move/from16 p3, p11

    move-wide/from16 p4, p17

    move-wide/from16 p6, p19

    .line 634
    invoke-static/range {p0 .. p7}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getEventDeviceSize(Ljava/lang/Float;IZIJJ)I

    move-result v1

    const/4 v2, 0x5

    .line 642
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 643
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    if-eqz p21, :cond_0

    .line 647
    invoke-static/range {p21 .. p21}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getEventLogSize(Lcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result v1

    const/4 v2, 0x6

    .line 649
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 650
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_0
    return v0
.end method

.method private static getSessionOSSize(Lcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;Z)I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 545
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    const/4 v2, 0x2

    .line 546
    invoke-static {v2, p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result p0

    add-int/2addr v1, p0

    .line 547
    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result p0

    add-int/2addr v1, p0

    const/4 p0, 0x4

    .line 548
    invoke-static {p0, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method private static getThreadSize(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I
    .locals 4

    .line 880
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result p0

    const/4 v0, 0x2

    .line 881
    invoke-static {v0, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeUInt32Size(II)I

    move-result p2

    add-int/2addr p0, p2

    .line 883
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 884
    invoke-static {v1, p3}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getFrameSize(Ljava/lang/StackTraceElement;Z)I

    move-result v1

    const/4 v2, 0x3

    .line 886
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    .line 887
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    add-int/2addr p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method private static stringToByteString(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 895
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static writeBeginSession(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    .line 41
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    const/4 p1, 0x3

    .line 42
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeUInt64(IJ)V

    return-void
.end method

.method private static writeFrame(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;ILjava/lang/StackTraceElement;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    .line 452
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 453
    invoke-static {p2, p3}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getFrameSize(Ljava/lang/StackTraceElement;Z)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint32(I)V

    .line 455
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 458
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v3, p1

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeUInt64(IJ)V

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 460
    invoke-virtual {p0, v2, v3, v4}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeUInt64(IJ)V

    .line 463
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object p1

    .line 463
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    .line 466
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    .line 467
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    .line 472
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result p1

    const/4 v0, 0x4

    if-nez p1, :cond_2

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    if-lez p1, :cond_2

    .line 473
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeUInt64(IJ)V

    :cond_2
    const/4 p1, 0x5

    if-eqz p3, :cond_3

    const/4 v1, 0x4

    .line 479
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeUInt32(II)V

    return-void
.end method

.method public static writeSessionApp(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object p1

    .line 55
    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object p2

    .line 56
    invoke-static {p3}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object p3

    .line 57
    invoke-static {p4}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object p4

    if-eqz p6, :cond_0

    .line 59
    invoke-static {p6}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object p6

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    const/4 v0, 0x7

    const/4 v6, 0x2

    .line 62
    invoke-virtual {p0, v0, v6}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    .line 64
    invoke-static/range {v0 .. v5}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getSessionAppSize(Lcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result v0

    .line 63
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint32(I)V

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    .line 72
    invoke-virtual {p0, v6, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    const/4 p1, 0x3

    .line 73
    invoke-virtual {p0, p1, p3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    const/4 p1, 0x6

    .line 76
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    if-eqz p6, :cond_1

    const/16 p1, 0x8

    .line 79
    sget-object p2, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->UNITY_PLATFORM_BYTE_STRING:Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    const/16 p1, 0x9

    .line 80
    invoke-virtual {p0, p1, p6}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    :cond_1
    const/16 p1, 0xa

    .line 83
    invoke-virtual {p0, p1, p5}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeEnum(II)V

    return-void
.end method

.method public static writeSessionAppClsId(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 259
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x7

    .line 260
    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 261
    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result v1

    const/4 v2, 0x5

    .line 263
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    .line 264
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    .line 266
    invoke-virtual {p0, v3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint32(I)V

    .line 267
    invoke-virtual {p0, v2, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 268
    invoke-virtual {p0, v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint32(I)V

    .line 269
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    return-void
.end method

.method public static writeSessionDevice(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    .line 112
    invoke-static/range {p2 .. p2}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->stringToByteString(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object v12

    .line 113
    invoke-static/range {p11 .. p11}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->stringToByteString(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object v13

    .line 114
    invoke-static/range {p10 .. p10}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->stringToByteString(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object v14

    const/16 v1, 0x9

    const/4 v2, 0x2

    .line 116
    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    move/from16 v1, p1

    move-object v2, v12

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move-object v10, v14

    move-object v11, v13

    .line 119
    invoke-static/range {v1 .. v11}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getSessionDeviceSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;IJJZILcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result v1

    .line 118
    invoke-virtual {p0, v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint32(I)V

    const/4 v1, 0x3

    move/from16 v2, p1

    .line 132
    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeEnum(II)V

    const/4 v1, 0x4

    .line 133
    invoke-virtual {p0, v1, v12}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    const/4 v1, 0x5

    move/from16 v2, p3

    .line 134
    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeUInt32(II)V

    const/4 v1, 0x6

    move-wide/from16 v2, p4

    .line 135
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeUInt64(IJ)V

    const/4 v1, 0x7

    move-wide/from16 v2, p6

    .line 136
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeUInt64(IJ)V

    const/16 v1, 0xa

    move/from16 v2, p8

    .line 137
    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBool(IZ)V

    const/16 v1, 0xc

    move/from16 v2, p9

    .line 138
    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeUInt32(II)V

    if-eqz v14, :cond_0

    const/16 v1, 0xd

    .line 141
    invoke-virtual {p0, v1, v14}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    :cond_0
    if-eqz v13, :cond_1

    const/16 v1, 0xe

    .line 144
    invoke-virtual {p0, v1, v13}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    :cond_1
    return-void
.end method

.method public static writeSessionEvent(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;JLjava/lang/String;Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILjava/util/Map;[BLandroid/app/ActivityManager$RunningAppProcessInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Float;IZJJ)V
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;",
            "J",
            "Ljava/lang/String;",
            "Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            "IZJJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p15

    .line 198
    invoke-static/range {p14 .. p14}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object v7

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v8, v1

    goto :goto_0

    :cond_0
    const-string v2, "-"

    const-string v3, ""

    .line 200
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object v0

    move-object v8, v0

    :goto_0
    if-eqz p11, :cond_1

    .line 204
    invoke-static/range {p11 .. p11}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFrom([B)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object v1

    goto :goto_1

    .line 206
    :cond_1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    const-string v2, "No log data to include with this event."

    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    :goto_1
    move-object v11, v1

    const/16 v0, 0xa

    const/4 v1, 0x2

    .line 209
    invoke-virtual {v12, v0, v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    move-wide/from16 v13, p1

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    move-object/from16 v20, p8

    move/from16 v21, p9

    move-object/from16 v22, p10

    move-object/from16 v23, p12

    move/from16 v24, p13

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, p16

    move/from16 v28, p17

    move/from16 v29, p18

    move-wide/from16 v30, p19

    move-wide/from16 v32, p21

    move-object/from16 v34, v11

    .line 211
    invoke-static/range {v13 .. v34}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getSessionEventSize(JLjava/lang/String;Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILjava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;ILcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;Ljava/lang/Float;IZJJLcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result v0

    .line 210
    invoke-virtual {v12, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint32(I)V

    const/4 v0, 0x1

    move-wide/from16 v2, p1

    .line 231
    invoke-virtual {v12, v0, v2, v3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeUInt64(IJ)V

    .line 232
    invoke-static/range {p3 .. p3}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object v0

    invoke-virtual {v12, v1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p12

    move-object v13, v11

    move/from16 v11, p13

    .line 234
    invoke-static/range {v0 .. v11}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->writeSessionEventApp(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V

    move-object/from16 p1, p0

    move-object/from16 p2, p16

    move/from16 p3, p17

    move/from16 p4, p18

    move/from16 p5, p13

    move-wide/from16 p6, p19

    move-wide/from16 p8, p21

    .line 247
    invoke-static/range {p1 .. p9}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->writeSessionEventDevice(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Ljava/lang/Float;IZIJJ)V

    .line 255
    invoke-static {v12, v13}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->writeSessionEventLog(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Lcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    return-void
.end method

.method private static writeSessionEventApp(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;",
            "Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Lcom/google/firebase/crashlytics/internal/proto/ByteString;",
            "Lcom/google/firebase/crashlytics/internal/proto/ByteString;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 286
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 288
    invoke-static/range {p1 .. p11}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getEventAppSize(Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result v1

    .line 287
    invoke-virtual {p0, v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint32(I)V

    .line 301
    invoke-static/range {p0 .. p8}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->writeSessionEventAppExecution(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    if-eqz p9, :cond_0

    .line 312
    invoke-interface {p9}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 313
    invoke-static {p0, p9}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->writeSessionEventAppCustomAttributes(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Ljava/util/Map;)V

    :cond_0
    if-eqz p10, :cond_2

    .line 319
    iget p1, p10, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 p2, 0x64

    if-eq p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBool(IZ)V

    :cond_2
    const/4 p1, 0x4

    .line 325
    invoke-virtual {p0, p1, p11}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeUInt32(II)V

    return-void
.end method

.method private static writeSessionEventAppCustomAttributes(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 382
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/4 v1, 0x2

    .line 383
    invoke-virtual {p0, v1, v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 384
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getEventAppCustomAttributeSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint32(I)V

    const/4 v2, 0x1

    .line 386
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    .line 387
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 388
    :cond_0
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static writeSessionEventAppExecution(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;",
            "Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Lcom/google/firebase/crashlytics/internal/proto/ByteString;",
            "Lcom/google/firebase/crashlytics/internal/proto/ByteString;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 339
    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 341
    invoke-static/range {p1 .. p8}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getEventAppExecutionSize(Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result v2

    .line 340
    invoke-virtual {p0, v2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint32(I)V

    const/4 v2, 0x4

    .line 351
    invoke-static {p0, p2, p3, v2, v1}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->writeThread(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    .line 355
    array-length p2, p4

    const/4 p3, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_0

    .line 357
    aget-object v4, p4, v3

    .line 358
    invoke-interface {p5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/StackTraceElement;

    invoke-static {p0, v4, v5, p3, p3}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->writeThread(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 361
    :cond_0
    invoke-static {p0, p1, v1, p6, v0}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->writeSessionEventAppExecutionException(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;III)V

    const/4 p1, 0x3

    .line 363
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 364
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getEventAppExecutionSignalSize()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint32(I)V

    .line 365
    sget-object p2, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    invoke-virtual {p0, v1, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    .line 366
    sget-object p2, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    invoke-virtual {p0, v0, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    const-wide/16 p2, 0x0

    .line 367
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeUInt64(IJ)V

    .line 369
    invoke-virtual {p0, v2, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 370
    invoke-static {p7, p8}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getBinaryImageSize(Lcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint32(I)V

    .line 371
    invoke-virtual {p0, v1, p2, p3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeUInt64(IJ)V

    .line 372
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeUInt64(IJ)V

    .line 373
    invoke-virtual {p0, p1, p7}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    if-eqz p8, :cond_1

    .line 375
    invoke-virtual {p0, v2, p8}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    :cond_1
    return-void
.end method

.method private static writeSessionEventAppExecutionException(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x2

    .line 399
    invoke-virtual {p0, p4, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    const/4 p4, 0x1

    .line 401
    invoke-static {p1, p4, p3}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getEventAppExecutionExceptionSize(Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;II)I

    move-result v0

    .line 400
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint32(I)V

    .line 403
    iget-object v0, p1, Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;->className:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object v0

    invoke-virtual {p0, p4, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    .line 404
    iget-object v0, p1, Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;->localizedMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 406
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    .line 409
    :cond_0
    iget-object v0, p1, Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;->stacktrace:[Ljava/lang/StackTraceElement;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    const/4 v5, 0x4

    .line 410
    invoke-static {p0, v5, v4, p4}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->writeFrame(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;ILjava/lang/StackTraceElement;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 413
    :cond_1
    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;->cause:Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;

    if-eqz p1, :cond_4

    if-ge p2, p3, :cond_2

    add-int/lit8 p2, p2, 0x1

    const/4 p4, 0x6

    goto :goto_0

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 423
    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;->cause:Lcom/google/firebase/crashlytics/internal/stacktrace/TrimmedThrowableData;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x7

    .line 426
    invoke-virtual {p0, p1, v2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeUInt32(II)V

    :cond_4
    return-void
.end method

.method private static writeSessionEventDevice(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Ljava/lang/Float;IZIJJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x5

    .line 491
    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 493
    invoke-static/range {p1 .. p8}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getEventDeviceSize(Ljava/lang/Float;IZIJJ)I

    move-result v2

    .line 492
    invoke-virtual {p0, v2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint32(I)V

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 501
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeFloat(IF)V

    .line 503
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeSInt32(II)V

    const/4 p1, 0x3

    .line 504
    invoke-virtual {p0, p1, p3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBool(IZ)V

    const/4 p1, 0x4

    .line 505
    invoke-virtual {p0, p1, p4}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeUInt32(II)V

    .line 506
    invoke-virtual {p0, v1, p5, p6}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeUInt64(IJ)V

    const/4 p1, 0x6

    .line 507
    invoke-virtual {p0, p1, p7, p8}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeUInt64(IJ)V

    return-void
.end method

.method private static writeSessionEventLog(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Lcom/google/firebase/crashlytics/internal/proto/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    const/4 v1, 0x2

    .line 512
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 513
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getEventLogSize(Lcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint32(I)V

    const/4 v0, 0x1

    .line 514
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    :cond_0
    return-void
.end method

.method public static writeSessionOS(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object p1

    .line 90
    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object p2

    const/4 v0, 0x2

    const/16 v1, 0x8

    .line 92
    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 93
    invoke-static {p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getSessionOSSize(Lcom/google/firebase/crashlytics/internal/proto/ByteString;Lcom/google/firebase/crashlytics/internal/proto/ByteString;Z)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint32(I)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 94
    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeEnum(II)V

    .line 95
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    .line 96
    invoke-virtual {p0, v1, p2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    const/4 p1, 0x4

    .line 97
    invoke-virtual {p0, p1, p3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBool(IZ)V

    return-void
.end method

.method public static writeSessionUser(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 151
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object p1

    .line 152
    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->stringToByteString(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object v0

    .line 153
    invoke-static {p3}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->stringToByteString(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object v1

    const/4 v2, 0x1

    .line 156
    invoke-static {v2, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    const/4 v4, 0x2

    if-eqz p2, :cond_1

    .line 158
    invoke-static {v4, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_1
    const/4 v5, 0x3

    if-eqz p3, :cond_2

    .line 161
    invoke-static {v5, v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->computeBytesSize(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)I

    move-result v6

    add-int/2addr v3, v6

    :cond_2
    const/4 v6, 0x6

    .line 164
    invoke-virtual {p0, v6, v4}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 165
    invoke-virtual {p0, v3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint32(I)V

    .line 166
    invoke-virtual {p0, v2, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    if-eqz p2, :cond_3

    .line 168
    invoke-virtual {p0, v4, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 171
    invoke-virtual {p0, v5, v1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    :cond_4
    return-void
.end method

.method private static writeThread(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 438
    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeTag(II)V

    .line 439
    invoke-static {p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->getThreadSize(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v2

    .line 440
    invoke-virtual {p0, v2}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeRawVarint32(I)V

    .line 441
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/proto/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/proto/ByteString;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeBytes(ILcom/google/firebase/crashlytics/internal/proto/ByteString;)V

    .line 442
    invoke-virtual {p0, v0, p3}, Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;->writeUInt32(II)V

    .line 444
    array-length p1, p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    aget-object v0, p2, p3

    const/4 v1, 0x3

    .line 445
    invoke-static {p0, v1, v0, p4}, Lcom/google/firebase/crashlytics/internal/proto/SessionProtobufHelper;->writeFrame(Lcom/google/firebase/crashlytics/internal/proto/CodedOutputStream;ILjava/lang/StackTraceElement;Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
