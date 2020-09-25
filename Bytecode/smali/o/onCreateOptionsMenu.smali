.class public final Lo/onCreateOptionsMenu;
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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J*\u0010\t\u001a\u00020\n2\"\u0008\u0002\u0010\u000b\u001a\u001c\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r\u0012\u0004\u0012\u00020\n\u0018\u00010\u000cJ*\u0010\u0010\u001a\u00020\n2\"\u0008\u0002\u0010\u000b\u001a\u001c\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\r\u0012\u0004\u0012\u00020\n\u0018\u00010\u000cJ*\u0010\u0011\u001a\u00020\n2\"\u0008\u0002\u0010\u000b\u001a\u001c\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\r\u0012\u0004\u0012\u00020\n\u0018\u00010\u000cR\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/whatsapp/WhatsappUtils;",
        "",
        "()V",
        "profileService",
        "Lcom/dreamplug/androidapp/profile/ProfileService;",
        "getProfileService",
        "()Lcom/dreamplug/androidapp/profile/ProfileService;",
        "profileService$delegate",
        "Lkotlin/Lazy;",
        "getConsentState",
        "",
        "responseCalback",
        "Lkotlin/Function1;",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "Lcom/dreamplug/androidapp/profile/WhatsappConsentState;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "optin",
        "optout",
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
.field public static final onNavigationEvent:Lo/isSameListener;

.field public static final onPostMessage:Lo/onCreateOptionsMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lo/onCreateOptionsMenu;

    invoke-direct {v0}, Lo/onCreateOptionsMenu;-><init>()V

    sput-object v0, Lo/onCreateOptionsMenu;->onPostMessage:Lo/onCreateOptionsMenu;

    .line 16
    sget-object v0, Lo/onCreateOptionsMenu$onNavigationEvent;->onMessageChannelReady:Lo/onCreateOptionsMenu$onNavigationEvent;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 16
    sput-object v1, Lo/onCreateOptionsMenu;->onNavigationEvent:Lo/isSameListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ICustomTabsCallback(Lo/onCreateOptionsMenu;)V
    .locals 2

    .line 2000
    sget-object p0, Lo/onCreateOptionsMenu;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/layoutChildRight;

    .line 1050
    invoke-interface {p0}, Lo/layoutChildRight;->onPostMessage()Lo/clearScrap;

    move-result-object p0

    new-instance v0, Lo/onCreateOptionsMenu$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/onCreateOptionsMenu$onPostMessage;-><init>(Lo/onDisconnectSetValue;)V

    check-cast v0, Lo/getScrapOrCachedViewForId;

    invoke-interface {p0, v0}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method

.method public static synthetic extraCallback(Lo/onCreateOptionsMenu;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lo/onCreateOptionsMenu;->onMessageChannelReady(Lo/onDisconnectSetValue;)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/onDisconnectSetValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onDisconnectSetValue<",
            "-",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    .line 1000
    sget-object v0, Lo/onCreateOptionsMenu;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/layoutChildRight;

    .line 21
    invoke-interface {v0}, Lo/layoutChildRight;->onMessageChannelReady()Lo/clearScrap;

    move-result-object v0

    new-instance v1, Lo/onCreateOptionsMenu$ICustomTabsCallback;

    invoke-direct {v1, p1}, Lo/onCreateOptionsMenu$ICustomTabsCallback;-><init>(Lo/onDisconnectSetValue;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method
