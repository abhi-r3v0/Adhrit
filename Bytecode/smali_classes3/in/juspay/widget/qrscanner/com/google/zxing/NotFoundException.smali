.class public final Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;
.super Lin/juspay/widget/qrscanner/com/google/zxing/ReaderException;
.source ""


# static fields
.field private static final c:Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;

    invoke-direct {v0}, Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;-><init>()V

    .line 29
    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;->c:Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;

    sget-object v1, Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;->b:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/ReaderException;-><init>()V

    return-void
.end method

.method public static a()Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;
    .locals 1

    .line 37
    sget-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;->c:Lin/juspay/widget/qrscanner/com/google/zxing/NotFoundException;

    return-object v0
.end method
