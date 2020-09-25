.class public final Lo/isPendingInitialRun$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isPendingInitialRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "androidx/core/os/HandlerKt$postDelayed$runnable$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lo/isPendingInitialRun$onNavigationEvent;->onMessageChannelReady:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 70
    sget-object v0, Lo/setTargetPosition;->onRelationshipValidationResult:Lo/setTargetPosition;

    invoke-virtual {v0}, Lo/setTargetPosition;->onMessageChannelReady()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    invoke-static {v0}, Lo/isPendingInitialRun;->onNavigationEvent(Lo/isPendingInitialRun;)Lo/validate;

    move-result-object v0

    invoke-virtual {v0}, Lo/validate;->ICustomTabsCallback()V

    .line 73
    :cond_0
    sget-object v0, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    iget-object v1, p0, Lo/isPendingInitialRun$onNavigationEvent;->onMessageChannelReady:Landroid/content/Context;

    invoke-static {v0, v1}, Lo/isPendingInitialRun;->onMessageChannelReady(Lo/isPendingInitialRun;Landroid/content/Context;)V

    .line 74
    sget-object v0, Lo/normalize;->onMessageChannelReady:Lo/normalize;

    invoke-virtual {v0}, Lo/normalize;->onPostMessage()V

    return-void
.end method
