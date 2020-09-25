.class final Lo/onDataMessage$extraCallback$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onDataMessage$extraCallback;->onNavigationEvent(Lo/emptyMap;Lo/rotateRight$extraCallback;Lo/getPredecessorKey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/rotateRight$extraCallback;

.field private synthetic onMessageChannelReady:Lo/emptyMap;

.field private synthetic onNavigationEvent:Lo/onDataMessage$extraCallback;

.field private synthetic onPostMessage:Lo/getPredecessorKey;


# direct methods
.method constructor <init>(Lo/onDataMessage$extraCallback;Lo/emptyMap;Lo/rotateRight$extraCallback;Lo/getPredecessorKey;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lo/onDataMessage$extraCallback$3;->onNavigationEvent:Lo/onDataMessage$extraCallback;

    iput-object p2, p0, Lo/onDataMessage$extraCallback$3;->onMessageChannelReady:Lo/emptyMap;

    iput-object p3, p0, Lo/onDataMessage$extraCallback$3;->ICustomTabsCallback:Lo/rotateRight$extraCallback;

    iput-object p4, p0, Lo/onDataMessage$extraCallback$3;->onPostMessage:Lo/getPredecessorKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 475
    iget-object v0, p0, Lo/onDataMessage$extraCallback$3;->onNavigationEvent:Lo/onDataMessage$extraCallback;

    invoke-static {v0}, Lo/onDataMessage$extraCallback;->onNavigationEvent(Lo/onDataMessage$extraCallback;)Lo/rotateRight;

    move-result-object v0

    iget-object v1, p0, Lo/onDataMessage$extraCallback$3;->onMessageChannelReady:Lo/emptyMap;

    iget-object v2, p0, Lo/onDataMessage$extraCallback$3;->ICustomTabsCallback:Lo/rotateRight$extraCallback;

    iget-object v3, p0, Lo/onDataMessage$extraCallback$3;->onPostMessage:Lo/getPredecessorKey;

    invoke-interface {v0, v1, v2, v3}, Lo/rotateRight;->onNavigationEvent(Lo/emptyMap;Lo/rotateRight$extraCallback;Lo/getPredecessorKey;)V

    return-void
.end method
