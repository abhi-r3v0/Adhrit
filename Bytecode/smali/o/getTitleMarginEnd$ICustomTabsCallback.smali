.class final Lo/getTitleMarginEnd$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTitleMarginEnd;-><init>()V
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
        "Lo/AbstractMultiSelectListPreference;",
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
        "Lcom/dreamplug/fabrik/ui/control/helper/CardValidationResult;",
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
.field private synthetic extraCallback:Lo/getTitleMarginEnd;


# direct methods
.method constructor <init>(Lo/getTitleMarginEnd;)V
    .locals 0

    iput-object p1, p0, Lo/getTitleMarginEnd$ICustomTabsCallback;->extraCallback:Lo/getTitleMarginEnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 5

    .line 58
    check-cast p1, Lo/AbstractMultiSelectListPreference;

    .line 2085
    iget-boolean v0, p1, Lo/AbstractMultiSelectListPreference;->onNavigationEvent:Z

    const/4 v1, 0x0

    const-string v2, "addCardView"

    if-eqz v0, :cond_2

    .line 1522
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1523
    check-cast v0, Ljava/util/Map;

    .line 3085
    iget-object v3, p1, Lo/AbstractMultiSelectListPreference;->onMessageChannelReady:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 1523
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v4, "country"

    invoke-virtual {v3, v4}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4085
    iget-object v3, p1, Lo/AbstractMultiSelectListPreference;->onMessageChannelReady:Ljava/util/HashMap;

    const-string v4, "issuer"

    .line 1524
    invoke-virtual {v3, v4}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5085
    iget-object v3, p1, Lo/AbstractMultiSelectListPreference;->onMessageChannelReady:Ljava/util/HashMap;

    const-string v4, "issuer_code"

    .line 1525
    invoke-virtual {v3, v4}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6085
    iget-object v3, p1, Lo/AbstractMultiSelectListPreference;->onMessageChannelReady:Ljava/util/HashMap;

    const-string/jumbo v4, "token"

    .line 1526
    invoke-virtual {v3, v4}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    iget-object v3, p0, Lo/getTitleMarginEnd$ICustomTabsCallback;->extraCallback:Lo/getTitleMarginEnd;

    .line 6181
    iget-object v3, v3, Lo/getTitleMarginEnd;->onPostMessage:Lo/stopLoading;

    if-nez v3, :cond_1

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1527
    :cond_1
    invoke-interface {v3}, Lo/stopLoading;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "card_number"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7085
    iget-object p1, p1, Lo/AbstractMultiSelectListPreference;->onMessageChannelReady:Ljava/util/HashMap;

    const-string/jumbo v2, "user_name"

    .line 1528
    invoke-virtual {p1, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    iget-object p1, p0, Lo/getTitleMarginEnd$ICustomTabsCallback;->extraCallback:Lo/getTitleMarginEnd;

    invoke-static {p1}, Lo/getTitleMarginEnd;->warmup(Lo/getTitleMarginEnd;)Lo/getContentInsetLeft;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lo/getContentInsetLeft;->extraCallback(Ljava/util/Map;Z)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lo/getTitleMarginEnd$ICustomTabsCallback;->extraCallback:Lo/getTitleMarginEnd;

    move-object v2, v0

    check-cast v2, Lo/toLegacyStreamType;

    invoke-static {v0}, Lo/getTitleMarginEnd;->newSession(Lo/getTitleMarginEnd;)Lo/setPlaybackToRemote;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 1530
    iget-object p1, p0, Lo/getTitleMarginEnd$ICustomTabsCallback;->extraCallback:Lo/getTitleMarginEnd;

    invoke-static {p1, v1}, Lo/getTitleMarginEnd;->onMessageChannelReady(Lo/getTitleMarginEnd;Lcom/dreamplug/androidapp/onboarding/PaymentMode;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "card_validation_success"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void

    .line 1532
    :cond_2
    iget-object v0, p0, Lo/getTitleMarginEnd$ICustomTabsCallback;->extraCallback:Lo/getTitleMarginEnd;

    const/4 v3, 0x1

    .line 7351
    iput-boolean v3, v0, Lo/getTitleMarginEnd;->ICustomTabsCallback:Z

    .line 1533
    iget-object v0, p0, Lo/getTitleMarginEnd$ICustomTabsCallback;->extraCallback:Lo/getTitleMarginEnd;

    .line 8181
    iget-object v0, v0, Lo/getTitleMarginEnd;->onPostMessage:Lo/stopLoading;

    if-nez v0, :cond_3

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 9085
    :cond_3
    iget-object p1, p1, Lo/AbstractMultiSelectListPreference;->extraCallback:Ljava/lang/String;

    .line 1533
    invoke-interface {v0, p1, v3}, Lo/stopLoading;->onNavigationEvent(Ljava/lang/String;Z)V

    .line 1534
    iget-object p1, p0, Lo/getTitleMarginEnd$ICustomTabsCallback;->extraCallback:Lo/getTitleMarginEnd;

    .line 9181
    iget-object p1, p1, Lo/getTitleMarginEnd;->onPostMessage:Lo/stopLoading;

    if-nez p1, :cond_4

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1534
    :cond_4
    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    invoke-interface {p1, v0}, Lo/stopLoading;->extraCallback(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 1535
    iget-object p1, p0, Lo/getTitleMarginEnd$ICustomTabsCallback;->extraCallback:Lo/getTitleMarginEnd;

    invoke-static {p1}, Lo/getTitleMarginEnd;->onPostMessage(Lo/getTitleMarginEnd;)Lo/getDecoratedTop;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 1536
    :cond_5
    iget-object p1, p0, Lo/getTitleMarginEnd$ICustomTabsCallback;->extraCallback:Lo/getTitleMarginEnd;

    invoke-static {p1, v1}, Lo/getTitleMarginEnd;->onMessageChannelReady(Lo/getTitleMarginEnd;Lcom/dreamplug/androidapp/onboarding/PaymentMode;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "card_validation_failure"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method
