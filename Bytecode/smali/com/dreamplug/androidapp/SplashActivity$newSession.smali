.class final Lcom/dreamplug/androidapp/SplashActivity$newSession;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/androidapp/SplashActivity;-><init>()V
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
        "Lo/getThumbTintList<",
        "+",
        "Lo/toggle;",
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
        "Lcom/dreamplug/androidapp/core/Event;",
        "Lcom/dreamplug/androidapp/data/repository/referral/ReferralDataModel;",
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
.field private synthetic ICustomTabsCallback:Lcom/dreamplug/androidapp/SplashActivity;


# direct methods
.method constructor <init>(Lcom/dreamplug/androidapp/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/androidapp/SplashActivity$newSession;->ICustomTabsCallback:Lcom/dreamplug/androidapp/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 8

    .line 50
    check-cast p1, Lo/getThumbTintList;

    if-eqz p1, :cond_3

    .line 3011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3015
    :cond_0
    iput-boolean v1, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 3016
    iget-object v0, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 2133
    :goto_0
    check-cast v0, Lo/toggle;

    if-nez v0, :cond_1

    .line 3023
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 2133
    move-object v0, p1

    check-cast v0, Lo/toggle;

    .line 2134
    :cond_1
    iget-object p1, p0, Lcom/dreamplug/androidapp/SplashActivity$newSession;->ICustomTabsCallback:Lcom/dreamplug/androidapp/SplashActivity;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->referralStringTextView:I

    invoke-virtual {p1, v2}, Lcom/dreamplug/androidapp/SplashActivity;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string v2, "referralStringTextView"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 2135
    new-instance p1, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {p1}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 2136
    iget-object v4, p0, Lcom/dreamplug/androidapp/SplashActivity$newSession;->ICustomTabsCallback:Lcom/dreamplug/androidapp/SplashActivity;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->parentLayout:I

    invoke-virtual {v4, v5}, Lcom/dreamplug/androidapp/SplashActivity;->onPostMessage(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/onChildrenLoaded;

    invoke-virtual {p1, v4}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(Lo/onChildrenLoaded;)V

    const v4, 0x7f0b06c5

    .line 3528
    invoke-virtual {p1, v4}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v4

    iput v3, v4, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    const v4, 0x7f0b06c4

    .line 4528
    invoke-virtual {p1, v4}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v4

    iput v3, v4, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 2140
    iget-object v4, p0, Lcom/dreamplug/androidapp/SplashActivity$newSession;->ICustomTabsCallback:Lcom/dreamplug/androidapp/SplashActivity;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->parentLayout:I

    invoke-virtual {v4, v5}, Lcom/dreamplug/androidapp/SplashActivity;->onPostMessage(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/onChildrenLoaded;

    invoke-static {v4}, Lo/MediaSessionCompat$QueueItem;->onNavigationEvent(Landroid/view/ViewGroup;)V

    .line 2141
    iget-object v4, p0, Lcom/dreamplug/androidapp/SplashActivity$newSession;->ICustomTabsCallback:Lcom/dreamplug/androidapp/SplashActivity;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->parentLayout:I

    invoke-virtual {v4, v5}, Lcom/dreamplug/androidapp/SplashActivity;->onPostMessage(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/onChildrenLoaded;

    invoke-virtual {p1, v4}, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent(Lo/onChildrenLoaded;)V

    :cond_2
    const/4 p1, 0x7

    new-array v4, p1, [Lo/addWrite;

    .line 5012
    iget-object v5, v0, Lo/toggle;->onNavigationEvent:Ljava/lang/String;

    .line 5043
    new-instance v6, Lo/addWrite;

    const-string v7, "referral_campaign_id"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v3

    .line 6012
    iget-object v3, v0, Lo/toggle;->ICustomTabsCallback:Ljava/lang/String;

    .line 6043
    new-instance v5, Lo/addWrite;

    const-string v6, "referral_experiment"

    invoke-direct {v5, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v4, v1

    const/4 v1, 0x2

    .line 7012
    iget-boolean v3, v0, Lo/toggle;->onPostMessage:Z

    .line 2146
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 7043
    new-instance v5, Lo/addWrite;

    const-string v6, "is_gifting"

    invoke-direct {v5, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v4, v1

    const/4 v1, 0x3

    .line 8012
    iget-object v3, v0, Lo/toggle;->asBinder:Ljava/lang/String;

    .line 8043
    new-instance v5, Lo/addWrite;

    const-string v6, "referral_link_created_on"

    invoke-direct {v5, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v4, v1

    const/4 v1, 0x4

    .line 9012
    iget-object v3, v0, Lo/toggle;->onTransact:Ljava/lang/String;

    .line 9043
    new-instance v5, Lo/addWrite;

    const-string v6, "referral_link_screen"

    invoke-direct {v5, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v4, v1

    const/4 v1, 0x5

    .line 10012
    iget-object v3, v0, Lo/toggle;->onRelationshipValidationResult:Ljava/lang/String;

    .line 10043
    new-instance v5, Lo/addWrite;

    const-string v6, "referral_link_source"

    invoke-direct {v5, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v4, v1

    const/4 v1, 0x6

    .line 11012
    iget-object v3, v0, Lo/toggle;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 11043
    new-instance v5, Lo/addWrite;

    const-string v6, "referral_link_instrument_id"

    invoke-direct {v5, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v4, v1

    const-string v1, "pairs"

    .line 2143
    invoke-static {v4, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "referee_shown"

    .line 2143
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 2152
    iget-object p1, p0, Lcom/dreamplug/androidapp/SplashActivity$newSession;->ICustomTabsCallback:Lcom/dreamplug/androidapp/SplashActivity;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->referralStringTextView:I

    invoke-virtual {p1, v1}, Lcom/dreamplug/androidapp/SplashActivity;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12012
    iget-object v0, v0, Lo/toggle;->extraCallback:Ljava/lang/String;

    .line 2152
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has referred you to CRED"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
