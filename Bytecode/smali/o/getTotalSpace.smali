.class public final Lo/getTotalSpace;
.super Lo/findLastVisibleItemPositions;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getTotalSpace$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\tH\u0016J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u0016\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/renew/RenewLivesFragment;",
        "Lcom/dreamplug/widget/BottomSheetFragment;",
        "()V",
        "currencyObserver",
        "Landroidx/lifecycle/Observer;",
        "Lclub/cred/credcurrency/CredPointCountModel;",
        "redeemSheet",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/ShowRedeemSheet;",
        "getHeaderLayoutResource",
        "",
        "getLayoutResource",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/getTotalSpace$onNavigationEvent;


# instance fields
.field private ICustomTabsCallback:Lo/getStartAfterPadding;

.field private final onMessageChannelReady:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lclub/cred/credcurrency/CredPointCountModel;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/getTotalSpace$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getTotalSpace$onNavigationEvent;-><init>(B)V

    sput-object v0, Lo/getTotalSpace;->extraCallback:Lo/getTotalSpace$onNavigationEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lo/findLastVisibleItemPositions;-><init>()V

    .line 88
    new-instance v0, Lo/getTotalSpace$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/getTotalSpace$ICustomTabsCallback;-><init>(Lo/getTotalSpace;)V

    check-cast v0, Lo/setPlaybackToRemote;

    iput-object v0, p0, Lo/getTotalSpace;->onMessageChannelReady:Lo/setPlaybackToRemote;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/getTotalSpace;)Lo/getStartAfterPadding;
    .locals 1

    .line 34
    iget-object p0, p0, Lo/getTotalSpace;->ICustomTabsCallback:Lo/getStartAfterPadding;

    if-nez p0, :cond_0

    const-string v0, "redeemSheet"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    iget-object v0, p0, Lo/getTotalSpace;->onPostMessage:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lo/findLastVisibleItemPositions;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {p0}, Lo/extraCallback;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)Landroid/os/Parcelable;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast p1, Lo/getStartAfterPadding;

    iput-object p1, p0, Lo/getTotalSpace;->ICustomTabsCallback:Lo/getStartAfterPadding;

    return-void
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/findLastVisibleItemPositions;->onDestroyView()V

    .line 14000
    iget-object v0, p0, Lo/getTotalSpace;->onPostMessage:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()I
    .locals 1

    const v0, 0x7f0e0048

    return v0
.end method

