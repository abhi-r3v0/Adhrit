.class public final Lo/attach;
.super Lo/MediaControllerCompat$TransportControlsApi24;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/attach$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 +2\u00020\u0001:\u0001+B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00072\u0008\u0008\u0002\u0010%\u001a\u00020&J\u000e\u0010\'\u001a\u00020#2\u0006\u0010(\u001a\u00020\u0007J\u000e\u0010)\u001a\u00020#2\u0006\u0010(\u001a\u00020\u0007J\u000e\u0010*\u001a\u00020#2\u0006\u0010(\u001a\u00020\u0007R \u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R \u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\t\"\u0004\u0008\u0014\u0010\u000bR \u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\t\"\u0004\u0008\u0018\u0010\u000bR \u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\t\"\u0004\u0008\u001b\u0010\u000bR\u001b\u0010\u001c\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006,"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/whatsapp/SecondaryPhoneViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "errorMessage",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "getErrorMessage",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setErrorMessage",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "otpGenerateResponse",
        "Lcom/dreamplug/androidapp/login/model/OtpGenerateResponse;",
        "getOtpGenerateResponse",
        "()Lcom/dreamplug/androidapp/login/model/OtpGenerateResponse;",
        "setOtpGenerateResponse",
        "(Lcom/dreamplug/androidapp/login/model/OtpGenerateResponse;)V",
        "otpLiveData",
        "getOtpLiveData",
        "setOtpLiveData",
        "otpSentSuccess",
        "Lcom/dreamplug/fabrik/ui/whatsapp/OTPEventData;",
        "getOtpSentSuccess",
        "setOtpSentSuccess",
        "otpValidationResult",
        "getOtpValidationResult",
        "setOtpValidationResult",
        "whatsappService",
        "Lcom/dreamplug/fabrik/ui/whatsapp/WhatsappService;",
        "getWhatsappService",
        "()Lcom/dreamplug/fabrik/ui/whatsapp/WhatsappService;",
        "whatsappService$delegate",
        "Lkotlin/Lazy;",
        "generateOtp",
        "",
        "number",
        "isResend",
        "",
        "otpReceived",
        "otp",
        "setOtp",
        "updateSecondaryPhone",
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


# instance fields
.field ICustomTabsCallback:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/runningAverage;",
            ">;"
        }
    .end annotation
.end field

.field final ICustomTabsCallback$Stub:Lo/isSameListener;

.field extraCallback:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field onMessageChannelReady:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/runningAverage;",
            ">;"
        }
    .end annotation
.end field

.field onNavigationEvent:Lcom/dreamplug/androidapp/login/model/OtpGenerateResponse;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Lo/MediaControllerCompat$TransportControlsApi24;-><init>(Landroid/app/Application;)V

    .line 15
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/attach;->extraCallback:Lo/setActive;

    .line 16
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/attach;->ICustomTabsCallback:Lo/setActive;

    .line 17
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    .line 18
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/attach;->onMessageChannelReady:Lo/setActive;

    .line 19
    sget-object p1, Lo/attach$extraCallback;->extraCallback:Lo/attach$extraCallback;

    check-cast p1, Lo/getServerTime;

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 19
    iput-object v0, p0, Lo/attach;->ICustomTabsCallback$Stub:Lo/isSameListener;

    return-void
.end method

.method public static synthetic onNavigationEvent(Lo/attach;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/attach;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 2

    const-string v0, "number"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "+91"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "phone"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    iget-object p1, p0, Lo/attach;->ICustomTabsCallback$Stub:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/detach;

    .line 27
    invoke-interface {p1, v0}, Lo/detach;->onMessageChannelReady(Ljava/util/Map;)Lo/clearScrap;

    move-result-object p1

    .line 28
    new-instance v0, Lo/attach$onPostMessage;

    invoke-direct {v0, p0}, Lo/attach$onPostMessage;-><init>(Lo/attach;)V

    check-cast v0, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, v0}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method
