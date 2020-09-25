.class public Lo/onAppOpenAttributionNative;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final ICustomTabsCallback:I

.field public final extraCallback:I

.field public final onMessageChannelReady:I

.field public final onPostMessage:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(IILandroid/util/SparseIntArray;)V
    .locals 1

    const/4 v0, -0x1

    .line 80
    invoke-direct {p0, p1, p2, p3, v0}, Lo/onAppOpenAttributionNative;-><init>(IILandroid/util/SparseIntArray;I)V

    return-void
.end method

.method public constructor <init>(IILandroid/util/SparseIntArray;I)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 101
    iput p1, p0, Lo/onAppOpenAttributionNative;->extraCallback:I

    .line 102
    iput p2, p0, Lo/onAppOpenAttributionNative;->ICustomTabsCallback:I

    .line 103
    iput-object p3, p0, Lo/onAppOpenAttributionNative;->onPostMessage:Landroid/util/SparseIntArray;

    .line 106
    iput p4, p0, Lo/onAppOpenAttributionNative;->onMessageChannelReady:I

    return-void

    .line 1162
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
