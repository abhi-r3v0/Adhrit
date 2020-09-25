.class public abstract Lin/juspay/widget/qrscanner/com/google/zxing/ReaderException;
.super Ljava/lang/Exception;
.source ""


# static fields
.field protected static final a:Z

.field protected static final b:[Ljava/lang/StackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "surefire.test.class.path"

    .line 30
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lin/juspay/widget/qrscanner/com/google/zxing/ReaderException;->a:Z

    new-array v0, v1, [Ljava/lang/StackTraceElement;

    .line 31
    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/ReaderException;->b:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    .line 44
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method
