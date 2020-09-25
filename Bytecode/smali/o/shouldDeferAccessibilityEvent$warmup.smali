.class final Lo/shouldDeferAccessibilityEvent$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/shouldDeferAccessibilityEvent;->onCreate(Landroid/os/Bundle;)V
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
.field private synthetic extraCallback:Lo/shouldDeferAccessibilityEvent;


# direct methods
.method constructor <init>(Lo/shouldDeferAccessibilityEvent;)V
    .locals 0

    iput-object p1, p0, Lo/shouldDeferAccessibilityEvent$warmup;->extraCallback:Lo/shouldDeferAccessibilityEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 8

    .line 59
    check-cast p1, Lo/throwIfInMutationOperation;

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2015
    iput-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1193
    :goto_0
    check-cast p1, Lo/findContainingItemView$onMessageChannelReady;

    if-eqz p1, :cond_1

    .line 1194
    new-instance v7, Lo/onGenericMotionEvent;

    iget-object v0, p0, Lo/shouldDeferAccessibilityEvent$warmup;->extraCallback:Lo/shouldDeferAccessibilityEvent;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "requireContext()"

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1195
    iget-object v0, p0, Lo/shouldDeferAccessibilityEvent$warmup;->extraCallback:Lo/shouldDeferAccessibilityEvent;

    invoke-static {v0}, Lo/shouldDeferAccessibilityEvent;->onMessageChannelReady(Lo/shouldDeferAccessibilityEvent;)Lo/onDetach$IconCompatParcelizer;

    move-result-object v0

    .line 2196
    iget-object v2, v0, Lo/onDetach$IconCompatParcelizer;->extraCallback:Ljava/lang/String;

    .line 2321
    iget-object v3, p1, Lo/findContainingItemView$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    .line 3321
    iget-object v4, p1, Lo/findContainingItemView$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    .line 4321
    iget-object v5, p1, Lo/findContainingItemView$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    const-string v6, "details"

    move-object v0, v7

    .line 1194
    invoke-direct/range {v0 .. v6}, Lo/onGenericMotionEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method
