.class public final Lo/MenuItemHoverListener$onPostMessage$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MenuItemHoverListener$onPostMessage;
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
.field private synthetic onPostMessage:Lo/MenuItemHoverListener$onPostMessage;


# direct methods
.method public constructor <init>(Lo/MenuItemHoverListener$onPostMessage;)V
    .locals 0

    iput-object p1, p0, Lo/MenuItemHoverListener$onPostMessage$extraCallback;->onPostMessage:Lo/MenuItemHoverListener$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 70
    iget-object v0, p0, Lo/MenuItemHoverListener$onPostMessage$extraCallback;->onPostMessage:Lo/MenuItemHoverListener$onPostMessage;

    iget-object v1, v0, Lo/MenuItemHoverListener$onPostMessage;->onPostMessage:Lo/MenuItemHoverListener;

    iget-object v0, p0, Lo/MenuItemHoverListener$onPostMessage$extraCallback;->onPostMessage:Lo/MenuItemHoverListener$onPostMessage;

    iget-object v2, v0, Lo/MenuItemHoverListener$onPostMessage;->extraCallback:Ljava/util/List;

    iget-object v0, p0, Lo/MenuItemHoverListener$onPostMessage$extraCallback;->onPostMessage:Lo/MenuItemHoverListener$onPostMessage;

    iget-object v3, v0, Lo/MenuItemHoverListener$onPostMessage;->onMessageChannelReady:Lo/MenuItemHoverListener$onNavigationEvent;

    new-instance v5, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;

    iget-object v0, p0, Lo/MenuItemHoverListener$onPostMessage$extraCallback;->onPostMessage:Lo/MenuItemHoverListener$onPostMessage;

    iget-wide v6, v0, Lo/MenuItemHoverListener$onPostMessage;->ICustomTabsCallback:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v4, p0, Lo/MenuItemHoverListener$onPostMessage$extraCallback;->onPostMessage:Lo/MenuItemHoverListener$onPostMessage;

    iget v4, v4, Lo/MenuItemHoverListener$onPostMessage;->onNavigationEvent:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v5, v0, v4}, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;-><init>(Ljava/lang/Long;Ljava/lang/Integer;)V

    iget-object v0, p0, Lo/MenuItemHoverListener$onPostMessage$extraCallback;->onPostMessage:Lo/MenuItemHoverListener$onPostMessage;

    iget-boolean v6, v0, Lo/MenuItemHoverListener$onPostMessage;->asInterface:Z

    iget-object v0, p0, Lo/MenuItemHoverListener$onPostMessage$extraCallback;->onPostMessage:Lo/MenuItemHoverListener$onPostMessage;

    iget-boolean v7, v0, Lo/MenuItemHoverListener$onPostMessage;->ICustomTabsCallback$Stub:Z

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v7}, Lo/MenuItemHoverListener;->onNavigationEvent(Ljava/util/List;Lo/MenuItemHoverListener$onNavigationEvent;ZLcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;ZZ)V

    return-void
.end method
