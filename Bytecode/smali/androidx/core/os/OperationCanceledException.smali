.class public Landroidx/core/os/OperationCanceledException;
.super Ljava/lang/RuntimeException;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0}, Landroidx/core/os/OperationCanceledException;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    const-string p1, "The operation has been canceled."

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
