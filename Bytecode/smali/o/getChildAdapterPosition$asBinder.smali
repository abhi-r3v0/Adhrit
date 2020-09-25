.class final Lo/getChildAdapterPosition$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getChildAdapterPosition;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lo/findContainingItemView$ICustomTabsCallback;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/utils/Event;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/machine/WinMachineViewModel$Events;",
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
.field private synthetic onNavigationEvent:Lo/getChildAdapterPosition;


# direct methods
.method constructor <init>(Lo/getChildAdapterPosition;)V
    .locals 0

    iput-object p1, p0, Lo/getChildAdapterPosition$asBinder;->onNavigationEvent:Lo/getChildAdapterPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 5

    .line 45
    check-cast p1, Lo/throwIfInMutationOperation;

    .line 1162
    iget-object v0, p0, Lo/getChildAdapterPosition$asBinder;->onNavigationEvent:Lo/getChildAdapterPosition;

    invoke-static {v0}, Lo/getChildAdapterPosition;->ICustomTabsCallback(Lo/getChildAdapterPosition;)Lo/findContainingItemView$onNavigationEvent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, v0, Lo/findContainingItemView$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;

    if-eqz v0, :cond_0

    .line 2040
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1162
    :goto_0
    iget-object v2, p0, Lo/getChildAdapterPosition$asBinder;->onNavigationEvent:Lo/getChildAdapterPosition;

    invoke-static {v2}, Lo/getChildAdapterPosition;->onMessageChannelReady(Lo/getChildAdapterPosition;)Lo/findContainingItemView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3037
    iget-object v2, v2, Lo/findContainingItemView;->extraCallback:Lo/setActive;

    check-cast v2, Landroidx/lifecycle/LiveData;

    if-eqz v2, :cond_2

    .line 3320
    iget-object v2, v2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 1162
    :goto_1
    check-cast v2, Lo/findContainingItemView$onNavigationEvent;

    if-eqz v2, :cond_2

    .line 4302
    iget-object v2, v2, Lo/findContainingItemView$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;

    if-eqz v2, :cond_2

    .line 5040
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    .line 1162
    :goto_2
    invoke-static {v0, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    .line 6015
    iput-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 6016
    iget-object v1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1163
    :goto_3
    check-cast v1, Lo/findContainingItemView$ICustomTabsCallback;

    if-eqz v1, :cond_6

    .line 1165
    instance-of p1, v1, Lo/findContainingItemView$ICustomTabsCallback$onPostMessage;

    if-eqz p1, :cond_6

    .line 1166
    iget-object p1, p0, Lo/getChildAdapterPosition$asBinder;->onNavigationEvent:Lo/getChildAdapterPosition;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->pullDownMachine:I

    invoke-virtual {p1, v0}, Lo/getChildAdapterPosition;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setPreserveFocusAfterLayout;

    .line 6177
    iget-object v0, p1, Lo/setPreserveFocusAfterLayout;->onMessageChannelReady:Lo/rate;

    iget-object v1, p1, Lo/setPreserveFocusAfterLayout;->ICustomTabsCallback:Landroid/view/View;

    if-nez v1, :cond_4

    const-string/jumbo v2, "rewardLayout"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    iget v2, p1, Lo/setPreserveFocusAfterLayout;->ICustomTabsCallback$Stub:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lo/rate;->onPostMessage(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6178
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;)V

    .line 1167
    :cond_5
    iget-object p1, p0, Lo/getChildAdapterPosition$asBinder;->onNavigationEvent:Lo/getChildAdapterPosition;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->winLogo:I

    invoke-virtual {p1, v0}, Lo/getChildAdapterPosition;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    const-string/jumbo v0, "winLogo"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$visible"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7009
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method
