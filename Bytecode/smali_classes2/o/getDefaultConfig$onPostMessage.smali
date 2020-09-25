.class public interface abstract Lo/getDefaultConfig$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getDefaultConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onPostMessage"
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback(ILo/matches;)V
.end method

.method public abstract extraCallback(ILo/getReferenceFromUrl;)V
.end method

.method public abstract onMessageChannelReady(ZZILjava/util/List;Lo/useEmulator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI",
            "Ljava/util/List<",
            "Lo/setPersistenceCacheSizeBytes;",
            ">;",
            "Lo/useEmulator;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(IJ)V
.end method

.method public abstract onNavigationEvent(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lo/setPersistenceCacheSizeBytes;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(ZII)V
.end method

.method public abstract onNavigationEvent(ZLo/isZombied$onPostMessage;)V
.end method

.method public abstract onPostMessage(ZILo/fullLimitUpdateChild;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
