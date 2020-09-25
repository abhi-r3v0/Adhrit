.class public final Lo/getStateAfterAnimating$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getStateAfterAnimating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "t",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Object;)V",
        "androidx/lifecycle/LiveDataKt$observe$wrappedObserver$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getStateAfterAnimating;


# direct methods
.method public constructor <init>(Lo/getStateAfterAnimating;)V
    .locals 0

    iput-object p1, p0, Lo/getStateAfterAnimating$asInterface;->onMessageChannelReady:Lo/getStateAfterAnimating;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 47
    check-cast p1, Lo/supportPostponeEnterTransition;

    .line 52
    iget-object v0, p0, Lo/getStateAfterAnimating$asInterface;->onMessageChannelReady:Lo/getStateAfterAnimating;

    const-string v1, "link_email_screen_load"

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lo/getStateAfterAnimating;->onMessageChannelReady(Lo/getStateAfterAnimating;Ljava/lang/String;Ljava/util/Map;I)Lo/onSupportContentChanged;

    .line 53
    iget-object v0, p0, Lo/getStateAfterAnimating$asInterface;->onMessageChannelReady:Lo/getStateAfterAnimating;

    invoke-virtual {v0}, Lo/getStateAfterAnimating;->asBinder()Lo/ThemeUtils;

    move-result-object v0

    iget-object v0, v0, Lo/ThemeUtils;->ICustomTabsCallback$Stub$Proxy:Lo/TintTypedArray;

    iget-object v0, v0, Lo/TintTypedArray;->onNavigationEvent:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 55
    instance-of v0, p1, Lo/supportPostponeEnterTransition$onPostMessage;

    const-string v1, "binding.descriptionList"

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lo/getStateAfterAnimating$asInterface;->onMessageChannelReady:Lo/getStateAfterAnimating;

    check-cast p1, Lo/supportPostponeEnterTransition$onPostMessage;

    .line 1008
    iget v2, p1, Lo/supportPostponeEnterTransition$onPostMessage;->onMessageChannelReady:I

    .line 2008
    iget-object v3, p1, Lo/supportPostponeEnterTransition$onPostMessage;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/SubProvider;

    .line 56
    invoke-static {v0, v2, v3}, Lo/getStateAfterAnimating;->ICustomTabsCallback(Lo/getStateAfterAnimating;ILcom/dreamplug/fabrik/ui/control/SubProvider;)V

    .line 57
    iget-object v0, p0, Lo/getStateAfterAnimating$asInterface;->onMessageChannelReady:Lo/getStateAfterAnimating;

    invoke-virtual {v0}, Lo/getStateAfterAnimating;->asBinder()Lo/ThemeUtils;

    move-result-object v0

    iget-object v0, v0, Lo/ThemeUtils;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3008
    iget-object v1, p1, Lo/supportPostponeEnterTransition$onPostMessage;->ICustomTabsCallback:Lo/hasVoiceSearch$onMessageChannelReady;

    .line 4006
    iget-object v1, v1, Lo/hasVoiceSearch$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/List;

    .line 4008
    iget-object p1, p1, Lo/supportPostponeEnterTransition$onPostMessage;->ICustomTabsCallback:Lo/hasVoiceSearch$onMessageChannelReady;

    .line 5006
    iget-object p1, p1, Lo/hasVoiceSearch$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    .line 57
    invoke-static {v0, v1, p1}, Lo/extraCallback;->extraCallback(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 60
    :cond_0
    instance-of v0, p1, Lo/supportPostponeEnterTransition$onNavigationEvent;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lo/getStateAfterAnimating$asInterface;->onMessageChannelReady:Lo/getStateAfterAnimating;

    invoke-virtual {v0}, Lo/getStateAfterAnimating;->asBinder()Lo/ThemeUtils;

    move-result-object v0

    iget-object v0, v0, Lo/ThemeUtils;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/supportPostponeEnterTransition$onNavigationEvent;

    .line 5010
    iget-object v1, p1, Lo/supportPostponeEnterTransition$onNavigationEvent;->onPostMessage:Lo/hasVoiceSearch$onMessageChannelReady;

    .line 6006
    iget-object v1, v1, Lo/hasVoiceSearch$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/List;

    .line 6010
    iget-object p1, p1, Lo/supportPostponeEnterTransition$onNavigationEvent;->onPostMessage:Lo/hasVoiceSearch$onMessageChannelReady;

    .line 7006
    iget-object p1, p1, Lo/hasVoiceSearch$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    .line 61
    invoke-static {v0, v1, p1}, Lo/extraCallback;->extraCallback(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;Ljava/util/List;)V

    .line 62
    iget-object p1, p0, Lo/getStateAfterAnimating$asInterface;->onMessageChannelReady:Lo/getStateAfterAnimating;

    invoke-static {p1}, Lo/getStateAfterAnimating;->onPostMessage(Lo/getStateAfterAnimating;)V

    :cond_1
    return-void
.end method
