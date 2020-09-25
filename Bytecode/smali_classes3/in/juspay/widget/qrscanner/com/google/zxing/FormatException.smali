.class public final Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;
.super Lin/juspay/widget/qrscanner/com/google/zxing/ReaderException;
.source ""


# static fields
.field private static final c:Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    invoke-direct {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;-><init>()V

    .line 30
    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->c:Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->b:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/ReaderException;-><init>()V

    return-void
.end method

.method public static a()Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;
    .locals 1

    .line 41
    sget-boolean v0, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    invoke-direct {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;-><init>()V

    return-object v0

    :cond_0
    sget-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;->c:Lin/juspay/widget/qrscanner/com/google/zxing/FormatException;

    return-object v0
.end method
