.class final Lo/onSecurityDebugPacket$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/sendUnlisten$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onSecurityDebugPacket;->ICustomTabsCallback(Lo/reverseIterator;Lo/deleteTrackedQuery;Lo/pruneCache;)Lo/resetPreviouslyActiveTrackedQueries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onPostMessage"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/reverseIterator;

.field private synthetic onNavigationEvent:Lo/onSecurityDebugPacket;


# direct methods
.method constructor <init>(Lo/onSecurityDebugPacket;Lo/reverseIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lo/onSecurityDebugPacket$onPostMessage;->onNavigationEvent:Lo/onSecurityDebugPacket;

    iput-object p2, p0, Lo/onSecurityDebugPacket$onPostMessage;->ICustomTabsCallback:Lo/reverseIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/sendUnlisten;
    .locals 2

    .line 101
    iget-object v0, p0, Lo/onSecurityDebugPacket$onPostMessage;->onNavigationEvent:Lo/onSecurityDebugPacket;

    invoke-static {v0}, Lo/onSecurityDebugPacket;->onMessageChannelReady(Lo/onSecurityDebugPacket;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    sget-object v0, Lo/sendUnlisten;->ICustomTabsCallback$Stub:Lo/sendUnlisten;

    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lo/onSecurityDebugPacket$onPostMessage;->onNavigationEvent:Lo/onSecurityDebugPacket;

    iget-object v1, p0, Lo/onSecurityDebugPacket$onPostMessage;->ICustomTabsCallback:Lo/reverseIterator;

    .line 1190
    invoke-virtual {v0, v1}, Lo/onSecurityDebugPacket;->onNavigationEvent(Lo/reverseIterator;)Lo/onDisconnectCancel$extraCallback;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1191
    sget-object v0, Lo/sendUnlisten;->ICustomTabsCallback$Stub:Lo/sendUnlisten;

    return-object v0

    :cond_1
    iget-object v0, v0, Lo/onDisconnectCancel$extraCallback;->ICustomTabsCallback:Lo/sendUnlisten;

    return-object v0
.end method
