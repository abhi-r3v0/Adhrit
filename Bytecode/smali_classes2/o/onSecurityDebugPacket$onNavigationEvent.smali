.class final Lo/onSecurityDebugPacket$onNavigationEvent;
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
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/sendUnlisten;


# direct methods
.method constructor <init>(Lo/sendUnlisten;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lo/onSecurityDebugPacket$onNavigationEvent;->onPostMessage:Lo/sendUnlisten;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/sendUnlisten;
    .locals 1

    .line 72
    iget-object v0, p0, Lo/onSecurityDebugPacket$onNavigationEvent;->onPostMessage:Lo/sendUnlisten;

    return-object v0
.end method
