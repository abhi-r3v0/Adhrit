.class public final Lo/closeOptionsMenu;
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
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R+\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000fR+\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0003\u001a\u00020\u00128F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Lclub/cred/interjection/data/InterjectionPrefHelper;",
        "",
        "()V",
        "<set-?>",
        "",
        "lastUpdatedTime",
        "getLastUpdatedTime",
        "()J",
        "setLastUpdatedTime",
        "(J)V",
        "lastUpdatedTime$delegate",
        "Lcom/dreamplug/utils/helpers/sharedpref/SharedPrefLongDelegate;",
        "paymentPref",
        "Lcom/dreamplug/utils/helpers/sharedpref/SharedPrefWrapper;",
        "getPaymentPref",
        "()Lcom/dreamplug/utils/helpers/sharedpref/SharedPrefWrapper;",
        "paymentPref$delegate",
        "Lkotlin/Lazy;",
        "",
        "sessionRateLimit",
        "getSessionRateLimit",
        "()I",
        "setSessionRateLimit",
        "(I)V",
        "sessionRateLimit$delegate",
        "Lcom/dreamplug/utils/helpers/sharedpref/SharedPrefIntDelegate;",
        "interjection_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/isSameListener;

.field public static final extraCallback:Lo/closeOptionsMenu;

.field public static final synthetic onMessageChannelReady:[Lo/applyUserOverwrite;

.field static final onNavigationEvent:Lo/SortedList$Callback;

.field public static final onPostMessage:Lo/copyArray;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/closeOptionsMenu;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/applyUserOverwrite;

    new-instance v2, Lo/access$2802;

    invoke-static {v0}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v3

    const-string/jumbo v4, "sessionRateLimit"

    const-string v5, "getSessionRateLimit()I"

    invoke-direct {v2, v3, v4, v5}, Lo/access$2802;-><init>(Lo/getQueryViews;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/applyEmulatorSettings;->onNavigationEvent(Lo/stopListening;)Lo/getCompleteView;

    move-result-object v2

    check-cast v2, Lo/applyUserOverwrite;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lo/access$2802;

    invoke-static {v0}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v0

    const-string v3, "lastUpdatedTime"

    const-string v4, "getLastUpdatedTime()J"

    invoke-direct {v2, v0, v3, v4}, Lo/access$2802;-><init>(Lo/getQueryViews;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/applyEmulatorSettings;->onNavigationEvent(Lo/stopListening;)Lo/getCompleteView;

    move-result-object v0

    check-cast v0, Lo/applyUserOverwrite;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lo/closeOptionsMenu;->onMessageChannelReady:[Lo/applyUserOverwrite;

    .line 10
    new-instance v0, Lo/closeOptionsMenu;

    invoke-direct {v0}, Lo/closeOptionsMenu;-><init>()V

    sput-object v0, Lo/closeOptionsMenu;->extraCallback:Lo/closeOptionsMenu;

    .line 12
    sget-object v0, Lo/closeOptionsMenu$onPostMessage;->onPostMessage:Lo/closeOptionsMenu$onPostMessage;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 12
    sput-object v1, Lo/closeOptionsMenu;->ICustomTabsCallback:Lo/isSameListener;

    .line 16
    new-instance v0, Lo/SortedList$Callback;

    .line 2000
    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/compare;

    const-string/jumbo v2, "session_rate_limit"

    .line 16
    invoke-direct {v0, v1, v2}, Lo/SortedList$Callback;-><init>(Lo/compare;Ljava/lang/String;)V

    sput-object v0, Lo/closeOptionsMenu;->onNavigationEvent:Lo/SortedList$Callback;

    .line 18
    new-instance v0, Lo/copyArray;

    .line 3000
    sget-object v1, Lo/closeOptionsMenu;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/compare;

    const-string v2, "last_updated_time"

    const-wide/16 v3, 0x0

    .line 18
    invoke-direct {v0, v1, v2, v3, v4}, Lo/copyArray;-><init>(Lo/compare;Ljava/lang/String;J)V

    sput-object v0, Lo/closeOptionsMenu;->onPostMessage:Lo/copyArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
