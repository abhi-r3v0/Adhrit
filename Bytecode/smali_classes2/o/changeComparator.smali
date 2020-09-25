.class public interface abstract Lo/changeComparator;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract ICustomTabsCallback(Lo/childAddedChange;)Lo/addValueEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Lo/isCompleteForChild;)Lo/childAddedChange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback()V
.end method

.method public abstract onMessageChannelReady(Lo/isCompleteForChild;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Lo/getEventType;)V
.end method

.method public abstract onPostMessage(Lo/childAddedChange;Lo/childAddedChange;)V
.end method
