.class final Lo/getChildAdapterPosition$ICustomTabsCallback;
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
        "Lo/findContainingItemView$onNavigationEvent;",
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
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/machine/WinMachineViewModel$WinMachineViewData;",
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
.field private synthetic onNavigationEvent:Lo/toDebugString$onPostMessage;

.field final synthetic onPostMessage:Lo/getChildAdapterPosition;


# direct methods
.method constructor <init>(Lo/getChildAdapterPosition;Lo/toDebugString$onPostMessage;)V
    .locals 0

    iput-object p1, p0, Lo/getChildAdapterPosition$ICustomTabsCallback;->onPostMessage:Lo/getChildAdapterPosition;

    iput-object p2, p0, Lo/getChildAdapterPosition$ICustomTabsCallback;->onNavigationEvent:Lo/toDebugString$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 45
    check-cast p1, Lo/findContainingItemView$onNavigationEvent;

    .line 1175
    iget-object v0, p0, Lo/getChildAdapterPosition$ICustomTabsCallback;->onPostMessage:Lo/getChildAdapterPosition;

    invoke-static {v0}, Lo/getChildAdapterPosition;->ICustomTabsCallback(Lo/getChildAdapterPosition;)Lo/findContainingItemView$onNavigationEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, v0, Lo/findContainingItemView$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;

    if-eqz v0, :cond_0

    .line 2040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2302
    :goto_0
    iget-object v1, p1, Lo/findContainingItemView$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;

    .line 3040
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1175
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1176
    iget-object v0, p0, Lo/getChildAdapterPosition$ICustomTabsCallback;->onPostMessage:Lo/getChildAdapterPosition;

    invoke-static {v0, p1}, Lo/getChildAdapterPosition;->onMessageChannelReady(Lo/getChildAdapterPosition;Lo/findContainingItemView$onNavigationEvent;)V

    .line 1178
    :cond_1
    iget-object v0, p0, Lo/getChildAdapterPosition$ICustomTabsCallback;->onPostMessage:Lo/getChildAdapterPosition;

    invoke-static {v0}, Lo/getChildAdapterPosition;->ICustomTabsCallback(Lo/getChildAdapterPosition;)Lo/findContainingItemView$onNavigationEvent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3301
    iget v0, v0, Lo/findContainingItemView$onNavigationEvent;->ICustomTabsCallback:I

    .line 1179
    iget-object v1, p0, Lo/getChildAdapterPosition$ICustomTabsCallback;->onPostMessage:Lo/getChildAdapterPosition;

    invoke-static {v1}, Lo/getChildAdapterPosition;->ICustomTabsCallback(Lo/getChildAdapterPosition;)Lo/findContainingItemView$onNavigationEvent;

    move-result-object v2

    if-ne v2, p1, :cond_2

    iget-object p1, p0, Lo/getChildAdapterPosition$ICustomTabsCallback;->onPostMessage:Lo/getChildAdapterPosition;

    invoke-static {p1}, Lo/getChildAdapterPosition;->ICustomTabsCallback(Lo/getChildAdapterPosition;)Lo/findContainingItemView$onNavigationEvent;

    :cond_2
    invoke-static {v1, v0}, Lo/getChildAdapterPosition;->onNavigationEvent(Lo/getChildAdapterPosition;I)V

    .line 1181
    :cond_3
    iget-object p1, p0, Lo/getChildAdapterPosition$ICustomTabsCallback;->onNavigationEvent:Lo/toDebugString$onPostMessage;

    iget-object v0, p0, Lo/getChildAdapterPosition$ICustomTabsCallback;->onPostMessage:Lo/getChildAdapterPosition;

    invoke-static {v0}, Lo/getChildAdapterPosition;->ICustomTabsCallback(Lo/getChildAdapterPosition;)Lo/findContainingItemView$onNavigationEvent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5301
    iget v0, v0, Lo/findContainingItemView$onNavigationEvent;->ICustomTabsCallback:I

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    .line 1181
    :goto_1
    iput v0, p1, Lo/toDebugString$onPostMessage;->onPostMessage:I

    .line 1182
    iget-object p1, p0, Lo/getChildAdapterPosition$ICustomTabsCallback;->onPostMessage:Lo/getChildAdapterPosition;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->pullDownMachine:I

    invoke-virtual {p1, v0}, Lo/getChildAdapterPosition;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setPreserveFocusAfterLayout;

    const-string v0, "pullDownMachine"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lo/getChildAdapterPosition$ICustomTabsCallback;->onPostMessage:Lo/getChildAdapterPosition;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v0

    const-string/jumbo v1, "viewLifecycleOwner"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/toLegacyStreamType;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string/jumbo v1, "viewLifecycleOwner.lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x12c

    new-instance v3, Lo/getChildAdapterPosition$ICustomTabsCallback$5;

    invoke-direct {v3, p0}, Lo/getChildAdapterPosition$ICustomTabsCallback$5;-><init>(Lo/getChildAdapterPosition$ICustomTabsCallback;)V

    check-cast v3, Lo/getServerTime;

    invoke-static {p1, v0, v1, v2, v3}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    return-void
.end method
