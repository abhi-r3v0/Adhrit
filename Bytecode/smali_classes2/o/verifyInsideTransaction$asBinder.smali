.class public abstract Lo/verifyInsideTransaction$asBinder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/verifyInsideTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "asBinder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract extraCallback()Lo/verifyInsideTransaction;
.end method

.method public abstract extraCallback(Lo/verifyInsideTransaction;Lo/verifyInsideTransaction;)V
.end method

.method public onNavigationEvent(Lo/verifyInsideTransaction;)Lo/verifyInsideTransaction;
    .locals 1

    .line 981
    invoke-virtual {p0}, Lo/verifyInsideTransaction$asBinder;->extraCallback()Lo/verifyInsideTransaction;

    .line 1962
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Deprecated. Do not call."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
