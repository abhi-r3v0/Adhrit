.class final Lo/onSecurityDebugPacket$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getSslCacheDirectory$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onSecurityDebugPacket;->ICustomTabsCallback(Lo/reverseIterator;Lo/deleteTrackedQuery;Lo/pruneCache;)Lo/resetPreviouslyActiveTrackedQueries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/onSecurityDebugPacket;

.field private synthetic onNavigationEvent:Lo/reverseIterator;


# direct methods
.method constructor <init>(Lo/onSecurityDebugPacket;Lo/reverseIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lo/onSecurityDebugPacket$onMessageChannelReady;->extraCallback:Lo/onSecurityDebugPacket;

    iput-object p2, p0, Lo/onSecurityDebugPacket$onMessageChannelReady;->onNavigationEvent:Lo/reverseIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()Lo/getSslCacheDirectory;
    .locals 5

    .line 117
    iget-object v0, p0, Lo/onSecurityDebugPacket$onMessageChannelReady;->extraCallback:Lo/onSecurityDebugPacket;

    invoke-static {v0}, Lo/onSecurityDebugPacket;->onMessageChannelReady(Lo/onSecurityDebugPacket;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lo/getSslCacheDirectory;->extraCallback:Lo/getSslCacheDirectory;

    return-object v0

    .line 120
    :cond_0
    iget-object v0, p0, Lo/onSecurityDebugPacket$onMessageChannelReady;->extraCallback:Lo/onSecurityDebugPacket;

    iget-object v1, p0, Lo/onSecurityDebugPacket$onMessageChannelReady;->onNavigationEvent:Lo/reverseIterator;

    .line 1196
    invoke-virtual {v0, v1}, Lo/onSecurityDebugPacket;->onNavigationEvent(Lo/reverseIterator;)Lo/onDisconnectCancel$extraCallback;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1197
    sget-object v0, Lo/getSslCacheDirectory;->extraCallback:Lo/getSslCacheDirectory;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lo/onDisconnectCancel$extraCallback;->asInterface:Lo/getSslCacheDirectory;

    .line 121
    :goto_0
    sget-object v1, Lo/getSslCacheDirectory;->extraCallback:Lo/getSslCacheDirectory;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lo/onSecurityDebugPacket$onMessageChannelReady;->extraCallback:Lo/onSecurityDebugPacket;

    iget-object v4, p0, Lo/onSecurityDebugPacket$onMessageChannelReady;->onNavigationEvent:Lo/reverseIterator;

    .line 2190
    invoke-virtual {v1, v4}, Lo/onSecurityDebugPacket;->onNavigationEvent(Lo/reverseIterator;)Lo/onDisconnectCancel$extraCallback;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2191
    sget-object v1, Lo/sendUnlisten;->ICustomTabsCallback$Stub:Lo/sendUnlisten;

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lo/onDisconnectCancel$extraCallback;->ICustomTabsCallback:Lo/sendUnlisten;

    .line 123
    :goto_1
    sget-object v4, Lo/sendUnlisten;->ICustomTabsCallback$Stub:Lo/sendUnlisten;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v1, 0x1

    :goto_3
    iget-object v4, p0, Lo/onSecurityDebugPacket$onMessageChannelReady;->onNavigationEvent:Lo/reverseIterator;

    if-eqz v1, :cond_5

    return-object v0

    .line 3183
    :cond_5
    new-instance v0, Lcom/google/common/base/VerifyException;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v4, v1, v2

    const-string v2, "Can not apply both retry and hedging policy for the method \'%s\'"

    invoke-static {v2, v1}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
