.class public interface abstract Lo/getOptInclusiveEnd$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getOptInclusiveEnd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onPostMessage"
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback(ILo/wasSent;)V
.end method

.method public abstract ICustomTabsCallback(ZILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lo/getOptExclusiveStart;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract extraCallback(Lo/orderBy;)V
.end method

.method public abstract onMessageChannelReady(ILo/wasSent;Lo/matches;)V
.end method

.method public abstract onNavigationEvent(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lo/getOptExclusiveStart;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(IJ)V
.end method

.method public abstract onNavigationEvent(ZII)V
.end method

.method public abstract onNavigationEvent(ZILo/fullLimitUpdateChild;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
