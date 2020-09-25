.class public final Lo/getThumbTextPadding;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/bindViewToPosition;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/NetworkInterfaceImpl;",
        "Lcom/dreamplug/network/helper/NetworkInterface;",
        "()V",
        "addInterceptors",
        "",
        "builder",
        "Lokhttp3/OkHttpClient$Builder;",
        "context",
        "Landroid/content/Context;",
        "addMoshiAdapters",
        "Lcom/squareup/moshi/Moshi$Builder;",
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
.field public static final ICustomTabsCallback:Lo/getThumbTextPadding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lo/getThumbTextPadding;

    invoke-direct {v0}, Lo/getThumbTextPadding;-><init>()V

    sput-object v0, Lo/getThumbTextPadding;->ICustomTabsCallback:Lo/getThumbTextPadding;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/propertyName$onPostMessage;Landroid/content/Context;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance p2, Lo/setTrackDrawable;

    invoke-direct {p2}, Lo/setTrackDrawable;-><init>()V

    check-cast p2, Lo/annotatedName;

    .line 1994
    iget-object v0, p1, Lo/propertyName$onPostMessage;->extraCallback:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance p2, Lo/setContentInsetStartWithNavigation;

    invoke-direct {p2}, Lo/setContentInsetStartWithNavigation;-><init>()V

    check-cast p2, Lo/annotatedName;

    .line 2994
    iget-object v0, p1, Lo/propertyName$onPostMessage;->extraCallback:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance p2, Lo/IconCompat;

    invoke-direct {p2}, Lo/IconCompat;-><init>()V

    check-cast p2, Lo/annotatedName;

    .line 3994
    iget-object p1, p1, Lo/propertyName$onPostMessage;->extraCallback:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPostMessage(Lo/sessionFile$onPostMessage;)V
    .locals 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/dreamplug/androidapp/utils/network/MoshiDateAdapter;

    invoke-direct {v0}, Lcom/dreamplug/androidapp/utils/network/MoshiDateAdapter;-><init>()V

    .line 4238
    invoke-static {v0}, Lo/CrashlyticsNdkRegistrar$$Lambda$1;->ICustomTabsCallback(Ljava/lang/Object;)Lo/CrashlyticsNdkRegistrar$$Lambda$1;

    move-result-object v0

    .line 5232
    iget-object v1, p1, Lo/sessionFile$onPostMessage;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v0, Lcom/dreamplug/fabrik/helper/nework/FabrikStringAdapter;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/helper/nework/FabrikStringAdapter;-><init>()V

    .line 5238
    invoke-static {v0}, Lo/CrashlyticsNdkRegistrar$$Lambda$1;->ICustomTabsCallback(Ljava/lang/Object;)Lo/CrashlyticsNdkRegistrar$$Lambda$1;

    move-result-object v0

    .line 6232
    iget-object v1, p1, Lo/sessionFile$onPostMessage;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v0, Lcom/dreamplug/utils/helpers/MoshiColorListAdapter;

    invoke-direct {v0}, Lcom/dreamplug/utils/helpers/MoshiColorListAdapter;-><init>()V

    .line 6238
    invoke-static {v0}, Lo/CrashlyticsNdkRegistrar$$Lambda$1;->ICustomTabsCallback(Ljava/lang/Object;)Lo/CrashlyticsNdkRegistrar$$Lambda$1;

    move-result-object v0

    .line 7232
    iget-object v1, p1, Lo/sessionFile$onPostMessage;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v0, Lcom/dreamplug/utils/helpers/MoshiColorMapAdapter;

    invoke-direct {v0}, Lcom/dreamplug/utils/helpers/MoshiColorMapAdapter;-><init>()V

    .line 7238
    invoke-static {v0}, Lo/CrashlyticsNdkRegistrar$$Lambda$1;->ICustomTabsCallback(Ljava/lang/Object;)Lo/CrashlyticsNdkRegistrar$$Lambda$1;

    move-result-object v0

    .line 8232
    iget-object v1, p1, Lo/sessionFile$onPostMessage;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/dreamplug/utils/helpers/MoshiColorAdapter;->onNavigationEvent:Lcom/dreamplug/utils/helpers/MoshiColorAdapter;

    if-eqz v0, :cond_0

    .line 8238
    invoke-static {v0}, Lo/CrashlyticsNdkRegistrar$$Lambda$1;->ICustomTabsCallback(Ljava/lang/Object;)Lo/CrashlyticsNdkRegistrar$$Lambda$1;

    move-result-object v0

    .line 9232
    iget-object v1, p1, Lo/sessionFile$onPostMessage;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientOrientationAdapter;

    invoke-direct {v0}, Lcom/dreamplug/androidapp/utils/network/MoshiGradientOrientationAdapter;-><init>()V

    .line 9238
    invoke-static {v0}, Lo/CrashlyticsNdkRegistrar$$Lambda$1;->ICustomTabsCallback(Ljava/lang/Object;)Lo/CrashlyticsNdkRegistrar$$Lambda$1;

    move-result-object v0

    .line 10232
    iget-object v1, p1, Lo/sessionFile$onPostMessage;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter;

    invoke-direct {v0}, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter;-><init>()V

    .line 10238
    invoke-static {v0}, Lo/CrashlyticsNdkRegistrar$$Lambda$1;->ICustomTabsCallback(Ljava/lang/Object;)Lo/CrashlyticsNdkRegistrar$$Lambda$1;

    move-result-object v0

    .line 11232
    iget-object v1, p1, Lo/sessionFile$onPostMessage;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Lcom/dreamplug/androidapp/utils/network/RewardServiceCurrencyAdapter;

    invoke-direct {v0}, Lcom/dreamplug/androidapp/utils/network/RewardServiceCurrencyAdapter;-><init>()V

    .line 11238
    invoke-static {v0}, Lo/CrashlyticsNdkRegistrar$$Lambda$1;->ICustomTabsCallback(Ljava/lang/Object;)Lo/CrashlyticsNdkRegistrar$$Lambda$1;

    move-result-object v0

    .line 12232
    iget-object v1, p1, Lo/sessionFile$onPostMessage;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v0, Lcom/dreamplug/androidapp/utils/network/PointsServiceCurrencyAdapter;

    invoke-direct {v0}, Lcom/dreamplug/androidapp/utils/network/PointsServiceCurrencyAdapter;-><init>()V

    .line 12238
    invoke-static {v0}, Lo/CrashlyticsNdkRegistrar$$Lambda$1;->ICustomTabsCallback(Ljava/lang/Object;)Lo/CrashlyticsNdkRegistrar$$Lambda$1;

    move-result-object v0

    .line 13232
    iget-object v1, p1, Lo/sessionFile$onPostMessage;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v0, Lcom/dreamplug/androidapp/utils/network/CardStatementStatusAdapter;

    invoke-direct {v0}, Lcom/dreamplug/androidapp/utils/network/CardStatementStatusAdapter;-><init>()V

    .line 13238
    invoke-static {v0}, Lo/CrashlyticsNdkRegistrar$$Lambda$1;->ICustomTabsCallback(Ljava/lang/Object;)Lo/CrashlyticsNdkRegistrar$$Lambda$1;

    move-result-object v0

    .line 14232
    iget-object v1, p1, Lo/sessionFile$onPostMessage;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v0, Lcom/cred/pay/repository/converters/PaymentModeAdapter;

    invoke-direct {v0}, Lcom/cred/pay/repository/converters/PaymentModeAdapter;-><init>()V

    .line 14238
    invoke-static {v0}, Lo/CrashlyticsNdkRegistrar$$Lambda$1;->ICustomTabsCallback(Ljava/lang/Object;)Lo/CrashlyticsNdkRegistrar$$Lambda$1;

    move-result-object v0

    .line 15232
    iget-object v1, p1, Lo/sessionFile$onPostMessage;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v0, Lcom/dreamplug/androidapp/utils/network/StashStatusAdapter;

    invoke-direct {v0}, Lcom/dreamplug/androidapp/utils/network/StashStatusAdapter;-><init>()V

    .line 15238
    invoke-static {v0}, Lo/CrashlyticsNdkRegistrar$$Lambda$1;->ICustomTabsCallback(Ljava/lang/Object;)Lo/CrashlyticsNdkRegistrar$$Lambda$1;

    move-result-object v0

    .line 16232
    iget-object v1, p1, Lo/sessionFile$onPostMessage;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    const-class v0, Lo/MenuPopupWindow;

    check-cast v0, Ljava/lang/reflect/Type;

    new-instance v1, Lo/buildDropDown;

    invoke-direct {v1}, Lo/buildDropDown;-><init>()V

    check-cast v1, Lo/JniNativeApi;

    .line 17197
    new-instance v2, Lo/sessionFile$onPostMessage$3;

    invoke-direct {v2, v0, v1}, Lo/sessionFile$onPostMessage$3;-><init>(Ljava/lang/reflect/Type;Lo/JniNativeApi;)V

    .line 17232
    iget-object v0, p1, Lo/sessionFile$onPostMessage;->onPostMessage:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    const-class v0, Lorg/json/JSONObject;

    check-cast v0, Ljava/lang/reflect/Type;

    new-instance v1, Lo/setOverlapAnchor;

    invoke-direct {v1}, Lo/setOverlapAnchor;-><init>()V

    check-cast v1, Lo/JniNativeApi;

    .line 18197
    new-instance v2, Lo/sessionFile$onPostMessage$3;

    invoke-direct {v2, v0, v1}, Lo/sessionFile$onPostMessage$3;-><init>(Ljava/lang/reflect/Type;Lo/JniNativeApi;)V

    .line 18232
    iget-object p1, p1, Lo/sessionFile$onPostMessage;->onPostMessage:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 8237
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "adapter == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
