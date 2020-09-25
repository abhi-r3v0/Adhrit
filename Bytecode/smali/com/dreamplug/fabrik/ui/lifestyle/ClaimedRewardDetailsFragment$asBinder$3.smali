.class final Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asBinder$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u000e"
    }
    d2 = {
        "<anonymous>",
        "",
        "v",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "onLayoutChange"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asBinder;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asBinder$3;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 149
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asBinder$3;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asBinder;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asBinder;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->rewardSectionBottomSheetView:I

    invoke-virtual {p1, p2}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    new-instance p2, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asBinder$3$5;

    invoke-direct {p2, p0, p5, p3}, Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asBinder$3$5;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardDetailsFragment$asBinder$3;II)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
