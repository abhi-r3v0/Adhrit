.class final Lo/supportsPredictiveItemAnimations$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/supportsPredictiveItemAnimations;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lo/throwIfInMutationOperation<",
        "+",
        "Lo/addWrite<",
        "+",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;",
        "+",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012:\u0010\u0002\u001a6\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004 \u0006*\u001a\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Lcom/dreamplug/utils/Event;",
        "Lkotlin/Pair;",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;",
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
.field private synthetic onMessageChannelReady:Lo/supportsPredictiveItemAnimations;


# direct methods
.method constructor <init>(Lo/supportsPredictiveItemAnimations;)V
    .locals 0

    iput-object p1, p0, Lo/supportsPredictiveItemAnimations$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/supportsPredictiveItemAnimations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 6

    .line 38
    check-cast p1, Lo/throwIfInMutationOperation;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2011
    iget-boolean v2, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 2015
    :cond_0
    iput-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object v2, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1105
    :goto_0
    check-cast v2, Lo/addWrite;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 2027
    iget-object v3, v2, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1106
    check-cast v3, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    if-eqz v2, :cond_3

    .line 2028
    iget-object v2, v2, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1107
    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_4

    .line 1109
    iget-object p1, p0, Lo/supportsPredictiveItemAnimations$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/supportsPredictiveItemAnimations;

    invoke-virtual {p1}, Lo/supportsPredictiveItemAnimations;->asInterface()V

    return-void

    :cond_4
    if-eqz v3, :cond_12

    .line 3016
    iget-object p1, v3, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/Status;

    if-eqz p1, :cond_5

    .line 1111
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/lending/model/Status;->getStatus_type()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_5
    move-object p1, v1

    :goto_4
    const-string v2, "SUCCESS"

    invoke-static {v2, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 4015
    iget-object p1, v3, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;

    if-eqz p1, :cond_10

    .line 4153
    iget-object v3, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->notify:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;

    if-eqz v3, :cond_10

    .line 5153
    iget-object v3, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->notify:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;

    .line 6137
    iget-object v4, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->extraCommand:Ljava/lang/Boolean;

    .line 1116
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1117
    iget-object v0, p0, Lo/supportsPredictiveItemAnimations$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/supportsPredictiveItemAnimations;

    .line 7046
    iget-object v0, v0, Lo/supportsPredictiveItemAnimations;->onNavigationEvent:Lo/requireView;

    if-nez v0, :cond_6

    const-string v1, "multiTextFadeBehaviour"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1117
    :cond_6
    invoke-virtual {v0}, Lo/requireView;->onPostMessage()V

    goto :goto_6

    .line 7451
    :cond_7
    iget-object v4, v3, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;->onPostMessage:Ljava/lang/String;

    if-eqz v4, :cond_9

    if-eqz v4, :cond_8

    .line 1120
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "(this as java.lang.String).toUpperCase()"

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_5
    if-nez v1, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const v5, -0x447f341d

    if-eq v4, v5, :cond_c

    const v0, -0x15f84296

    if-eq v4, v0, :cond_b

    goto :goto_6

    :cond_b
    const-string v0, "FAILURE"

    .line 1133
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1134
    iget-object p1, p0, Lo/supportsPredictiveItemAnimations$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/supportsPredictiveItemAnimations;

    invoke-virtual {p1}, Lo/supportsPredictiveItemAnimations;->asInterface()V

    return-void

    .line 1121
    :cond_c
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1122
    iget-object v1, p0, Lo/supportsPredictiveItemAnimations$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/supportsPredictiveItemAnimations;

    invoke-static {v1}, Lo/supportsPredictiveItemAnimations;->onMessageChannelReady(Lo/supportsPredictiveItemAnimations;)Lo/setRecycleChildrenOnDetach;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-static {v3}, Lo/setRecycleChildrenOnDetach;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;)Z

    move-result v1

    if-ne v1, v0, :cond_e

    .line 1124
    iget-object p1, p0, Lo/supportsPredictiveItemAnimations$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/supportsPredictiveItemAnimations;

    invoke-static {p1}, Lo/supportsPredictiveItemAnimations;->ICustomTabsCallback(Lo/supportsPredictiveItemAnimations;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1125
    iget-object p1, p0, Lo/supportsPredictiveItemAnimations$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/supportsPredictiveItemAnimations;

    .line 8450
    iget-object v0, v3, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;->extraCallback:Lo/getThumbScrollRange;

    .line 1125
    invoke-static {p1, v0}, Lo/supportsPredictiveItemAnimations;->onNavigationEvent(Lo/supportsPredictiveItemAnimations;Lo/getThumbScrollRange;)V

    return-void

    .line 1127
    :cond_d
    iget-object p1, p0, Lo/supportsPredictiveItemAnimations$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/supportsPredictiveItemAnimations;

    invoke-static {p1}, Lo/supportsPredictiveItemAnimations;->onPostMessage(Lo/supportsPredictiveItemAnimations;)V

    return-void

    .line 1130
    :cond_e
    iget-object v0, p0, Lo/supportsPredictiveItemAnimations$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/supportsPredictiveItemAnimations;

    .line 9155
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->cancelAll:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;

    .line 1130
    invoke-static {v0, p1}, Lo/supportsPredictiveItemAnimations;->ICustomTabsCallback(Lo/supportsPredictiveItemAnimations;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;)V

    return-void

    .line 1138
    :cond_f
    :goto_6
    iget-object v0, p0, Lo/supportsPredictiveItemAnimations$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/supportsPredictiveItemAnimations;

    .line 10155
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->cancelAll:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;

    .line 1138
    invoke-static {v0, p1}, Lo/supportsPredictiveItemAnimations;->ICustomTabsCallback(Lo/supportsPredictiveItemAnimations;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$PollingData;)V

    :cond_10
    return-void

    .line 1148
    :cond_11
    iget-object p1, p0, Lo/supportsPredictiveItemAnimations$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/supportsPredictiveItemAnimations;

    invoke-virtual {p1}, Lo/supportsPredictiveItemAnimations;->asInterface()V

    return-void

    :cond_12
    if-eqz p1, :cond_13

    .line 11023
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1150
    check-cast p1, Lo/addWrite;

    if-eqz p1, :cond_13

    .line 11027
    iget-object p1, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1150
    move-object v1, p1

    check-cast v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;

    :cond_13
    if-eqz v1, :cond_14

    .line 1151
    iget-object p1, p0, Lo/supportsPredictiveItemAnimations$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/supportsPredictiveItemAnimations;

    invoke-virtual {p1}, Lo/supportsPredictiveItemAnimations;->asInterface()V

    :cond_14
    return-void
.end method
