.class final Lo/onActivityResumed$newSession;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityResumed;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Ljava/lang/String;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "permission",
        "",
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
.field private synthetic extraCallback:Lo/onActivityResumed;


# direct methods
.method constructor <init>(Lo/onActivityResumed;)V
    .locals 0

    iput-object p1, p0, Lo/onActivityResumed$newSession;->extraCallback:Lo/onActivityResumed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 45
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1127
    iget-object v0, p0, Lo/onActivityResumed$newSession;->extraCallback:Lo/onActivityResumed;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->syncLottie:I

    invoke-virtual {v0, v1}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    const-string/jumbo v1, "syncLottie"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 1128
    iget-object v0, p0, Lo/onActivityResumed$newSession;->extraCallback:Lo/onActivityResumed;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->emptySearch:I

    invoke-virtual {v0, v2}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    const-string v2, "emptySearch"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1129
    iget-object v0, p0, Lo/onActivityResumed$newSession;->extraCallback:Lo/onActivityResumed;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->emptyContact:I

    invoke-virtual {v0, v2}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    const-string v2, "emptyContact"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1130
    iget-object v0, p0, Lo/onActivityResumed$newSession;->extraCallback:Lo/onActivityResumed;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {v0, v2}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v2, "title"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1131
    iget-object v0, p0, Lo/onActivityResumed$newSession;->extraCallback:Lo/onActivityResumed;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->subTitle:I

    invoke-virtual {v0, v2}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v2, "subTitle"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1132
    iget-object v0, p0, Lo/onActivityResumed$newSession;->extraCallback:Lo/onActivityResumed;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->deniedPermission:I

    invoke-virtual {v0, v1}, Lo/onActivityResumed;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    const-string v1, "deniedPermission"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1133
    iget-object v0, p0, Lo/onActivityResumed$newSession;->extraCallback:Lo/onActivityResumed;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v2}, Lo/onActivityResumed;->onPostMessage(Lo/onActivityResumed;Z)V

    .line 1134
    iget-object v0, p0, Lo/onActivityResumed$newSession;->extraCallback:Lo/onActivityResumed;

    invoke-static {v0}, Lo/onActivityResumed;->extraCallback(Lo/onActivityResumed;)Lo/onActivityResumed$onNavigationEvent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 1343
    :cond_0
    iget-boolean v0, v0, Lo/onActivityResumed$onNavigationEvent;->ICustomTabsCallback:Z

    if-eqz v0, :cond_1

    .line 1135
    iget-object v0, p0, Lo/onActivityResumed$newSession;->extraCallback:Lo/onActivityResumed;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    const/16 p1, 0x3e9

    invoke-virtual {v0, v2, p1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