.method public final onMessageChannelReady(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/getTotalSpace;->onPostMessage:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getTotalSpace;->onPostMessage:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/getTotalSpace;->onPostMessage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/getTotalSpace;->onPostMessage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    const v0, 0x7f0e00cd

    return v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-super {p0, p1, p2}, Lo/findLastVisibleItemPositions;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 49
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->title:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string/jumbo p2, "title"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/getTotalSpace;->ICustomTabsCallback:Lo/getStartAfterPadding;

    const-string v0, "redeemSheet"

    if-nez p2, :cond_0

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1087
    :cond_0
    iget-object p2, p2, Lo/getStartAfterPadding;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails$LifeDetails;

    .line 2052
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails$LifeDetails;->extraCallback:Ljava/lang/String;

    .line 49
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->desc:I

    invoke-virtual {p0, p1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "desc"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/getTotalSpace;->ICustomTabsCallback:Lo/getStartAfterPadding;

    if-nez p2, :cond_1

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2087
    :cond_1
    iget-object p2, p2, Lo/getStartAfterPadding;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails$LifeDetails;

    .line 3056
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails$LifeDetails;->asInterface:Ljava/lang/String;

    .line 50
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "placeholderText"

    .line 52
    sget-object p2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const p2, 0x7f130252

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2, v2}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 53
    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    .line 4005
    invoke-static {v2, p1, v3, v3}, Lo/childWrites;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v4

    .line 53
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5005
    invoke-static {v2, p1, v3, v3}, Lo/childWrites;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p1

    add-int/lit8 p1, p1, 0xf

    .line 54
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, p1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 56
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {p0, p2}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/recycleFromEnd;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    const-string v5, "context!!"

    invoke-static {v2, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance v5, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;

    invoke-direct {v5, v2}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "span"

    .line 57
    invoke-static {v4, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5059
    iget-object v6, v5, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 58
    iget-object v4, p0, Lo/getTotalSpace;->ICustomTabsCallback:Lo/getStartAfterPadding;

    if-nez v4, :cond_3

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 5087
    :cond_3
    iget-object v4, v4, Lo/getStartAfterPadding;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails$LifeDetails;

    .line 6046
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails$LifeDetails;->onMessageChannelReady:Ljava/lang/String;

    const-string v6, "COINS"

    .line 58
    invoke-static {v4, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "\ue900"

    .line 59
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->ICustomTabsCallback(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6059
    iget-object v6, v5, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "\ue901"

    .line 61
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->ICustomTabsCallback(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7059
    iget-object v6, v5, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_0
    const-string v4, " "

    .line 63
    invoke-virtual {v5, v4}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)V

    .line 64
    iget-object v4, p0, Lo/getTotalSpace;->ICustomTabsCallback:Lo/getStartAfterPadding;

    if-nez v4, :cond_5

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 7087
    :cond_5
    iget-object v4, v4, Lo/getStartAfterPadding;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails$LifeDetails;

    .line 8048
    iget v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails$LifeDetails;->onPostMessage:I

    .line 64
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    const/16 v6, 0x3e

    const/4 v7, 0x0

    invoke-static {v4, v3, v7, v7, v6}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/Number;ZLjava/lang/String;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8059
    iget-object v6, v5, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 65
    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9059
    iget-object v2, v5, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 9156
    iget-object p1, v5, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    check-cast p1, Ljava/lang/CharSequence;

    .line 118
    invoke-virtual {p2, p1}, Lo/recycleFromEnd;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object p1, p0, Lo/getTotalSpace;->ICustomTabsCallback:Lo/getStartAfterPadding;

    if-nez p1, :cond_6

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 10087
    :cond_6
    iget-object p1, p1, Lo/getStartAfterPadding;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails$LifeDetails;

    .line 11054
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails$LifeDetails;->onNavigationEvent:Ljava/lang/String;

    .line 68
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->lottieView:I

    invoke-virtual {p0, p2}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "lottieView"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    const/16 v3, 0x8

    .line 119
    :goto_2
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_9

    .line 70
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->lottieView:I

    invoke-virtual {p0, p2}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lo/extraCallback;->ICustomTabsCallback(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)Lo/setMaxWidth$onNavigationEvent;

    .line 72
    :cond_9
    sget-object p1, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    .line 12000
    sget-object p1, Lo/onPanelClosed;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 72
    iget-object p2, p0, Lo/getTotalSpace;->onMessageChannelReady:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 73
    sget-object p1, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    .line 13000
    sget-object p1, Lo/onPanelClosed;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 73
    move-object p2, p0

    check-cast p2, Lo/toLegacyStreamType;

    iget-object v0, p0, Lo/getTotalSpace;->onMessageChannelReady:Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_a

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_a
    const-string p2, "parentFragment!!"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/removeOnActiveChangeListener;

    .line 121
    new-instance p2, Lo/setMetadata;

    invoke-direct {p2, p1}, Lo/setMetadata;-><init>(Lo/removeOnActiveChangeListener;)V

    const-class p1, Lo/findTargetSnapPosition;

    invoke-virtual {p2, p1}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object p1

    const-string p2, "ViewModelProvider(this).get(T::class.java)"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    check-cast p1, Lo/findTargetSnapPosition;

    .line 75
    sget p2, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {p0, p2}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/recycleFromEnd;

    const-string v0, "ctaButton"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    new-instance v0, Lo/getTotalSpace$extraCallback;

    invoke-direct {v0, p0, p1}, Lo/getTotalSpace$extraCallback;-><init>(Lo/getTotalSpace;Lo/findTargetSnapPosition;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p2, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method
