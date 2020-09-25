.class public interface abstract Lo/annotatedName$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/annotatedName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onNavigationEvent"
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback()I
.end method

.method public abstract onMessageChannelReady()I
.end method

.method public abstract onNavigationEvent()Lo/isCompleteForChild;
.end method

.method public abstract onPostMessage()I
.end method

.method public abstract onPostMessage(Lo/isCompleteForChild;)Lo/childAddedChange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
