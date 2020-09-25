.class public final Lo/findSwapTargets$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findSwapTargets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/dialog/AutoDebitNetBankingDialog$Companion;",
        "",
        "()V",
        "PAYMENT_JUSPAY_SAFE_REQUEST",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/setExecutor;

.field private final onMessageChannelReady:Landroid/os/Bundle;

.field private final onPostMessage:Lo/getSignInProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/setExecutor;Landroid/os/Bundle;Lo/getSignInProvider;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/findSwapTargets$onNavigationEvent;->extraCallback:Lo/setExecutor;

    iput-object p2, p0, Lo/findSwapTargets$onNavigationEvent;->onMessageChannelReady:Landroid/os/Bundle;

    iput-object p3, p0, Lo/findSwapTargets$onNavigationEvent;->onPostMessage:Lo/getSignInProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 2000
    iget-object v0, p0, Lo/findSwapTargets$onNavigationEvent;->extraCallback:Lo/setExecutor;

    iget-object v1, p0, Lo/findSwapTargets$onNavigationEvent;->onMessageChannelReady:Landroid/os/Bundle;

    iget-object v2, p0, Lo/findSwapTargets$onNavigationEvent;->onPostMessage:Lo/getSignInProvider;

    .line 3000
    iget-object v3, v0, Lo/setExecutor;->onMessageChannelReady:Lo/resolveIsInfinite$onPostMessage;

    .line 4000
    new-instance v4, Lo/ItemTouchHelper$Callback$onPostMessage;

    invoke-direct {v4, v3, v1}, Lo/ItemTouchHelper$Callback$onPostMessage;-><init>(Lo/resolveIsInfinite$onPostMessage;Landroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Lo/resolveIsInfinite$onPostMessage;->onPostMessage(Lo/isValue;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5000
    iget-object v1, v0, Lo/setExecutor;->extraCallback:Landroid/os/Handler;

    new-instance v3, Lo/getCachedSpanGroupIndex$onPostMessage;

    invoke-direct {v3, v0, v2}, Lo/getCachedSpanGroupIndex$onPostMessage;-><init>(Lo/setExecutor;Lo/getSignInProvider;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3000
    iget-object v0, v0, Lo/setExecutor;->ICustomTabsCallback:Lo/setBreadcrumbEventReceiver;

    invoke-interface {v0}, Lo/setBreadcrumbEventReceiver;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/toGraph;

    invoke-interface {v0}, Lo/toGraph;->extraCallback()V

    :cond_0
    return-void
.end method
