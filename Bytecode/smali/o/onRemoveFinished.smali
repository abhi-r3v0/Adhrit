.class public final Lo/onRemoveFinished;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R+\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dreamplug/upi/UpiPrefsHelper;",
        "",
        "()V",
        "<set-?>",
        "",
        "lastSessionSuccessResponse",
        "getLastSessionSuccessResponse",
        "()Ljava/lang/String;",
        "setLastSessionSuccessResponse",
        "(Ljava/lang/String;)V",
        "lastSessionSuccessResponse$delegate",
        "Lcom/dreamplug/utils/helpers/sharedpref/SharedPrefStringDelegate;",
        "paymentPref",
        "Lcom/dreamplug/utils/helpers/sharedpref/SharedPrefWrapper;",
        "getPaymentPref",
        "()Lcom/dreamplug/utils/helpers/sharedpref/SharedPrefWrapper;",
        "paymentPref$delegate",
        "Lkotlin/Lazy;",
        "cred-upi_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final synthetic ICustomTabsCallback:[Lo/applyUserOverwrite;

.field public static final extraCallback:Lo/SortedList$BatchedCallback;

.field private static final onNavigationEvent:Lo/isSameListener;

.field public static final onPostMessage:Lo/onRemoveFinished;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/applyUserOverwrite;

    new-instance v1, Lo/access$2802;

    const-class v2, Lo/onRemoveFinished;

    invoke-static {v2}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v2

    const-string v3, "lastSessionSuccessResponse"

    const-string v4, "getLastSessionSuccessResponse()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lo/access$2802;-><init>(Lo/getQueryViews;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/applyEmulatorSettings;->onNavigationEvent(Lo/stopListening;)Lo/getCompleteView;

    move-result-object v1

    check-cast v1, Lo/applyUserOverwrite;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/onRemoveFinished;->ICustomTabsCallback:[Lo/applyUserOverwrite;

    .line 8
    new-instance v0, Lo/onRemoveFinished;

    invoke-direct {v0}, Lo/onRemoveFinished;-><init>()V

    sput-object v0, Lo/onRemoveFinished;->onPostMessage:Lo/onRemoveFinished;

    .line 10
    sget-object v0, Lo/onRemoveFinished$onPostMessage;->onNavigationEvent:Lo/onRemoveFinished$onPostMessage;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 10
    sput-object v1, Lo/onRemoveFinished;->onNavigationEvent:Lo/isSameListener;

    .line 14
    new-instance v0, Lo/SortedList$BatchedCallback;

    .line 2000
    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/compare;

    const-string v2, "last_session_success_response"

    const-string v3, ""

    .line 14
    invoke-direct {v0, v1, v2, v3}, Lo/SortedList$BatchedCallback;-><init>(Lo/compare;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/onRemoveFinished;->extraCallback:Lo/SortedList$BatchedCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
