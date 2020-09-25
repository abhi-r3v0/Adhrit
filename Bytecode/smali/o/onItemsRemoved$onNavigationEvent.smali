.class final Lo/onItemsRemoved$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onItemsRemoved;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "response",
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
.field private synthetic ICustomTabsCallback:Lo/onItemsRemoved;


# direct methods
.method constructor <init>(Lo/onItemsRemoved;)V
    .locals 0

    iput-object p1, p0, Lo/onItemsRemoved$onNavigationEvent;->ICustomTabsCallback:Lo/onItemsRemoved;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 31
    check-cast p1, Lo/throwIfInMutationOperation;

    .line 2023
    iget-object v0, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1096
    check-cast v0, Lo/addWrite;

    .line 2027
    iget-object v0, v0, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1096
    check-cast v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 3023
    iget-object v0, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1097
    check-cast v0, Lo/addWrite;

    if-eqz v0, :cond_0

    .line 3028
    iget-object v0, v0, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1097
    check-cast v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    .line 4023
    iget-object v0, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1097
    check-cast v0, Lo/addWrite;

    if-eqz v0, :cond_2

    .line 4028
    iget-object v0, v0, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1097
    check-cast v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_4

    .line 1098
    :cond_3
    iget-object p1, p0, Lo/onItemsRemoved$onNavigationEvent;->ICustomTabsCallback:Lo/onItemsRemoved;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    return-void

    :cond_4
    if-eqz p1, :cond_e

    .line 5011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v0, :cond_5

    move-object p1, v1

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    .line 5015
    iput-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 5016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1100
    :goto_2
    check-cast p1, Lo/addWrite;

    if-eqz p1, :cond_e

    .line 5027
    iget-object p1, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1100
    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;

    if-eqz p1, :cond_e

    .line 6015
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;

    if-eqz v0, :cond_6

    .line 6153
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->notify:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;

    goto :goto_3

    :cond_6
    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_e

    .line 7015
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;

    .line 7153
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->notify:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;

    .line 7451
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;->onPostMessage:Ljava/lang/String;

    if-eqz v2, :cond_8

    if-eqz v2, :cond_7

    .line 1104
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toUpperCase()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_4
    if-nez v1, :cond_9

    return-void

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, -0x447f341d

    if-eq v2, v3, :cond_b

    const p1, -0x15f84296

    if-eq v2, p1, :cond_a

    goto :goto_5

    :cond_a
    const-string p1, "FAILURE"

    .line 1113
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1114
    iget-object p1, p0, Lo/onItemsRemoved$onNavigationEvent;->ICustomTabsCallback:Lo/onItemsRemoved;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    goto :goto_5

    :cond_b
    const-string v2, "SUCCESS"

    .line 1105
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1106
    sget-object v1, Lo/getThumbScrollRange$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/getThumbScrollRange$ICustomTabsCallback$Stub;

    .line 8450
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;->extraCallback:Lo/getThumbScrollRange;

    .line 1106
    invoke-static {v1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1108
    iget-object v0, p0, Lo/onItemsRemoved$onNavigationEvent;->ICustomTabsCallback:Lo/onItemsRemoved;

    invoke-static {v0}, Lo/onItemsRemoved;->ICustomTabsCallback(Lo/onItemsRemoved;)Lo/setRecycleChildrenOnDetach;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 9015
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;

    .line 9121
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->asInterface:Ljava/lang/String;

    .line 10069
    iput-object v1, v0, Lo/setRecycleChildrenOnDetach;->mayLaunchUrl:Ljava/lang/String;

    .line 1109
    :cond_c
    iget-object v0, p0, Lo/onItemsRemoved$onNavigationEvent;->ICustomTabsCallback:Lo/onItemsRemoved;

    invoke-static {v0}, Lo/onItemsRemoved;->ICustomTabsCallback(Lo/onItemsRemoved;)Lo/setRecycleChildrenOnDetach;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 11015
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;

    .line 11123
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 12067
    iput-object p1, v0, Lo/setRecycleChildrenOnDetach;->updateVisuals:Ljava/lang/String;

    .line 1110
    :cond_d
    iget-object p1, p0, Lo/onItemsRemoved$onNavigationEvent;->ICustomTabsCallback:Lo/onItemsRemoved;

    invoke-static {p1}, Lo/onItemsRemoved;->onMessageChannelReady(Lo/onItemsRemoved;)V

    :cond_e
    :goto_5
    return-void
.end method
