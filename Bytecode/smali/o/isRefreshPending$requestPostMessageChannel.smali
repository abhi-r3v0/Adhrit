.class final Lo/isRefreshPending$requestPostMessageChannel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isRefreshPending;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/isRefreshPending;


# direct methods
.method constructor <init>(Lo/isRefreshPending;)V
    .locals 0

    iput-object p1, p0, Lo/isRefreshPending$requestPostMessageChannel;->ICustomTabsCallback:Lo/isRefreshPending;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 63
    check-cast p1, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;

    .line 1290
    iget-object v0, p0, Lo/isRefreshPending$requestPostMessageChannel;->ICustomTabsCallback:Lo/isRefreshPending;

    invoke-static {v0}, Lo/isRefreshPending;->onNavigationEvent(Lo/isRefreshPending;)Lo/onRangeChanged;

    move-result-object v0

    .line 2027
    iget-object v0, v0, Lo/onRangeChanged;->onNavigationEvent:Lo/setActive;

    .line 2320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 1290
    iget-object v0, p0, Lo/isRefreshPending$requestPostMessageChannel;->ICustomTabsCallback:Lo/isRefreshPending;

    invoke-static {v0}, Lo/isRefreshPending;->onNavigationEvent(Lo/isRefreshPending;)Lo/onRangeChanged;

    move-result-object v0

    .line 3029
    iget-object v0, v0, Lo/onRangeChanged;->ICustomTabsCallback:Lo/setActive;

    .line 3320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    move-object v2, v0

    :cond_1
    if-eqz v2, :cond_2

    .line 1291
    iget-object v0, p0, Lo/isRefreshPending$requestPostMessageChannel;->ICustomTabsCallback:Lo/isRefreshPending;

    invoke-static {v0}, Lo/isRefreshPending;->ICustomTabsCallback(Lo/isRefreshPending;)V

    .line 1292
    iget-object v0, p0, Lo/isRefreshPending$requestPostMessageChannel;->ICustomTabsCallback:Lo/isRefreshPending;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {v0, v1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1293
    iget-object v0, p0, Lo/isRefreshPending$requestPostMessageChannel;->ICustomTabsCallback:Lo/isRefreshPending;

    const-string v1, "it"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lo/isRefreshPending;->extraCallback(Lo/isRefreshPending;Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;)V

    :cond_2
    return-void
.end method
