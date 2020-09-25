.class public final Lo/getTitleMarginStart;
.super Lo/MediaControllerCompat$TransportControlsApi24;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0017\u0010(\u001a\u00020)2\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010+\u00a2\u0006\u0002\u0010,J\u0006\u0010-\u001a\u00020.J\u0006\u0010/\u001a\u00020.J\u000e\u00100\u001a\u00020)2\u0006\u00101\u001a\u00020\u0006R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR \u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0008\"\u0004\u0008\u0014\u0010\nR\u001b\u0010\u0015\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0008\"\u0004\u0008\u001d\u0010\nR \u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u000f\"\u0004\u0008!\u0010\u0011R\u001a\u0010\"\u001a\u00020#X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u00062"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/gating/EligibilityViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "app",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "dob",
        "",
        "getDob",
        "()Ljava/lang/String;",
        "setDob",
        "(Ljava/lang/String;)V",
        "dobPanErrorData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "getDobPanErrorData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setDobPanErrorData",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "gatingFlow",
        "getGatingFlow",
        "setGatingFlow",
        "loginService",
        "Lcom/dreamplug/androidapp/login/LoginService;",
        "getLoginService",
        "()Lcom/dreamplug/androidapp/login/LoginService;",
        "loginService$delegate",
        "Lkotlin/Lazy;",
        "pan",
        "getPan",
        "setPan",
        "responseData",
        "Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;",
        "getResponseData",
        "setResponseData",
        "snackBarViewModel",
        "Lcom/dreamplug/widget/MessageSnackBar$SnackBarViewModel;",
        "getSnackBarViewModel",
        "()Lcom/dreamplug/widget/MessageSnackBar$SnackBarViewModel;",
        "setSnackBarViewModel",
        "(Lcom/dreamplug/widget/MessageSnackBar$SnackBarViewModel;)V",
        "checkEligibility",
        "",
        "freshFlow",
        "",
        "(Ljava/lang/Boolean;)V",
        "getPollInterval",
        "",
        "getPollTimeout",
        "updateDobPan",
        "flow",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Ljava/lang/String;

.field final asBinder:Lo/isSameListener;

.field public asInterface:Lo/appendViewToAllSpans$extraCallback;

.field extraCallback:Ljava/lang/String;

.field public onMessageChannelReady:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;",
            ">;"
        }
    .end annotation
.end field

.field onNavigationEvent:Ljava/lang/String;

.field onRelationshipValidationResult:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "app"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lo/MediaControllerCompat$TransportControlsApi24;-><init>(Landroid/app/Application;)V

    .line 24
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/getTitleMarginStart;->onMessageChannelReady:Lo/setActive;

    .line 25
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/getTitleMarginStart;->onRelationshipValidationResult:Lo/setActive;

    .line 44
    sget-object p1, Lo/getTitleMarginStart$ICustomTabsCallback;->onNavigationEvent:Lo/getTitleMarginStart$ICustomTabsCallback;

    check-cast p1, Lo/getServerTime;

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 44
    iput-object v0, p0, Lo/getTitleMarginStart;->asBinder:Lo/isSameListener;

    return-void
.end method

.method public static ICustomTabsCallback()J
    .locals 4

    .line 35
    sget-object v0, Lcom/dreamplug/utils/health/Health;->onMessageChannelReady:Lcom/dreamplug/utils/health/Health;

    sget-object v0, Lcom/dreamplug/utils/health/Health$onPostMessage;->onMessageChannelReady:Lcom/dreamplug/utils/health/Health$onPostMessage;

    invoke-static {v0}, Lcom/dreamplug/utils/health/Health;->extraCallback(Lcom/dreamplug/utils/health/Health$onPostMessage;)Lcom/dreamplug/utils/health/Health$ServiceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dreamplug/utils/health/Health$ServiceStatus;->getConfigs()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "polling_timeout"

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "$this$toLongOrNull"

    .line 36
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1132
    invoke-static {v0}, Lo/childWrites;->asInterface(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1e

    :goto_0
    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public static onPostMessage()J
    .locals 4

    .line 40
    sget-object v0, Lcom/dreamplug/utils/health/Health;->onMessageChannelReady:Lcom/dreamplug/utils/health/Health;

    sget-object v0, Lcom/dreamplug/utils/health/Health$onPostMessage;->onMessageChannelReady:Lcom/dreamplug/utils/health/Health$onPostMessage;

    invoke-static {v0}, Lcom/dreamplug/utils/health/Health;->extraCallback(Lcom/dreamplug/utils/health/Health$onPostMessage;)Lcom/dreamplug/utils/health/Health$ServiceStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dreamplug/utils/health/Health$ServiceStatus;->getConfigs()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "polling_interval"

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "$this$toLongOrNull"

    .line 41
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2132
    invoke-static {v0}, Lo/childWrites;->asInterface(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x4

    :goto_0
    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public static synthetic onPostMessage(Lo/getTitleMarginStart;)V
    .locals 3

    .line 1031
    sget-object v0, Lo/setTitleMargin;->onNavigationEvent:Lo/setTitleMargin;

    iget-object v1, p0, Lo/getTitleMarginStart;->extraCallback:Ljava/lang/String;

    iget-object p0, p0, Lo/getTitleMarginStart;->onMessageChannelReady:Lo/setActive;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lo/setTitleMargin;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Boolean;Lo/setActive;)V

    return-void
.end method
