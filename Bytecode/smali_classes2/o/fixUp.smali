.class public interface abstract Lo/fixUp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fixUp$ICustomTabsCallback;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract onMessageChannelReady(Ljava/net/SocketAddress;Lo/fixUp$ICustomTabsCallback;Lo/saveTrackedQueryKeys;)Lo/resume;
.end method

.method public abstract onPostMessage()Ljava/util/concurrent/ScheduledExecutorService;
.end method
