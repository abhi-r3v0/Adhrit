.class final Lo/onDataMessage$extraCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onDataMessage$extraCallback;->ICustomTabsCallback(Lo/getPredecessorKey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getPredecessorKey;

.field private synthetic onNavigationEvent:Lo/onDataMessage$extraCallback;


# direct methods
.method constructor <init>(Lo/onDataMessage$extraCallback;Lo/getPredecessorKey;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lo/onDataMessage$extraCallback$1;->onNavigationEvent:Lo/onDataMessage$extraCallback;

    iput-object p2, p0, Lo/onDataMessage$extraCallback$1;->onMessageChannelReady:Lo/getPredecessorKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 453
    iget-object v0, p0, Lo/onDataMessage$extraCallback$1;->onNavigationEvent:Lo/onDataMessage$extraCallback;

    invoke-static {v0}, Lo/onDataMessage$extraCallback;->onNavigationEvent(Lo/onDataMessage$extraCallback;)Lo/rotateRight;

    move-result-object v0

    iget-object v1, p0, Lo/onDataMessage$extraCallback$1;->onMessageChannelReady:Lo/getPredecessorKey;

    invoke-interface {v0, v1}, Lo/rotateRight;->ICustomTabsCallback(Lo/getPredecessorKey;)V

    return-void
.end method
