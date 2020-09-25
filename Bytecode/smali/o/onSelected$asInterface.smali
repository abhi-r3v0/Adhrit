.class final Lo/onSelected$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onSelected;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onNavigationEvent:Lo/onSelected;


# direct methods
.method constructor <init>(Lo/onSelected;)V
    .locals 0

    iput-object p1, p0, Lo/onSelected$asInterface;->onNavigationEvent:Lo/onSelected;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 6

    .line 54
    check-cast p1, Lo/throwIfInMutationOperation;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2011
    iget-boolean v2, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v2, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 2015
    :cond_0
    iput-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1113
    :goto_0
    check-cast p1, Lo/addWrite;

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_2

    .line 2027
    iget-object v2, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1114
    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    if-eqz p1, :cond_3

    .line 2028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1115
    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;

    goto :goto_3

    :cond_3
    move-object p1, v1

    :goto_3
    const/4 v3, 0x0

    if-nez p1, :cond_b

    if-eqz v2, :cond_c

    .line 3016
    iget-object p1, v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lending/model/Status;

    if-eqz p1, :cond_4

    .line 1119
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/lending/model/Status;->getStatus_type()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_4
    move-object p1, v1

    :goto_4
    const-string v4, "SUCCESS"

    invoke-static {v4, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 4015
    iget-object p1, v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;

    if-eqz p1, :cond_a

    .line 4153
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->notify:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;

    if-eqz v2, :cond_a

    .line 5153
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->notify:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;

    .line 5451
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;->onPostMessage:Ljava/lang/String;

    if-eqz v2, :cond_6

    if-eqz v2, :cond_5

    .line 1124
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toUpperCase()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_5
    if-nez v1, :cond_7

    return-void

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v5, -0x447f341d

    if-eq v2, v5, :cond_9

    const p1, -0x15f84296

    if-eq v2, p1, :cond_8

    goto :goto_6

    :cond_8
    const-string p1, "FAILURE"

    .line 1131
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1132
    iget-object p1, p0, Lo/onSelected$asInterface;->onNavigationEvent:Lo/onSelected;

    invoke-static {p1, v3}, Lo/onSelected;->onPostMessage(Lo/onSelected;Z)V

    goto :goto_6

    .line 1125
    :cond_9
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1126
    iget-object v1, p0, Lo/onSelected$asInterface;->onNavigationEvent:Lo/onSelected;

    invoke-static {v1}, Lo/onSelected;->onMessageChannelReady(Lo/onSelected;)Lo/setRecycleChildrenOnDetach;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {p1}, Lo/setRecycleChildrenOnDetach;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenDataFlow;)Z

    move-result p1

    if-ne p1, v0, :cond_a

    .line 1128
    iget-object p1, p0, Lo/onSelected$asInterface;->onNavigationEvent:Lo/onSelected;

    invoke-static {p1, v0}, Lo/onSelected;->onPostMessage(Lo/onSelected;Z)V

    :cond_a
    :goto_6
    return-void

    .line 1140
    :cond_b
    iget-object p1, p0, Lo/onSelected$asInterface;->onNavigationEvent:Lo/onSelected;

    invoke-static {p1, v3}, Lo/onSelected;->onPostMessage(Lo/onSelected;Z)V

    :cond_c
    return-void
.end method
