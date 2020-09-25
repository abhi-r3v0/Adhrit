.class public interface abstract Lo/reverseIteratorFrom$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/reverseIteratorFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICustomTabsCallback"
.end annotation


# virtual methods
.method public abstract extraCallback(Ljava/util/List;Lo/serverCacheEstimatedSizeInBytes;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/splitNodeRunLength;",
            ">;",
            "Lo/serverCacheEstimatedSizeInBytes;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(Lo/emptyMap;)V
.end method
