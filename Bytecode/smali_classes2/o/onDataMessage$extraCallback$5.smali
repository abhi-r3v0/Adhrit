.class final Lo/onDataMessage$extraCallback$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onDataMessage$extraCallback;->extraCallback(Lo/emptyMap;Lo/getPredecessorKey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/onDataMessage$extraCallback;

.field private synthetic onMessageChannelReady:Lo/getPredecessorKey;

.field private synthetic onPostMessage:Lo/emptyMap;


# direct methods
.method constructor <init>(Lo/onDataMessage$extraCallback;Lo/emptyMap;Lo/getPredecessorKey;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lo/onDataMessage$extraCallback$5;->ICustomTabsCallback:Lo/onDataMessage$extraCallback;

    iput-object p2, p0, Lo/onDataMessage$extraCallback$5;->onPostMessage:Lo/emptyMap;

    iput-object p3, p0, Lo/onDataMessage$extraCallback$5;->onMessageChannelReady:Lo/getPredecessorKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 463
    iget-object v0, p0, Lo/onDataMessage$extraCallback$5;->ICustomTabsCallback:Lo/onDataMessage$extraCallback;

    invoke-static {v0}, Lo/onDataMessage$extraCallback;->onNavigationEvent(Lo/onDataMessage$extraCallback;)Lo/rotateRight;

    move-result-object v0

    iget-object v1, p0, Lo/onDataMessage$extraCallback$5;->onPostMessage:Lo/emptyMap;

    iget-object v2, p0, Lo/onDataMessage$extraCallback$5;->onMessageChannelReady:Lo/getPredecessorKey;

    invoke-interface {v0, v1, v2}, Lo/rotateRight;->extraCallback(Lo/emptyMap;Lo/getPredecessorKey;)V

    return-void
.end method
