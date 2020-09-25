.class final Lo/getSpanGroupIndex$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSpanGroupIndex;-><init>()V
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
        "Lo/addWrite<",
        "+",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;",
        "+",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012.\u0010\u0002\u001a*\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005 \u0006*\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "Lkotlin/Pair;",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
.field private synthetic onNavigationEvent:Lo/getSpanGroupIndex;


# direct methods
.method constructor <init>(Lo/getSpanGroupIndex;)V
    .locals 0

    iput-object p1, p0, Lo/getSpanGroupIndex$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/getSpanGroupIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 8

    .line 79
    check-cast p1, Lo/addWrite;

    .line 2028
    iget-object v0, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1317
    iget-object v0, p0, Lo/getSpanGroupIndex$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/getSpanGroupIndex;

    invoke-static {v0}, Lo/getSpanGroupIndex;->onTransact(Lo/getSpanGroupIndex;)Lo/setReenterTransition$onPostMessage;

    move-result-object v1

    iget-object v0, p0, Lo/getSpanGroupIndex$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/getSpanGroupIndex;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "requireContext()"

    invoke-static {v2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1317
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/dreamplug/utils/model/BaseResponse;->getHeader()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1318
    :cond_0
    sget-object p1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const p1, 0x7f13050d

    invoke-static {p1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v3, p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    .line 1317
    invoke-static/range {v1 .. v7}, Lo/setReenterTransition$onPostMessage;->onMessageChannelReady(Lo/setReenterTransition$onPostMessage;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Integer;I)V

    goto/16 :goto_2

    .line 1320
    :cond_2
    iget-object v0, p0, Lo/getSpanGroupIndex$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/getSpanGroupIndex;

    invoke-static {v0}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;)Lo/setRecycleChildrenOnDetach;

    move-result-object v0

    .line 4027
    iget-object v1, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1320
    check-cast v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 5014
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;->asInterface:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 5065
    :goto_0
    iput-object v1, v0, Lo/setRecycleChildrenOnDetach;->newSession:Ljava/lang/String;

    .line 6027
    iget-object p1, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1321
    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;

    if-eqz p1, :cond_5

    .line 7016
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;->asBinder:Ljava/util/List;

    if-eqz p1, :cond_5

    const-string v0, "$this$firstOrNull"

    .line 1321
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7243
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1321
    :goto_1
    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/Payment;

    if-eqz v2, :cond_5

    .line 8034
    iget-object p1, v2, Lcom/dreamplug/fabrik/ui/lending/model/Payment;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/Attributes;

    if-eqz p1, :cond_5

    .line 8049
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/Attributes;->onPostMessage:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 1322
    iget-object v0, p0, Lo/getSpanGroupIndex$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/getSpanGroupIndex;

    invoke-static {v0}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;)Lo/setRecycleChildrenOnDetach;

    move-result-object v0

    .line 8055
    iput-object p1, v0, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 8056
    iget-object v1, v0, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    iput-object v1, v0, Lo/setRecycleChildrenOnDetach;->warmup:Ljava/lang/String;

    .line 1323
    iget-object v0, p0, Lo/getSpanGroupIndex$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/getSpanGroupIndex;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;J)V

    .line 1324
    iget-object v0, p0, Lo/getSpanGroupIndex$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/getSpanGroupIndex;

    invoke-static {v0}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;)Lo/setRecycleChildrenOnDetach;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/setRecycleChildrenOnDetach;->extraCallback(Ljava/lang/String;)V

    .line 1325
    iget-object p1, p0, Lo/getSpanGroupIndex$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/getSpanGroupIndex;

    invoke-static {p1}, Lo/getSpanGroupIndex;->onRelationshipValidationResult(Lo/getSpanGroupIndex;)Lo/isSubmitAreaEnabled$extraCallback;

    move-result-object p1

    new-instance v0, Lo/computeHorizontalScrollRange$ICustomTabsCallback$Stub$Proxy;

    new-instance v1, Lo/onDetach$read;

    iget-object v2, p0, Lo/getSpanGroupIndex$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/getSpanGroupIndex;

    invoke-static {v2}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;)Lo/setRecycleChildrenOnDetach;

    move-result-object v2

    .line 9039
    iget-boolean v2, v2, Lo/setRecycleChildrenOnDetach;->onTransact:Z

    .line 1325
    invoke-direct {v1, v2}, Lo/onDetach$read;-><init>(Z)V

    invoke-direct {v0, v1}, Lo/computeHorizontalScrollRange$ICustomTabsCallback$Stub$Proxy;-><init>(Lo/onDetach$read;)V

    check-cast v0, Lo/computeHorizontalScrollRange;

    invoke-virtual {p1, v0}, Lo/isSubmitAreaEnabled$extraCallback;->extraCallback(Lo/computeHorizontalScrollRange;)V

    .line 1328
    :cond_5
    :goto_2
    iget-object p1, p0, Lo/getSpanGroupIndex$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/getSpanGroupIndex;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p1, v0}, Lo/getSpanGroupIndex;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    invoke-virtual {p1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    return-void
.end method
