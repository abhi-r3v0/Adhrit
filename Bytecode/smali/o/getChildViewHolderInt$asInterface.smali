.class final Lo/getChildViewHolderInt$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getChildViewHolderInt;
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
        "Lo/findContainingItemView$onMessageChannelReady;",
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
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/machine/WinMachineViewModel$OpenInadequateCurrencyDialog;",
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
.field final synthetic onPostMessage:Lo/getChildViewHolderInt;


# direct methods
.method constructor <init>(Lo/getChildViewHolderInt;)V
    .locals 0

    iput-object p1, p0, Lo/getChildViewHolderInt$asInterface;->onPostMessage:Lo/getChildViewHolderInt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 10

    .line 54
    check-cast p1, Lo/throwIfInMutationOperation;

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2015
    iput-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1238
    :goto_0
    check-cast p1, Lo/findContainingItemView$onMessageChannelReady;

    if-eqz p1, :cond_3

    .line 1239
    iget-object v0, p0, Lo/getChildViewHolderInt$asInterface;->onPostMessage:Lo/getChildViewHolderInt;

    invoke-static {v0}, Lo/getChildViewHolderInt;->onNavigationEvent(Lo/getChildViewHolderInt;)Lo/findContainingItemView;

    move-result-object v0

    .line 2065
    iget-object v0, v0, Lo/findContainingItemView;->asInterface:Lo/setActive;

    .line 1239
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1240
    new-instance v0, Lo/onGenericMotionEvent;

    iget-object v2, p0, Lo/getChildViewHolderInt$asInterface;->onPostMessage:Lo/getChildViewHolderInt;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v2, "requireContext()"

    invoke-static {v4, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1241
    iget-object v2, p0, Lo/getChildViewHolderInt$asInterface;->onPostMessage:Lo/getChildViewHolderInt;

    invoke-static {v2}, Lo/getChildViewHolderInt;->onNavigationEvent(Lo/getChildViewHolderInt;)Lo/findContainingItemView;

    move-result-object v2

    .line 3037
    iget-object v2, v2, Lo/findContainingItemView;->extraCallback:Lo/setActive;

    check-cast v2, Landroidx/lifecycle/LiveData;

    .line 3320
    iget-object v2, v2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 1241
    :goto_1
    check-cast v2, Lo/findContainingItemView$onNavigationEvent;

    if-eqz v2, :cond_2

    .line 4302
    iget-object v2, v2, Lo/findContainingItemView$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;

    if-eqz v2, :cond_2

    .line 5029
    iget-object v1, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;->onPostMessage:Ljava/lang/String;

    :cond_2
    move-object v5, v1

    .line 5321
    iget-object v6, p1, Lo/findContainingItemView$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    .line 6321
    iget-object v7, p1, Lo/findContainingItemView$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    .line 7321
    iget-object v8, p1, Lo/findContainingItemView$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    const-string v9, "machine_drop"

    move-object v3, v0

    .line 1240
    invoke-direct/range {v3 .. v9}, Lo/onGenericMotionEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    new-instance p1, Lo/getChildViewHolderInt$asInterface$onPostMessage;

    invoke-direct {p1, p0}, Lo/getChildViewHolderInt$asInterface$onPostMessage;-><init>(Lo/getChildViewHolderInt$asInterface;)V

    check-cast p1, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1248
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void
.end method
