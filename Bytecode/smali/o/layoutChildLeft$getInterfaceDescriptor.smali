.class final Lo/layoutChildLeft$getInterfaceDescriptor;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/layoutChildLeft;->extraCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/layoutChildLeft;


# direct methods
.method constructor <init>(Lo/layoutChildLeft;)V
    .locals 0

    iput-object p1, p0, Lo/layoutChildLeft$getInterfaceDescriptor;->onMessageChannelReady:Lo/layoutChildLeft;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 13

    .line 1096
    iget-object v0, p0, Lo/layoutChildLeft$getInterfaceDescriptor;->onMessageChannelReady:Lo/layoutChildLeft;

    .line 2245
    iget-object v1, v0, Lo/layoutChildLeft;->extraCallback:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez v1, :cond_0

    const-string v2, "paymentItem"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentMode()Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lo/layoutChildLeft;->extraCallback(Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "in_process_payment"

    invoke-static {v2, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    const-string v1, "RESULT_IN_PROCESS"

    .line 3074
    iput-object v1, v0, Lo/layoutChildLeft;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 3075
    iget-object v1, v0, Lo/layoutChildLeft;->onRelationshipValidationResult:Lo/setActive;

    iget-object v2, v0, Lo/layoutChildLeft;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 3119
    iget-object v1, v0, Lo/layoutChildLeft;->onPostMessage:Landroid/os/Handler;

    if-nez v1, :cond_1

    const-string v2, "handler"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2248
    iget-object v1, v0, Lo/layoutChildLeft;->onTransact:Lo/getViewListMeasuredWidth;

    if-eqz v1, :cond_8

    .line 2249
    iget-object v3, v0, Lo/layoutChildLeft;->asBinder:Lo/evictionCount;

    const-string v4, "loaderSeenTimeTracker"

    if-nez v3, :cond_2

    invoke-static {v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3}, Lo/evictionCount;->onMessageChannelReady()J

    .line 2250
    iget-object v3, v0, Lo/layoutChildLeft;->asBinder:Lo/evictionCount;

    if-nez v3, :cond_3

    invoke-static {v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 4030
    :cond_3
    iget-object v5, v3, Lo/evictionCount;->onMessageChannelReady:Ljava/lang/Object;

    sget-object v6, Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;

    invoke-static {v5, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    const-string/jumbo v6, "tag"

    const-string/jumbo v7, "trying to get duration before calling stop()"

    const-string v8, "TimeTracker"

    if-eqz v5, :cond_4

    .line 4069
    invoke-static {v8, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4070
    sget-object v5, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    invoke-static {v8, v7, v2}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4033
    :cond_4
    iget-wide v9, v3, Lo/evictionCount;->ICustomTabsCallback:J

    const-wide/16 v11, 0x7d0

    cmp-long v3, v11, v9

    if-lez v3, :cond_7

    .line 2251
    sget-object v3, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    iget-object v3, v0, Lo/layoutChildLeft;->asBinder:Lo/evictionCount;

    if-nez v3, :cond_5

    invoke-static {v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 5030
    :cond_5
    iget-object v4, v3, Lo/evictionCount;->onMessageChannelReady:Ljava/lang/Object;

    sget-object v5, Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/evictionCount$onMessageChannelReady$ICustomTabsCallback;

    invoke-static {v4, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    .line 5069
    invoke-static {v8, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5070
    sget-object v4, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    invoke-static {v8, v7, v2}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5033
    :cond_6
    iget-wide v2, v3, Lo/evictionCount;->ICustomTabsCallback:J

    sub-long/2addr v11, v2

    .line 2251
    new-instance v2, Lo/layoutChildLeft$onMessageChannelReady;

    invoke-direct {v2, v1, v0}, Lo/layoutChildLeft$onMessageChannelReady;-><init>(Lo/getViewListMeasuredWidth;Lo/layoutChildLeft;)V

    check-cast v2, Lo/getServerTime;

    const-string v3, "command"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6018
    new-instance v3, Lo/updateItemAt$extraCallback;

    invoke-direct {v3, v2}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-static {v11, v12, v3}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    goto :goto_0

    .line 2256
    :cond_7
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 7016
    iget-object v2, v1, Lo/getViewListMeasuredWidth;->ICustomTabsCallback:Landroidx/fragment/app/Fragment;

    .line 2257
    invoke-virtual {v0, v2}, Lo/layoutChildLeft;->onMessageChannelReady(Landroidx/fragment/app/Fragment;)V

    .line 2259
    :goto_0
    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 52
    :cond_8
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
