.class final Lo/setExitSharedElementCallback$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setExitSharedElementCallback;-><init>()V
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
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;",
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
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;",
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
.field private synthetic onNavigationEvent:Lo/setExitSharedElementCallback;


# direct methods
.method constructor <init>(Lo/setExitSharedElementCallback;)V
    .locals 0

    iput-object p1, p0, Lo/setExitSharedElementCallback$onNavigationEvent;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 57
    check-cast p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;

    if-eqz p1, :cond_5

    .line 1108
    iget-object v0, p0, Lo/setExitSharedElementCallback$onNavigationEvent;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1514
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 1109
    iget-object v0, p0, Lo/setExitSharedElementCallback$onNavigationEvent;->onNavigationEvent:Lo/setExitSharedElementCallback;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->bankGroup:I

    invoke-virtual {v0, v3}, Lo/setExitSharedElementCallback;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    const-string v3, "bankGroup"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1110
    iget-object v0, p0, Lo/setExitSharedElementCallback$onNavigationEvent;->onNavigationEvent:Lo/setExitSharedElementCallback;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->bankName:I

    invoke-virtual {v0, v3}, Lo/setExitSharedElementCallback;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "bankName"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3013
    iget-object v3, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->onNavigationEvent:Ljava/lang/String;

    .line 1110
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3015
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->onPostMessage:Ljava/lang/String;

    .line 1111
    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    const-string v0, "bankIcon"

    if-eqz v1, :cond_4

    .line 3017
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->extraCallback:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 1113
    sget-object v1, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    invoke-static {p1}, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1114
    iget-object v1, p0, Lo/setExitSharedElementCallback$onNavigationEvent;->onNavigationEvent:Lo/setExitSharedElementCallback;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->bankIcon:I

    invoke-virtual {v1, v2}, Lo/setExitSharedElementCallback;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lo/remove;->onNavigationEvent(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 1118
    :cond_4
    iget-object v1, p0, Lo/setExitSharedElementCallback$onNavigationEvent;->onNavigationEvent:Lo/setExitSharedElementCallback;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->bankIcon:I

    invoke-virtual {v1, v2}, Lo/setExitSharedElementCallback;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4015
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitBankInfoResponse;->onPostMessage:Ljava/lang/String;

    .line 1118
    invoke-static {v1, p1}, Lo/remove;->onNavigationEvent(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
