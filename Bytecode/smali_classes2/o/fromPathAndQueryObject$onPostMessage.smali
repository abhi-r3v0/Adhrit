.class interface abstract Lo/fromPathAndQueryObject$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fromPathAndQueryObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "onPostMessage"
.end annotation


# virtual methods
.method public abstract extraCallback(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/loadsAllData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract extraCallback(ILo/matches;)V
.end method

.method public abstract extraCallback(ZII)V
.end method

.method public abstract extraCallback(ZILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lo/loadsAllData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(ZILo/fullLimitUpdateChild;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(ILo/getNodeFilter;)V
.end method

.method public abstract onNavigationEvent(Lo/getInitialEvents;)V
.end method

.method public abstract onPostMessage(IJ)V
.end method
