.class public final Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException;
.super Lin/juspay/widget/qrscanner/com/google/zxing/ReaderException;
.source ""


# static fields
.field private static final c:Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException;

    invoke-direct {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException;-><init>()V

    .line 29
    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException;->c:Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException;

    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException;->b:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/ReaderException;-><init>()V

    return-void
.end method

.method public static a()Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException;
    .locals 1

    .line 41
    sget-boolean v0, Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException;

    invoke-direct {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException;-><init>()V

    return-object v0

    :cond_0
    sget-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException;->c:Lin/juspay/widget/qrscanner/com/google/zxing/ChecksumException;

    return-object v0
.end method
