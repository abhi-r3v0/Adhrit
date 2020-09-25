.class public final Lo/getDimensionPixelOffset;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J@\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0018\u0008\u0002\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ`\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0016\u0008\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00112\"\u0010\u0012\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u00080\u00132\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J<\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00192\u0016\u0008\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0002\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/CardManagementCtaManager;",
        "",
        "()V",
        "tagEvent",
        "",
        "eventName",
        "",
        "hashMap",
        "",
        "cta",
        "Lcom/dreamplug/fabrik/ui/cm/models/Cta;",
        "template",
        "Lcom/dreamplug/fabrik/ui/cm/models/Template;",
        "toCtaAction",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "invokeClick",
        "Lkotlin/Function1;",
        "eventPair",
        "Lkotlin/Pair;",
        "toDeepLink",
        "deepLink",
        "Lcom/dreamplug/fabrik/ui/cm/models/Cta$Deeplink;",
        "toFlow",
        "flowObject",
        "Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/cm/models/Cta;Lo/onDisconnectSetValue;Lo/addWrite;Lcom/dreamplug/fabrik/ui/cm/models/Template;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/dreamplug/fabrik/ui/cm/models/Cta;",
            "Lo/onDisconnectSetValue<",
            "-",
            "Lcom/dreamplug/fabrik/ui/cm/models/Template;",
            "Lo/addWrites;",
            ">;",
            "Lo/addWrite<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/dreamplug/fabrik/ui/cm/models/Template;",
            ")V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventPair"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    .line 1027
    iget-object v0, p3, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1017
    check-cast v0, Ljava/lang/String;

    .line 1028
    iget-object p3, p3, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1017
    check-cast p3, Ljava/util/Map;

    invoke-static {v0, p3, p1, p4}, Lo/getDimensionPixelOffset;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;Lcom/dreamplug/fabrik/ui/cm/models/Cta;Lcom/dreamplug/fabrik/ui/cm/models/Template;)V

    .line 2015
    iget-object p3, p1, Lcom/dreamplug/fabrik/ui/cm/models/Cta;->extraCallback:Ljava/lang/String;

    const-string v0, "deeplink"

    .line 1018
    invoke-static {p3, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2017
    iget-object p0, p1, Lcom/dreamplug/fabrik/ui/cm/models/Cta;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/cm/models/Cta$Deeplink;

    if-eqz p0, :cond_0

    .line 2025
    sget-object p1, Lo/length;->extraCallback:Lo/length;

    .line 2035
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/cm/models/Cta$Deeplink;->onNavigationEvent:Ljava/lang/String;

    .line 2025
    invoke-virtual {p1, p0}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3015
    :cond_1
    iget-object p3, p1, Lcom/dreamplug/fabrik/ui/cm/models/Cta;->extraCallback:Ljava/lang/String;

    const-string v0, "flow"

    .line 1020
    invoke-static {p3, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 3018
    iget-object p3, p1, Lcom/dreamplug/fabrik/ui/cm/models/Cta;->asBinder:Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;

    if-eqz p3, :cond_8

    .line 4018
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Cta;->asBinder:Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;

    const-string p3, "$this$lazyNavigator"

    .line 4028
    invoke-static {p0, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4072
    new-instance p3, Lo/setAddDuration$onMessageChannelReady;

    invoke-direct {p3, p0}, Lo/setAddDuration$onMessageChannelReady;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast p3, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {p3, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, p3}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 5031
    iget-object p3, p1, Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;->onPostMessage:Ljava/lang/String;

    if-nez p3, :cond_2

    goto/16 :goto_1

    .line 4029
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const-string v3, "month"

    const-string v4, "bs_1"

    const-string v5, "extra"

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo p4, "sort"

    .line 4039
    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 8031
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;

    if-eqz p1, :cond_3

    .line 4041
    sget-object p3, Lo/setAllowEnterTransitionOverlap;->onPostMessage:Lo/setAllowEnterTransitionOverlap$onPostMessage;

    .line 4042
    new-instance p3, Lo/setAllowEnterTransitionOverlap$extraCallback;

    invoke-direct {p3, p1}, Lo/setAllowEnterTransitionOverlap$extraCallback;-><init>(Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;)V

    .line 4041
    invoke-static {p3, p2}, Lo/setAllowEnterTransitionOverlap$onPostMessage;->extraCallback(Lo/setAllowEnterTransitionOverlap$extraCallback;Lo/onDisconnectSetValue;)Lo/setAllowEnterTransitionOverlap;

    move-result-object p1

    .line 4044
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 4048
    :sswitch_1
    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_0

    :sswitch_2
    const-string p4, "month_switcher"

    .line 4030
    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 6031
    iget-object p3, p1, Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;

    if-eqz p3, :cond_4

    .line 4032
    sget-object p4, Lo/setAllowReturnTransitionOverlap;->onPostMessage:Lo/setAllowReturnTransitionOverlap$extraCallback;

    .line 4033
    new-instance p4, Lo/setAllowReturnTransitionOverlap$onMessageChannelReady;

    .line 7031
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;->onMessageChannelReady:Ljava/lang/String;

    .line 4033
    invoke-direct {p4, p3, p1}, Lo/setAllowReturnTransitionOverlap$onMessageChannelReady;-><init>(Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;Ljava/lang/String;)V

    .line 4032
    invoke-static {p4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7080
    new-instance p1, Lo/setAllowReturnTransitionOverlap;

    invoke-direct {p1}, Lo/setAllowReturnTransitionOverlap;-><init>()V

    .line 7081
    move-object p3, p1

    check-cast p3, Landroidx/fragment/app/Fragment;

    check-cast p4, Landroid/os/Parcelable;

    .line 8016
    invoke-static {p3, p4, v5}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 7082
    invoke-static {p1, p2}, Lo/setAllowReturnTransitionOverlap;->onNavigationEvent(Lo/setAllowReturnTransitionOverlap;Lo/onDisconnectSetValue;)V

    .line 4035
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    :cond_4
    return-void

    :sswitch_3
    const-string p2, "foreign_txns"

    .line 4048
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 9031
    :goto_0
    iget-object p2, p1, Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;

    if-eqz p2, :cond_8

    .line 4050
    sget-object p2, Lo/getSharedElementReturnTransition;->onMessageChannelReady:Lo/getSharedElementReturnTransition$onPostMessage;

    new-instance p2, Lo/getSharedElementReturnTransition$onNavigationEvent;

    .line 10031
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;

    if-eqz p4, :cond_5

    .line 11027
    iget-object p3, p4, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    if-eqz p3, :cond_5

    .line 11084
    iget-object p3, p3, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->updateVisuals:Ljava/lang/String;

    if-nez p3, :cond_6

    :cond_5
    const-string/jumbo p3, "unknown"

    .line 4050
    :cond_6
    invoke-direct {p2, p1, p3}, Lo/getSharedElementReturnTransition$onNavigationEvent;-><init>(Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;Ljava/lang/String;)V

    invoke-static {p2, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11153
    new-instance p1, Lo/getSharedElementReturnTransition;

    invoke-direct {p1}, Lo/getSharedElementReturnTransition;-><init>()V

    .line 11154
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 11155
    check-cast p2, Landroid/os/Parcelable;

    const-string p4, "ITEMS_DATA"

    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11154
    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 4052
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lo/requestExtraBinder;

    move-result-object p0

    .line 4051
    invoke-virtual {p1, p0, v4}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    return-void

    :sswitch_4
    const-string/jumbo p0, "selected_month"

    .line 4056
    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 4060
    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    .line 12031
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;->onPostMessage:Ljava/lang/String;

    .line 4060
    invoke-static {p0, p1}, Lo/getMoveDuration;->ICustomTabsCallback(Lo/getMoveDuration;Ljava/lang/String;)V

    return-void

    .line 4062
    :cond_7
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "unknown flow :"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13031
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;->onPostMessage:Ljava/lang/String;

    .line 4062
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d012824 -> :sswitch_4
        -0x7336d82c -> :sswitch_3
        -0x65a55a40 -> :sswitch_2
        0x2e47c3 -> :sswitch_1
        0x35f59e -> :sswitch_0
    .end sparse-switch
.end method

.method private static onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;Lcom/dreamplug/fabrik/ui/cm/models/Cta;Lcom/dreamplug/fabrik/ui/cm/models/Template;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/dreamplug/fabrik/ui/cm/models/Cta;",
            "Lcom/dreamplug/fabrik/ui/cm/models/Template;",
            ")V"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13067
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    .line 13068
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 13069
    :cond_0
    check-cast v0, Ljava/util/Map;

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 14014
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Cta;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_1

    .line 15000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    const-string v2, "cta_title"

    .line 13069
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    .line 15023
    iget-object v1, p3, Lcom/dreamplug/fabrik/ui/cm/models/Template;->onPostMessage:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    const-string/jumbo v2, "template_name"

    .line 13070
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_3

    .line 15027
    iget-object v1, p3, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    if-eqz v1, :cond_3

    .line 15084
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->updateVisuals:Ljava/lang/String;

    if-nez v1, :cond_5

    :cond_3
    if-eqz p2, :cond_4

    .line 16025
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Cta;->asInterface:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v1, p1

    :cond_5
    :goto_2
    if-nez v1, :cond_7

    if-eqz p2, :cond_6

    .line 17018
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/cm/models/Cta;->asBinder:Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;

    if-eqz p2, :cond_6

    .line 17031
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;->onPostMessage:Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v1, p1

    :cond_7
    :goto_3
    const-string p2, "context_name"

    .line 13071
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_8

    .line 18027
    iget-object p2, p3, Lcom/dreamplug/fabrik/ui/cm/models/Template;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;

    if-eqz p2, :cond_8

    .line 18051
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/cm/models/TemplateProperties;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz p2, :cond_8

    .line 19000
    iget-object p1, p2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    :cond_8
    const-string/jumbo p2, "text_1"

    .line 13072
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13073
    invoke-static {p0, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public static synthetic onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;Lcom/dreamplug/fabrik/ui/cm/models/Template;I)V
    .locals 1

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 19066
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    :cond_0
    and-int/lit8 p3, p3, 0x8

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-static {p0, p1, v0, p2}, Lo/getDimensionPixelOffset;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;Lcom/dreamplug/fabrik/ui/cm/models/Cta;Lcom/dreamplug/fabrik/ui/cm/models/Template;)V

    return-void
.end method
