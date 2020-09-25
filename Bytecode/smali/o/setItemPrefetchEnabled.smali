.class public final Lo/setItemPrefetchEnabled;
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
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0002J\u000e\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u000eJ\u000e\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u000eJ\"\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018J2\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u000e2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006#"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/nba/NBACtaManager;",
        "",
        "()V",
        "nbaService",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBAService;",
        "getNbaService",
        "()Lcom/dreamplug/fabrik/ui/nba/helper/NBAService;",
        "nbaService$delegate",
        "Lkotlin/Lazy;",
        "askPermissionFlow",
        "",
        "context",
        "Landroid/content/Context;",
        "permString",
        "",
        "completionType",
        "toastString",
        "dismiss",
        "externalId",
        "remindLater",
        "toDeeplink",
        "deeplink",
        "Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;",
        "action",
        "Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;",
        "toFlow",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "fragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "flow",
        "Lcom/dreamplug/fabrik/ui/nba/helper/CtaFlow;",
        "source",
        "listener",
        "Lcom/dreamplug/fabrik/ui/nba/OnFlowCompletionListener;",
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
.field public static final onNavigationEvent:Lo/setItemPrefetchEnabled;

.field static final onPostMessage:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lo/setItemPrefetchEnabled;

    invoke-direct {v0}, Lo/setItemPrefetchEnabled;-><init>()V

    sput-object v0, Lo/setItemPrefetchEnabled;->onNavigationEvent:Lo/setItemPrefetchEnabled;

    .line 41
    sget-object v0, Lo/setItemPrefetchEnabled$onMessageChannelReady;->ICustomTabsCallback:Lo/setItemPrefetchEnabled$onMessageChannelReady;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 41
    sput-object v1, Lo/setItemPrefetchEnabled;->onPostMessage:Lo/isSameListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 100
    sget-object v0, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 7122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 100
    :cond_0
    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_2

    .line 101
    move-object p2, p0

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2, p1}, Lo/getTitle;->onNavigationEvent(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 102
    check-cast p3, Ljava/lang/CharSequence;

    const/16 p1, 0x30

    invoke-static {p0, p3, p1, v1}, Lo/setInflatedId;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 103
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 104
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    const-string p3, "package"

    const-string v0, "com.dreamplug.androidapp"

    .line 105
    invoke-static {p3, v0, p2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 106
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    new-array p0, v1, [Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p1, p0, p3

    .line 109
    invoke-static {p2, p0, p3}, Lo/getTitle;->onPostMessage(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 101
    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :cond_3
    sget-object p0, Lo/setAutoMeasureEnabled;->ICustomTabsCallback:Lo/setAutoMeasureEnabled;

    new-instance p0, Lo/moveView;

    invoke-direct {p0, p2}, Lo/moveView;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lo/setAutoMeasureEnabled;->extraCallback(Lo/moveView;)V

    return-void
.end method

.method public static synthetic ICustomTabsCallback(Lo/setItemPrefetchEnabled;Landroidx/fragment/app/Fragment;Lo/requestExtraBinder;Lo/detachViewInternal;Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x0

    .line 52
    invoke-static {p1, p2, p3, p4, p0}, Lo/setItemPrefetchEnabled;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lo/requestExtraBinder;Lo/detachViewInternal;Ljava/lang/String;Lo/isItemPrefetchEnabled;)V

    return-void
.end method

.method public static synthetic onMessageChannelReady(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-static {p0, p1, v0}, Lo/setItemPrefetchEnabled;->onPostMessage(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;)V

    return-void
.end method

.method public static onMessageChannelReady(Landroidx/fragment/app/Fragment;Lo/requestExtraBinder;Lo/detachViewInternal;Ljava/lang/String;Lo/isItemPrefetchEnabled;)V
    .locals 9

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "flow"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "source"

    invoke-static {p3, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 54
    invoke-static {p0}, Lo/setAddDuration;->onNavigationEvent(Landroidx/fragment/app/Fragment;)Lo/isSameListener;

    move-result-object p0

    .line 3017
    iget-object v0, p2, Lo/detachViewInternal;->extraCallback:Ljava/lang/String;

    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "data"

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p0, "digest_show_more_like_this"

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :sswitch_1
    const-string/jumbo p0, "whatsapp_optin"

    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 68
    sget-object p0, Lo/onCreateOptionsMenu;->onPostMessage:Lo/onCreateOptionsMenu;

    invoke-static {p0}, Lo/onCreateOptionsMenu;->extraCallback(Lo/onCreateOptionsMenu;)V

    return-void

    :sswitch_2
    const-string/jumbo p0, "setup_cred_upi"

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 74
    sget-object p0, Lo/length;->extraCallback:Lo/length;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f8

    const-string v0, "home"

    const-string/jumbo v1, "upi_setup"

    const-string v2, "nba"

    invoke-static/range {v0 .. v8}, Lo/length;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :sswitch_3
    const-string p1, "payment_due_reminder"

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 65
    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    .line 5017
    iget-object p2, p2, Lo/detachViewInternal;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/Meta;

    if-nez p2, :cond_0

    .line 65
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-virtual {p2}, Lcom/dreamplug/fabrik/ui/nba/helper/Meta;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lo/getMoveDuration;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_4
    const-string p0, "digest_save_to_gallery"

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_0
    if-eqz p4, :cond_1

    .line 6017
    iget-object p0, p2, Lo/detachViewInternal;->extraCallback:Ljava/lang/String;

    .line 71
    invoke-interface {p4, p0}, Lo/isItemPrefetchEnabled;->ICustomTabsCallback(Ljava/lang/String;)V

    :cond_1
    return-void

    :sswitch_5
    const-string p0, "contact_permission"

    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p1, :cond_4

    const-string p2, "android.permission.READ_CONTACTS"

    const-string p3, "enable contact permission"

    .line 84
    invoke-static {p1, p2, p0, p3}, Lo/setItemPrefetchEnabled;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_6
    const-string p0, "location_permission"

    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p1, :cond_4

    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    const-string p3, "enable location permission"

    .line 89
    invoke-static {p1, p2, p0, p3}, Lo/setItemPrefetchEnabled;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_7
    const-string p1, "add_card"

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 58
    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    new-instance p1, Lo/onReset$extraCallback;

    const/4 p2, 0x3

    invoke-direct {p1, v3, v3, p3, p2}, Lo/onReset$extraCallback;-><init>(Lcom/dreamplug/fabrik/ui/control/CardDetails;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3567
    new-instance p2, Lo/onGetChildDrawingOrder$newSession;

    invoke-direct {p2, p1}, Lo/onGetChildDrawingOrder$newSession;-><init>(Lo/onReset$extraCallback;)V

    check-cast p2, Lo/getRemoveDuration;

    invoke-virtual {p0, p2}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    :sswitch_8
    const-string/jumbo p0, "sms_permission"

    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p1, :cond_4

    const-string p2, "android.permission.READ_SMS"

    const-string p3, "enable sms permission"

    .line 79
    invoke-static {p1, p2, p0, p3}, Lo/setItemPrefetchEnabled;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_9
    const-string/jumbo p0, "secondary_phone"

    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 93
    sget-object p0, Lo/length;->extraCallback:Lo/length;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f8

    const-string v0, "home"

    const-string/jumbo v1, "secondary_phone"

    const-string v2, "nba"

    invoke-static/range {v0 .. v8}, Lo/length;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :sswitch_a
    const-string/jumbo p1, "verify_card"

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4017
    iget-object p1, p2, Lo/detachViewInternal;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/Meta;

    if-nez p1, :cond_2

    .line 61
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/nba/helper/Meta;->getId()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getMoveDuration;

    new-instance p2, Lo/onReset$extraCallback;

    const/4 p4, 0x1

    invoke-direct {p2, v3, p1, p3, p4}, Lo/onReset$extraCallback;-><init>(Lcom/dreamplug/fabrik/ui/control/CardDetails;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p2, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4567
    new-instance p1, Lo/onGetChildDrawingOrder$newSession;

    invoke-direct {p1, p2}, Lo/onGetChildDrawingOrder$newSession;-><init>(Lo/onReset$extraCallback;)V

    check-cast p1, Lo/getRemoveDuration;

    invoke-virtual {p0, p1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    .line 95
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "unknown flow :"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7017
    iget-object p1, p2, Lo/detachViewInternal;->extraCallback:Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "nba flow"

    invoke-static {p1, p0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7427f0ea -> :sswitch_a
        -0x72c9d51d -> :sswitch_9
        -0x64c3438b -> :sswitch_8
        -0x49b10812 -> :sswitch_7
        -0x205af767 -> :sswitch_6
        0x1263234e -> :sswitch_5
        0x45b52115 -> :sswitch_4
        0x50f70ff6 -> :sswitch_3
        0x6b80ca3f -> :sswitch_2
        0x6fdab22b -> :sswitch_1
        0x7e1b8863 -> :sswitch_0
    .end sparse-switch
.end method

.method public static onPostMessage(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "deeplink"

    invoke-static {p1, p0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object p0, Lo/length;->extraCallback:Lo/length;

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/nba/helper/Deeplink;->getLink()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 48
    sget-object p0, Lo/setAutoMeasureEnabled;->ICustomTabsCallback:Lo/setAutoMeasureEnabled;

    new-instance p0, Lo/moveView;

    .line 1138
    iget-object p1, p2, Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;->onPostMessage:Ljava/lang/String;

    .line 2137
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;->ICustomTabsCallback:Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1, p2}, Lo/moveView;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lo/setAutoMeasureEnabled;->extraCallback(Lo/moveView;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    const-string v0, "externalId"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8000
    sget-object v0, Lo/setItemPrefetchEnabled;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/removeAndRecycleView;

    .line 129
    invoke-interface {v0, p1}, Lo/removeAndRecycleView;->onNavigationEvent(Ljava/lang/String;)Lo/clearScrap;

    move-result-object p1

    .line 130
    new-instance v0, Lo/setItemPrefetchEnabled$ICustomTabsCallback;

    invoke-direct {v0}, Lo/setItemPrefetchEnabled$ICustomTabsCallback;-><init>()V

    check-cast v0, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, v0}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method
