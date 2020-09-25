.class public final Lo/onAddFocusables$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecyclerView$Recycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onAddFocusables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/RecyclerView$Recycler<",
        "Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\t\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$getOrderStatus$1",
        "Lcom/dreamplug/network/helper/BaseCallback;",
        "Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onFailure",
        "",
        "t",
        "",
        "errorResponse",
        "onResponse",
        "response",
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
.field private synthetic ICustomTabsCallback:Lo/onAddFocusables;


# direct methods
.method constructor <init>(Lo/onAddFocusables;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lo/onAddFocusables$ICustomTabsCallback;->ICustomTabsCallback:Lo/onAddFocusables;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2

    .line 8112
    iget-object p1, p0, Lo/onAddFocusables$ICustomTabsCallback;->ICustomTabsCallback:Lo/onAddFocusables;

    .line 9071
    iget-object p2, p1, Lo/onAddFocusables;->onPostMessage:Landroid/os/Handler;

    check-cast p1, Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 4

    .line 78
    check-cast p1, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    if-eqz p1, :cond_6

    .line 1081
    iget-object v0, p0, Lo/onAddFocusables$ICustomTabsCallback;->ICustomTabsCallback:Lo/onAddFocusables;

    .line 2055
    iput-object p1, v0, Lo/onAddFocusables;->onTransact:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "polling at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/onAddFocusables$ICustomTabsCallback;->ICustomTabsCallback:Lo/onAddFocusables;

    .line 3034
    iget v1, v1, Lo/onAddFocusables;->extraCallback:I

    .line 1082
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getPayments()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lo/getSessionPersistenceKey;->onPostMessage(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/androidapp/payments/model/OrderPayment;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/payments/model/OrderPayment;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "common_lro"

    invoke-static {v1, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getPayments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dreamplug/androidapp/payments/model/OrderPayment;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/OrderPayment;->getStatus()Ljava/lang/String;

    move-result-object p1

    const-string v0, "completed"

    .line 1085
    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "<set-?>"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1086
    iget-object p1, p0, Lo/onAddFocusables$ICustomTabsCallback;->ICustomTabsCallback:Lo/onAddFocusables;

    const-string v0, "RESULT_SUCCESS"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3052
    iput-object v0, p1, Lo/onAddFocusables;->asInterface:Ljava/lang/String;

    .line 1087
    iget-object p1, p0, Lo/onAddFocusables$ICustomTabsCallback;->ICustomTabsCallback:Lo/onAddFocusables;

    .line 3062
    sget-object v0, Lo/resize;->extraCallback:Lo/resize;

    invoke-static {}, Lo/resize;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p1, Lo/onAddFocusables;->ICustomTabsCallback:Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 3067
    iget-object p1, p1, Lo/onAddFocusables;->onPostMessage:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1088
    iget-object p1, p0, Lo/onAddFocusables$ICustomTabsCallback;->ICustomTabsCallback:Lo/onAddFocusables;

    .line 4034
    iget-object p1, p1, Lo/onAddFocusables;->onMessageChannelReady:Lo/createFullSpanItemFromStart;

    if-eqz p1, :cond_0

    .line 1089
    iget-object v0, p0, Lo/onAddFocusables$ICustomTabsCallback;->ICustomTabsCallback:Lo/onAddFocusables;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/onAddFocusables;->onPostMessage(Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "failed"

    .line 1092
    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "RESULT_FAILED"

    if-eqz p1, :cond_3

    .line 1093
    iget-object p1, p0, Lo/onAddFocusables$ICustomTabsCallback;->ICustomTabsCallback:Lo/onAddFocusables;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4052
    iput-object v0, p1, Lo/onAddFocusables;->asInterface:Ljava/lang/String;

    .line 1094
    iget-object p1, p0, Lo/onAddFocusables$ICustomTabsCallback;->ICustomTabsCallback:Lo/onAddFocusables;

    .line 4062
    sget-object v0, Lo/resize;->extraCallback:Lo/resize;

    invoke-static {}, Lo/resize;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p1, Lo/onAddFocusables;->ICustomTabsCallback:Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 4067
    iget-object p1, p1, Lo/onAddFocusables;->onPostMessage:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1095
    iget-object p1, p0, Lo/onAddFocusables$ICustomTabsCallback;->ICustomTabsCallback:Lo/onAddFocusables;

    .line 5034
    iget-object v0, p1, Lo/onAddFocusables;->onMessageChannelReady:Lo/createFullSpanItemFromStart;

    if-eqz v0, :cond_2

    .line 1095
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    :cond_2
    invoke-virtual {p1, v2}, Lo/onAddFocusables;->onPostMessage(Landroidx/fragment/app/Fragment;)V

    return-void

    .line 1097
    :cond_3
    iget-object p1, p0, Lo/onAddFocusables$ICustomTabsCallback;->ICustomTabsCallback:Lo/onAddFocusables;

    .line 6034
    iget p1, p1, Lo/onAddFocusables;->extraCallback:I

    const/4 v3, 0x3

    if-ne p1, v3, :cond_5

    .line 1098
    iget-object p1, p0, Lo/onAddFocusables$ICustomTabsCallback;->ICustomTabsCallback:Lo/onAddFocusables;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6052
    iput-object v0, p1, Lo/onAddFocusables;->asInterface:Ljava/lang/String;

    .line 1099
    iget-object p1, p0, Lo/onAddFocusables$ICustomTabsCallback;->ICustomTabsCallback:Lo/onAddFocusables;

    .line 6062
    sget-object v0, Lo/resize;->extraCallback:Lo/resize;

    invoke-static {}, Lo/resize;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p1, Lo/onAddFocusables;->ICustomTabsCallback:Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 6067
    iget-object p1, p1, Lo/onAddFocusables;->onPostMessage:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1100
    iget-object p1, p0, Lo/onAddFocusables$ICustomTabsCallback;->ICustomTabsCallback:Lo/onAddFocusables;

    .line 7034
    iget-object p1, p1, Lo/onAddFocusables;->onMessageChannelReady:Lo/createFullSpanItemFromStart;

    if-eqz p1, :cond_4

    .line 1101
    iget-object v0, p0, Lo/onAddFocusables$ICustomTabsCallback;->ICustomTabsCallback:Lo/onAddFocusables;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/onAddFocusables;->onPostMessage(Landroidx/fragment/app/Fragment;)V

    :cond_4
    return-void

    .line 1105
    :cond_5
    iget-object p1, p0, Lo/onAddFocusables$ICustomTabsCallback;->ICustomTabsCallback:Lo/onAddFocusables;

    .line 8071
    iget-object v0, p1, Lo/onAddFocusables;->onPostMessage:Landroid/os/Handler;

    check-cast p1, Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method
