.class public abstract Landroid/support/v7/util/AsyncListUtil$DataCallback;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/AsyncListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DataCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract fillData([Ljava/lang/Object;II)V
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II)V"
        }
    .end annotation
.end method

.method public getMaxCachedTiles()I
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/16 v0, 0xa

    return v0
.end method

.method public recycleData([Ljava/lang/Object;I)V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    return-void
.end method

.method public abstract refreshData()I
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method
