.class public final Lo/setOnItemSelectedListener;
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
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R+\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR+\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u000c8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u0016\u0010\u0017R+\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u000c8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u0013\u001a\u0004\u0008\u001b\u0010\u000f\"\u0004\u0008\u001c\u0010\u0011\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/cred/pay/repository/PaymentPrefsHelper;",
        "",
        "()V",
        "<set-?>",
        "",
        "lastPaymentUpiInstrumentId",
        "getLastPaymentUpiInstrumentId",
        "()Ljava/lang/String;",
        "setLastPaymentUpiInstrumentId",
        "(Ljava/lang/String;)V",
        "lastPaymentUpiInstrumentId$delegate",
        "Lcom/dreamplug/utils/helpers/sharedpref/SharedPrefStringDelegate;",
        "",
        "otherOptionsClickCount",
        "getOtherOptionsClickCount",
        "()I",
        "setOtherOptionsClickCount",
        "(I)V",
        "otherOptionsClickCount$delegate",
        "Lcom/dreamplug/utils/helpers/sharedpref/SharedPrefIntDelegate;",
        "paymentPref",
        "Lcom/dreamplug/utils/helpers/sharedpref/SharedPrefWrapper;",
        "getPaymentPref",
        "()Lcom/dreamplug/utils/helpers/sharedpref/SharedPrefWrapper;",
        "paymentPref$delegate",
        "Lkotlin/Lazy;",
        "visaOnboardingIntroCount",
        "getVisaOnboardingIntroCount",
        "setVisaOnboardingIntroCount",
        "visaOnboardingIntroCount$delegate",
        "credpayrepository_release"
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

.field private static final ICustomTabsCallback$Stub:Lo/isSameListener;

.field public static final extraCallback:Lo/setOnItemSelectedListener;

.field public static final onMessageChannelReady:Lo/SortedList$Callback;

.field public static final onNavigationEvent:Lo/SortedList$Callback;

.field public static final onPostMessage:Lo/SortedList$BatchedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/setOnItemSelectedListener;

    const/4 v1, 0x3

    new-array v1, v1, [Lo/applyUserOverwrite;

    new-instance v2, Lo/access$2802;

    invoke-static {v0}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v3

    const-string v4, "lastPaymentUpiInstrumentId"

    const-string v5, "getLastPaymentUpiInstrumentId()Ljava/lang/String;"

    invoke-direct {v2, v3, v4, v5}, Lo/access$2802;-><init>(Lo/getQueryViews;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/applyEmulatorSettings;->onNavigationEvent(Lo/stopListening;)Lo/getCompleteView;

    move-result-object v2

    check-cast v2, Lo/applyUserOverwrite;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lo/access$2802;

    invoke-static {v0}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v3

    const-string v4, "otherOptionsClickCount"

    const-string v5, "getOtherOptionsClickCount()I"

    invoke-direct {v2, v3, v4, v5}, Lo/access$2802;-><init>(Lo/getQueryViews;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/applyEmulatorSettings;->onNavigationEvent(Lo/stopListening;)Lo/getCompleteView;

    move-result-object v2

    check-cast v2, Lo/applyUserOverwrite;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lo/access$2802;

    invoke-static {v0}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v0

    const-string/jumbo v3, "visaOnboardingIntroCount"

    const-string v4, "getVisaOnboardingIntroCount()I"

    invoke-direct {v2, v0, v3, v4}, Lo/access$2802;-><init>(Lo/getQueryViews;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/applyEmulatorSettings;->onNavigationEvent(Lo/stopListening;)Lo/getCompleteView;

    move-result-object v0

    check-cast v0, Lo/applyUserOverwrite;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lo/setOnItemSelectedListener;->ICustomTabsCallback:[Lo/applyUserOverwrite;

    .line 9
    new-instance v0, Lo/setOnItemSelectedListener;

    invoke-direct {v0}, Lo/setOnItemSelectedListener;-><init>()V

    sput-object v0, Lo/setOnItemSelectedListener;->extraCallback:Lo/setOnItemSelectedListener;

    .line 11
    sget-object v0, Lo/setOnItemSelectedListener$onMessageChannelReady;->ICustomTabsCallback:Lo/setOnItemSelectedListener$onMessageChannelReady;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 11
    sput-object v1, Lo/setOnItemSelectedListener;->ICustomTabsCallback$Stub:Lo/isSameListener;

    .line 15
    new-instance v0, Lo/SortedList$BatchedCallback;

    .line 2000
    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/compare;

    const-string v2, "last_payment_upi_instrument_id"

    const-string v3, ""

    .line 15
    invoke-direct {v0, v1, v2, v3}, Lo/SortedList$BatchedCallback;-><init>(Lo/compare;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lo/setOnItemSelectedListener;->onPostMessage:Lo/SortedList$BatchedCallback;

    .line 16
    new-instance v0, Lo/SortedList$Callback;

    .line 3000
    sget-object v1, Lo/setOnItemSelectedListener;->ICustomTabsCallback$Stub:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/compare;

    const-string v2, "other_options_click_count"

    .line 16
    invoke-direct {v0, v1, v2}, Lo/SortedList$Callback;-><init>(Lo/compare;Ljava/lang/String;)V

    sput-object v0, Lo/setOnItemSelectedListener;->onNavigationEvent:Lo/SortedList$Callback;

    .line 17
    new-instance v0, Lo/SortedList$Callback;

    .line 4000
    sget-object v1, Lo/setOnItemSelectedListener;->ICustomTabsCallback$Stub:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/compare;

    const-string/jumbo v2, "visa_onboarding_intro_count"

    .line 17
    invoke-direct {v0, v1, v2}, Lo/SortedList$Callback;-><init>(Lo/compare;Ljava/lang/String;)V

    sput-object v0, Lo/setOnItemSelectedListener;->onMessageChannelReady:Lo/SortedList$Callback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
