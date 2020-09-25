.class public abstract Lo/getMinKey$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMinKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "extraCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()Lo/deleteTrackedQuery;
.end method

.method public abstract extraCallback()Lo/getPredecessorKey;
.end method

.method public abstract onMessageChannelReady()Lo/reverseIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/reverseIterator<",
            "**>;"
        }
    .end annotation
.end method
