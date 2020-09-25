.class final Lo/getMaxEntry$onPostMessage$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMaxEntry$onPostMessage;->onMessageChannelReady(Lo/emptyMap;Lo/rotateRight$extraCallback;ZLo/getPredecessorKey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getMaxEntry$onPostMessage;

.field private synthetic onMessageChannelReady:Lo/emptyMap;

.field private synthetic onNavigationEvent:Lo/rotateRight$extraCallback;

.field private synthetic onPostMessage:Lo/getPredecessorKey;


# direct methods
.method constructor <init>(Lo/getMaxEntry$onPostMessage;Lo/emptyMap;Lo/rotateRight$extraCallback;Lo/getPredecessorKey;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lo/getMaxEntry$onPostMessage$1;->ICustomTabsCallback:Lo/getMaxEntry$onPostMessage;

    iput-object p2, p0, Lo/getMaxEntry$onPostMessage$1;->onMessageChannelReady:Lo/emptyMap;

    iput-object p3, p0, Lo/getMaxEntry$onPostMessage$1;->onNavigationEvent:Lo/rotateRight$extraCallback;

    iput-object p4, p0, Lo/getMaxEntry$onPostMessage$1;->onPostMessage:Lo/getPredecessorKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 454
    iget-object v0, p0, Lo/getMaxEntry$onPostMessage$1;->ICustomTabsCallback:Lo/getMaxEntry$onPostMessage;

    iget-object v1, p0, Lo/getMaxEntry$onPostMessage$1;->onMessageChannelReady:Lo/emptyMap;

    iget-object v2, p0, Lo/getMaxEntry$onPostMessage$1;->onNavigationEvent:Lo/rotateRight$extraCallback;

    iget-object v3, p0, Lo/getMaxEntry$onPostMessage$1;->onPostMessage:Lo/getPredecessorKey;

    invoke-static {v0, v1, v2, v3}, Lo/getMaxEntry$onPostMessage;->ICustomTabsCallback(Lo/getMaxEntry$onPostMessage;Lo/emptyMap;Lo/rotateRight$extraCallback;Lo/getPredecessorKey;)V

    return-void
.end method
