.class public final Lo/CardFinalPaymentData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# static fields
.field private static final onPostMessage:Lo/fromMediaItemList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromMediaItemList<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

.field private final arg$2:[Lo/resetPreviouslyActiveTrackedQueries;

.field private final arg$3:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Lo/fromMediaItemList;

    invoke-direct {v0}, Lo/fromMediaItemList;-><init>()V

    sput-object v0, Lo/CardFinalPaymentData;->onPostMessage:Lo/fromMediaItemList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;[Lo/resetPreviouslyActiveTrackedQueries;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;)V
    .locals 0

    .line 7000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CardFinalPaymentData;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    iput-object p2, p0, Lo/CardFinalPaymentData;->arg$2:[Lo/resetPreviouslyActiveTrackedQueries;

    iput-object p3, p0, Lo/CardFinalPaymentData;->arg$3:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4007
    :try_start_0
    sget-object v1, Lo/preferLastSpan$onMessageChannelReady;->extraCallback:Lo/preferLastSpan$onMessageChannelReady;

    invoke-virtual {v1, p0}, Lo/preferLastSpan$onMessageChannelReady;->onNavigationEvent(Landroid/content/Context;)Lo/component28;

    move-result-object v1

    .line 4024
    iget-object v2, v1, Lo/component28;->onMessageChannelReady:Landroid/content/Context;

    .line 4025
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v1, v1, Lo/component28;->onMessageChannelReady:Landroid/content/Context;

    .line 4026
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 63
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    nop

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 36
    invoke-static {p0}, Lo/CardFinalPaymentData;->ICustomTabsCallback(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_b

    const/4 v4, 0x2

    if-eq p1, v4, :cond_5

    const/4 v4, 0x3

    if-eq p1, v4, :cond_4

    const/4 v4, 0x5

    if-eq p1, v4, :cond_3

    const/4 v4, 0x7

    if-eq p1, v4, :cond_2

    const/16 v4, 0x9

    if-eq p1, v4, :cond_1

    const/16 v4, 0x14

    if-eq p1, v4, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 50
    sget p0, Lo/getCustomAmount$onMessageChannelReady;->common_google_play_services_unknown_issue:I

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v1, p1, v2

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 40
    :pswitch_0
    sget p0, Lo/OrderPaymentJsonAdapter$onMessageChannelReady;->common_google_play_services_updating_text:I

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v1, p1, v2

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p1, "common_google_play_services_sign_in_failed_text"

    .line 48
    invoke-static {p0, p1, v1}, Lo/CardFinalPaymentData;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const-string p1, "common_google_play_services_api_unavailable_text"

    .line 47
    invoke-static {p0, p1, v1}, Lo/CardFinalPaymentData;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "common_google_play_services_restricted_profile_text"

    .line 49
    invoke-static {p0, p1, v1}, Lo/CardFinalPaymentData;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 44
    :cond_1
    sget p0, Lo/OrderPaymentJsonAdapter$onMessageChannelReady;->common_google_play_services_unsupported_text:I

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v1, p1, v2

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p1, "common_google_play_services_network_error_text"

    .line 45
    invoke-static {p0, p1, v1}, Lo/CardFinalPaymentData;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p1, "common_google_play_services_invalid_account_text"

    .line 46
    invoke-static {p0, p1, v1}, Lo/CardFinalPaymentData;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 39
    :cond_4
    sget p0, Lo/OrderPaymentJsonAdapter$onMessageChannelReady;->common_google_play_services_enable_text:I

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v1, p1, v2

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2015
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p1}, Lo/component17;->onPostMessage(Landroid/content/pm/PackageManager;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3015
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt p1, v4, :cond_6

    const/4 p1, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_8

    .line 1023
    invoke-static {p0}, Lo/component17;->onNavigationEvent(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 3016
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1a

    if-lt p0, p1, :cond_7

    const/4 p0, 0x1

    goto :goto_1

    :cond_7
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_9

    :cond_8
    const/4 p0, 0x1

    goto :goto_2

    :cond_9
    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_a

    .line 42
    sget p0, Lo/OrderPaymentJsonAdapter$onMessageChannelReady;->common_google_play_services_wear_update_text:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 43
    :cond_a
    sget p0, Lo/OrderPaymentJsonAdapter$onMessageChannelReady;->common_google_play_services_update_text:I

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v1, p1, v2

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 38
    :cond_b
    sget p0, Lo/OrderPaymentJsonAdapter$onMessageChannelReady;->common_google_play_services_install_text:I

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v1, p1, v2

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static extraCallback(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "GoogleApiAvailability"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 p0, 0x21

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unexpected error code "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_1
    const-string p1, "The current user profile is restricted and could not use authenticated features."

    .line 23
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "common_google_play_services_restricted_profile_title"

    .line 24
    invoke-static {p0, p1}, Lo/CardFinalPaymentData;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const-string p1, "The specified account could not be signed in."

    .line 21
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "common_google_play_services_sign_in_failed_title"

    .line 22
    invoke-static {p0, p1}, Lo/CardFinalPaymentData;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const-string p0, "One of the API components you attempted to connect to is not available."

    .line 19
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_4
    const-string p0, "The application is not licensed to the user."

    .line 17
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_5
    const-string p0, "Developer error occurred. Please see logs for detailed information"

    .line 13
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_6
    const-string p0, "Google Play services is invalid. Cannot recover."

    .line 7
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_7
    const-string p0, "Internal error occurred. Please see logs for detailed information"

    .line 11
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_8
    const-string p1, "Network error occurred. Please retry request later."

    .line 9
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "common_google_play_services_network_error_title"

    .line 10
    invoke-static {p0, p1}, Lo/CardFinalPaymentData;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    const-string p1, "An invalid account was specified when connecting. Please provide a valid account."

    .line 15
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "common_google_play_services_invalid_account_title"

    .line 16
    invoke-static {p0, p1}, Lo/CardFinalPaymentData;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    return-object v1

    .line 5
    :pswitch_b
    sget p0, Lo/OrderPaymentJsonAdapter$onMessageChannelReady;->common_google_play_services_enable_title:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_c
    sget p0, Lo/OrderPaymentJsonAdapter$onMessageChannelReady;->common_google_play_services_update_title:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_d
    sget p0, Lo/OrderPaymentJsonAdapter$onMessageChannelReady;->common_google_play_services_install_title:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;[Lo/resetPreviouslyActiveTrackedQueries;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;)Lcom/google/android/gms/tasks/OnCompleteListener;
    .locals 1

    .line 9000
    new-instance v0, Lo/CardFinalPaymentData;

    invoke-direct {v0, p0, p1, p2}, Lo/CardFinalPaymentData;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;[Lo/resetPreviouslyActiveTrackedQueries;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;)V

    return-object v0
.end method

.method public static onMessageChannelReady(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const p1, 0x104000a

    .line 61
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 59
    :cond_0
    sget p1, Lo/OrderPaymentJsonAdapter$onMessageChannelReady;->common_google_play_services_enable_button:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 60
    :cond_1
    sget p1, Lo/OrderPaymentJsonAdapter$onMessageChannelReady;->common_google_play_services_update_button:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 58
    :cond_2
    sget p1, Lo/OrderPaymentJsonAdapter$onMessageChannelReady;->common_google_play_services_install_button:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const-string p1, "common_google_play_services_resolution_required_title"

    .line 28
    invoke-static {p0, p1}, Lo/CardFinalPaymentData;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p0, p1}, Lo/CardFinalPaymentData;->extraCallback(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lo/OrderPaymentJsonAdapter$onMessageChannelReady;->common_google_play_services_notification_ticker:I

    .line 33
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private static onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 75
    sget-object v0, Lo/CardFinalPaymentData;->onPostMessage:Lo/fromMediaItemList;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lo/CardFinalPaymentData;->onPostMessage:Lo/fromMediaItemList;

    invoke-virtual {v1, p1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 78
    monitor-exit v0

    return-object v1

    .line 79
    :cond_0
    invoke-static {p0}, Lo/setAttributes;->getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 81
    monitor-exit v0

    return-object v1

    :cond_1
    const-string v2, "string"

    const-string v3, "com.google.android.gms"

    .line 82
    invoke-virtual {p0, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const-string p0, "GoogleApiAvailability"

    const-string v2, "Missing resource: "

    .line 84
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    monitor-exit v0

    return-object v1

    .line 86
    :cond_3
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 87
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p0, "GoogleApiAvailability"

    const-string v2, "Got empty resource: "

    .line 88
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    monitor-exit v0

    return-object v1

    .line 90
    :cond_5
    sget-object v1, Lo/CardFinalPaymentData;->onPostMessage:Lo/fromMediaItemList;

    invoke-virtual {v1, p1, p0}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 92
    monitor-exit v0

    throw p0
.end method

.method public static onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    invoke-static {p0, p1}, Lo/CardFinalPaymentData;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 72
    sget p0, Lo/getCustomAmount$onMessageChannelReady;->common_google_play_services_unknown_issue:I

    .line 73
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 74
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent([B)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "SHA-256"

    .line 6000
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 8000
    iget-object v0, p0, Lo/CardFinalPaymentData;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    iget-object v1, p0, Lo/CardFinalPaymentData;->arg$2:[Lo/resetPreviouslyActiveTrackedQueries;

    iget-object v2, p0, Lo/CardFinalPaymentData;->arg$3:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;

    invoke-static {v0, v1, v2, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->lambda$runBidiStreamingRpc$0(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;[Lo/resetPreviouslyActiveTrackedQueries;Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
