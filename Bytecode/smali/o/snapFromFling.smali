.class public final Lo/snapFromFling;
.super Lo/MediaControllerCompat$TransportControlsApi24;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/snapFromFling$asBinder;,
        Lo/snapFromFling$ICustomTabsCallback;,
        Lo/snapFromFling$onMessageChannelReady;,
        Lo/snapFromFling$onPostMessage;,
        Lo/snapFromFling$extraCallback;,
        Lo/snapFromFling$onNavigationEvent;,
        Lo/snapFromFling$ICustomTabsCallback$Stub;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001:\u00071234567B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\tR6\u0010\u000c\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rj\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f`\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0007\"\u0004\u0008\u001d\u0010\tR\u001a\u0010\u001e\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0007\"\u0004\u0008 \u0010\tR\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001a\u0010\'\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u0017\u0010,\u001a\u0008\u0012\u0004\u0012\u00020.0-\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100\u00a8\u00068"
    }
    d2 = {
        "Lcom/dreamplug/upi/UpiViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "isAccountLinked",
        "",
        "()Z",
        "setAccountLinked",
        "(Z)V",
        "isSdkRequestProcessing",
        "setSdkRequestProcessing",
        "lastCommandRequestMap",
        "Ljava/util/HashMap;",
        "",
        "Lorg/json/JSONObject;",
        "Lkotlin/collections/HashMap;",
        "getLastCommandRequestMap",
        "()Ljava/util/HashMap;",
        "setLastCommandRequestMap",
        "(Ljava/util/HashMap;)V",
        "lastUpiStateData",
        "Lcom/cred/pay/repository/models/CredUpiDataItem;",
        "getLastUpiStateData",
        "()Lcom/cred/pay/repository/models/CredUpiDataItem;",
        "setLastUpiStateData",
        "(Lcom/cred/pay/repository/models/CredUpiDataItem;)V",
        "multiSim",
        "getMultiSim",
        "setMultiSim",
        "neverAskAgain",
        "getNeverAskAgain",
        "setNeverAskAgain",
        "simDetailsResponse",
        "Lcom/cred/pay/repository/models/SimResponse;",
        "getSimDetailsResponse",
        "()Lcom/cred/pay/repository/models/SimResponse;",
        "setSimDetailsResponse",
        "(Lcom/cred/pay/repository/models/SimResponse;)V",
        "simSlotId",
        "getSimSlotId",
        "()Ljava/lang/String;",
        "setSimSlotId",
        "(Ljava/lang/String;)V",
        "uiStateData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/upi/UpiViewModel$UpiStateData;",
        "getUiStateData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "CtaClick",
        "GetAccounts",
        "SelectSim",
        "SetMPinItem",
        "SetupMpin",
        "UpiFailureResponse",
        "UpiStateData",
        "cred-upi_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Z

.field asBinder:Lcom/cred/pay/repository/models/SimResponse;

.field asInterface:Ljava/lang/String;

.field final extraCallback:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/snapFromFling$asBinder;",
            ">;"
        }
    .end annotation
.end field

.field onMessageChannelReady:Z

.field onNavigationEvent:Z

.field onRelationshipValidationResult:Lo/postShow;

.field onTransact:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Lo/MediaControllerCompat$TransportControlsApi24;-><init>(Landroid/app/Application;)V

    .line 31
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/snapFromFling;->extraCallback:Lo/setActive;

    const-string p1, "0"

    .line 36
    iput-object p1, p0, Lo/snapFromFling;->asInterface:Ljava/lang/String;

    .line 44
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/snapFromFling;->onTransact:Ljava/util/HashMap;

    return-void
.end method
