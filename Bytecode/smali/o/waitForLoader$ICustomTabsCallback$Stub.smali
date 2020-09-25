.class final Lo/waitForLoader$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/waitForLoader;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
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
        "Ljava/util/List<",
        "+",
        "Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonData;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "",
        "Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonData;",
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
.field private synthetic extraCallback:Lo/waitForLoader;


# direct methods
.method constructor <init>(Lo/waitForLoader;)V
    .locals 0

    iput-object p1, p0, Lo/waitForLoader$ICustomTabsCallback$Stub;->extraCallback:Lo/waitForLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 9

    .line 28
    check-cast p1, Ljava/util/List;

    const-string/jumbo v0, "result"

    .line 1072
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    const-string v3, "groupNoReferral"

    const/16 v4, 0x8

    const-string v5, "groupReferral"

    if-eqz v0, :cond_3

    .line 1073
    iget-object v0, p0, Lo/waitForLoader$ICustomTabsCallback$Stub;->extraCallback:Lo/waitForLoader;

    invoke-static {v0}, Lo/waitForLoader;->onNavigationEvent(Lo/waitForLoader;)Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    move-result-object v0

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1074
    iget-object v0, p0, Lo/waitForLoader$ICustomTabsCallback$Stub;->extraCallback:Lo/waitForLoader;

    invoke-static {v0}, Lo/waitForLoader;->onPostMessage(Lo/waitForLoader;)Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    move-result-object v0

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1075
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 2000
    sget-object v0, Lo/setTrackTintMode;->asBinder:Lo/getCollapseContentDescription;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1076
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1077
    move-object v3, p1

    check-cast v3, Ljava/lang/Iterable;

    .line 1132
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonData;

    .line 1078
    new-instance v5, Lo/waitForLoader$extraCallback;

    invoke-virtual {v4}, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonData;->getRefereeName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lo/waitForLoader$extraCallback;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1080
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int p1, v0, p1

    if-lez p1, :cond_1

    .line 1082
    new-instance v3, Lo/waitForLoader$onNavigationEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " more"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lo/waitForLoader$onNavigationEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1084
    :cond_1
    iget-object p1, p0, Lo/waitForLoader$ICustomTabsCallback$Stub;->extraCallback:Lo/waitForLoader;

    invoke-static {p1}, Lo/waitForLoader;->extraCallback(Lo/waitForLoader;)Lo/repositionToWrapContentIfNecessary;

    move-result-object p1

    .line 1085
    check-cast v2, Ljava/util/List;

    const-string/jumbo v3, "value"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-object p1, p1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/checkSpanForGap;

    .line 2038
    invoke-virtual {p1, v2}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 1087
    iget-object p1, p0, Lo/waitForLoader$ICustomTabsCallback$Stub;->extraCallback:Lo/waitForLoader;

    invoke-static {p1}, Lo/waitForLoader;->onMessageChannelReady(Lo/waitForLoader;)Landroid/widget/TextView;

    move-result-object p1

    const-string v2, "details"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "earned from referring "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-le v0, v1, :cond_2

    const-string v0, "friends"

    goto :goto_1

    :cond_2
    const-string v0, "friend"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    iget-object p1, p0, Lo/waitForLoader$ICustomTabsCallback$Stub;->extraCallback:Lo/waitForLoader;

    invoke-static {p1}, Lo/waitForLoader;->ICustomTabsCallback(Lo/waitForLoader;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    const-string v0, "count"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 4000
    sget-object v0, Lo/setTrackTintMode;->onTransact:Lo/getCollapseContentDescription;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1088
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xfa

    invoke-static/range {v1 .. v8}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1090
    :cond_3
    iget-object p1, p0, Lo/waitForLoader$ICustomTabsCallback$Stub;->extraCallback:Lo/waitForLoader;

    invoke-static {p1}, Lo/waitForLoader;->onNavigationEvent(Lo/waitForLoader;)Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    move-result-object p1

    invoke-static {p1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1091
    iget-object p1, p0, Lo/waitForLoader$ICustomTabsCallback$Stub;->extraCallback:Lo/waitForLoader;

    invoke-static {p1}, Lo/waitForLoader;->onPostMessage(Lo/waitForLoader;)Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    move-result-object p1

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
