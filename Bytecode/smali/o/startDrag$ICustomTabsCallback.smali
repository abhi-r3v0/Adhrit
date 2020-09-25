.class final Lo/startDrag$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/startDrag;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick",
        "com/dreamplug/fabrik/ui/lending/dialog/RepaymentSummaryDialog$onViewCreated$2$2$1",
        "com/dreamplug/fabrik/ui/lending/dialog/RepaymentSummaryDialog$$special$$inlined$let$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/startDrag;

.field private synthetic onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/Cta;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/lending/model/Cta;Lo/startDrag;)V
    .locals 0

    iput-object p1, p0, Lo/startDrag$ICustomTabsCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    iput-object p2, p0, Lo/startDrag$ICustomTabsCallback;->ICustomTabsCallback:Lo/startDrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 126
    iget-object p1, p0, Lo/startDrag$ICustomTabsCallback;->ICustomTabsCallback:Lo/startDrag;

    .line 1000
    iget-object p1, p1, Lo/startDrag;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 126
    invoke-static {p1, v0, v1, v2, v3}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 127
    sget-object p1, Lo/getMovementFlags;->ICustomTabsCallback:Lo/getMovementFlags;

    iget-object p1, p0, Lo/startDrag$ICustomTabsCallback;->ICustomTabsCallback:Lo/startDrag;

    check-cast p1, Landroidx/fragment/app/Fragment;

    new-instance v0, Lo/getMovementFlags$onMessageChannelReady;

    iget-object v1, p0, Lo/startDrag$ICustomTabsCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    invoke-direct {v0, v1}, Lo/getMovementFlags$onMessageChannelReady;-><init>(Lcom/dreamplug/fabrik/ui/lending/model/Cta;)V

    invoke-static {p1, v0}, Lo/getMovementFlags;->onNavigationEvent(Landroidx/fragment/app/Fragment;Lo/getMovementFlags$onMessageChannelReady;)V

    return-void
.end method
