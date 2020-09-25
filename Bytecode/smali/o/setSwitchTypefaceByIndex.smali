.class public final Lo/setSwitchTypefaceByIndex;
.super Landroid/app/Application;
.source ""

# interfaces
.implements Lo/getActions$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setSwitchTypefaceByIndex$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \n2\u00020\u00012\u00020\u0002:\u0001\nB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0002J\u0008\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\t\u001a\u00020\u0007H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/DreamApplication;",
        "Landroid/app/Application;",
        "Landroidx/work/Configuration$Provider;",
        "()V",
        "getWorkManagerConfiguration",
        "Landroidx/work/Configuration;",
        "initStringRepo",
        "",
        "initializeExternalTools",
        "onCreate",
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


# static fields
.field private static extraCallback:Lo/setSwitchTypefaceByIndex;

.field public static final onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setSwitchTypefaceByIndex$onNavigationEvent;-><init>(B)V

    sput-object v0, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static final synthetic onPostMessage()Lo/setSwitchTypefaceByIndex;
    .locals 1

    .line 41
    sget-object v0, Lo/setSwitchTypefaceByIndex;->extraCallback:Lo/setSwitchTypefaceByIndex;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/getActions;
    .locals 2

    .line 119
    new-instance v0, Lo/getActions$extraCallback;

    invoke-direct {v0}, Lo/getActions$extraCallback;-><init>()V

    .line 11434
    new-instance v1, Lo/getActions;

    invoke-direct {v1, v0}, Lo/getActions;-><init>(Lo/getActions$extraCallback;)V

    const-string v0, "Configuration.Builder().build()"

    .line 119
    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final onCreate()V
    .locals 14

    .line 44
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 45
    move-object v0, p0

    check-cast v0, Lo/setSwitchTypefaceByIndex;

    sput-object v0, Lo/setSwitchTypefaceByIndex;->extraCallback:Lo/setSwitchTypefaceByIndex;

    .line 46
    sget-object v0, Lo/isMeasuring;->onPostMessage:Lo/isMeasuring;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/isMeasuring;->ICustomTabsCallback(Landroid/content/Context;)V

    .line 47
    sget-object v1, Lo/getThumbDrawable;->onMessageChannelReady:Lo/getThumbDrawable;

    check-cast v1, Lo/instantiateProvider;

    .line 1027
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    sput-object v2, Lo/OperationCanceledException;->extraCallback:Landroid/app/Application;

    .line 1028
    sput-object v1, Lo/OperationCanceledException;->onPostMessage:Lo/instantiateProvider;

    .line 1088
    sget-object v1, Lo/OperationCanceledException;->extraCallback:Landroid/app/Application;

    if-eqz v1, :cond_10

    .line 1089
    sget-object v1, Lo/OperationCanceledException;->extraCallback:Landroid/app/Application;

    const/4 v2, 0x0

    const-string v3, "com.dreamplug.auth"

    .line 1084
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "auth_session_id"

    .line 1035
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "auth_refresh_token"

    .line 1036
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x0

    const-string v7, "auth_session_expiry"

    .line 1037
    invoke-interface {v1, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 1038
    new-instance v1, Lo/OperationCanceledException$2;

    invoke-direct {v1, v4, v3, v7, v8}, Lo/OperationCanceledException$2;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v1, Lo/OperationCanceledException;->onNavigationEvent:Lo/checkCompatWrapper;

    .line 49
    new-instance v1, Lo/getLogoDescription;

    invoke-direct {v1, v0}, Lo/getLogoDescription;-><init>(Landroid/content/Context;)V

    .line 50
    sget-object v3, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    sget-object v3, Lo/getThumbTextPadding;->ICustomTabsCallback:Lo/getThumbTextPadding;

    check-cast v3, Lo/bindViewToPosition;

    invoke-static {v0, v3}, Lo/factorInBindTime;->extraCallback(Landroid/content/Context;Lo/bindViewToPosition;)V

    .line 51
    sget-object v3, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    const-string v3, "https://app-prod.dreamplug.in"

    invoke-static {v3}, Lo/factorInBindTime;->onNavigationEvent(Ljava/lang/String;)V

    .line 52
    sget-object v3, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    sget-object v3, Lo/SwitchCompat;->ICustomTabsCallback:Lo/SwitchCompat;

    check-cast v3, Lo/getScrapList;

    invoke-static {v3}, Lo/factorInBindTime;->onMessageChannelReady(Lo/getScrapList;)V

    .line 1113
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v3

    const-string v4, "FirebaseCrashlytics.getInstance()"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 1114
    invoke-virtual {v3, v4}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCrashlyticsCollectionEnabled(Z)V

    const-string v7, "gitSha"

    const-string v8, "3a9eba1592"

    .line 1115
    invoke-virtual {v3, v7, v8}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "HASH: "

    .line 55
    invoke-virtual {v1}, Lo/getLogoDescription;->extraCallback()Ljava/util/ArrayList;

    move-result-object v1

    const-string v7, "appSignatureHelper.appSignatures"

    invoke-static {v1, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Collection;

    new-array v7, v2, [Ljava/lang/String;

    .line 129
    invoke-interface {v1, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 55
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "tag"

    invoke-static {v3, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2074
    sget-object v7, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    invoke-static {v3, v1}, Lo/replaceAll;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v1, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {}, Lo/getTrackTintMode;->onPostMessage()Lo/getCollapseIcon;

    move-result-object v1

    check-cast v1, Lo/frameInBuffer$onPostMessage;

    invoke-static {v1}, Lo/frameInBuffer;->onMessageChannelReady(Lo/frameInBuffer$onPostMessage;)V

    .line 62
    sget-object v1, Lo/onRequestSendAccessibilityEvent;->extraCallback:Lo/onRequestSendAccessibilityEvent;

    invoke-static {v0}, Lo/onRequestSendAccessibilityEvent;->onNavigationEvent(Landroid/content/Context;)V

    .line 63
    sget-object v1, Lo/dismiss;->onNavigationEvent:Lo/dismiss;

    sget-object v1, Lo/setSwitchTypefaceByIndex;->extraCallback:Lo/setSwitchTypefaceByIndex;

    const-string v3, "context"

    if-nez v1, :cond_0

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const v7, 0x7f130272

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/dismiss;->extraCallback(Ljava/lang/String;)V

    .line 64
    sget-object v1, Lo/dismiss;->onNavigationEvent:Lo/dismiss;

    const-string v1, "cred_checkout"

    invoke-static {v1}, Lo/dismiss;->onNavigationEvent(Ljava/lang/String;)V

    .line 65
    sget-object v1, Lo/dismiss;->onNavigationEvent:Lo/dismiss;

    const-string v1, "prod"

    invoke-static {v1}, Lo/dismiss;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 66
    sget-object v1, Lo/removePromptView;->onMessageChannelReady:Lo/removePromptView;

    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 3000
    sget-object v1, Lo/setTrackTintMode;->onRelationshipValidationResult:Lo/setSubtitleTextColor;

    sget-object v7, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-virtual {v1, v7}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    invoke-static {v1}, Lo/removePromptView;->onMessageChannelReady(Ljava/lang/String;)V

    .line 67
    new-instance v1, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;

    const v7, 0x7f130063

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v8, "com.dreamplug.androidapp"

    const-string v10, "2.1.8.4"

    const-string v11, "20108004"

    const-string v12, "com.dreamplug.androidapp"

    const-string v13, "Customer"

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object v7, Lo/initLifecycle;->ICustomTabsCallback:Lo/initLifecycle;

    sget-object v8, Lo/getDimension;->extraCallback:Lo/getDimension;

    check-cast v8, Lo/getArguments;

    const-string v9, "com.dreamplug.deviceattributes"

    .line 3059
    invoke-virtual {v0, v9, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, v7, Lo/initLifecycle;->onTransact:Landroid/content/SharedPreferences;

    .line 3060
    iput-object v1, v7, Lo/initLifecycle;->asBinder:Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;

    .line 3061
    iput-object v8, v7, Lo/initLifecycle;->onRelationshipValidationResult:Lo/getArguments;

    .line 3067
    invoke-virtual {v7}, Lo/initLifecycle;->onPostMessage()Ljava/lang/String;

    move-result-object v1

    .line 3068
    iget-object v7, v7, Lo/initLifecycle;->asBinder:Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;

    invoke-virtual {v7, v1}, Lcom/dreamplug/deviceattributes/models/ApplicationAttributes;->setInstallId(Ljava/lang/String;)V

    .line 4057
    sget-object v1, Lo/OperationCanceledException;->onNavigationEvent:Lo/checkCompatWrapper;

    invoke-interface {v1}, Lo/checkCompatWrapper;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    .line 4058
    sget-object v7, Lo/OperationCanceledException;->onNavigationEvent:Lo/checkCompatWrapper;

    invoke-interface {v7}, Lo/checkCompatWrapper;->getExpiryTimeStamp()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    if-eqz v1, :cond_1

    .line 4062
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    cmp-long v1, v8, v5

    if-eqz v1, :cond_1

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    const-wide/32 v7, 0x927c0

    sub-long/2addr v5, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-gez v1, :cond_1

    .line 4063
    sget-object v1, Lo/directExecutor;->onPostMessage:Lo/directExecutor;

    .line 5000
    invoke-static {v1}, Lo/directExecutor;->onPostMessage(Lo/directExecutor;)V

    .line 5098
    :cond_1
    new-instance v1, Lo/setInterpolator$onNavigationEvent;

    move-object v5, p0

    check-cast v5, Landroid/app/Application;

    invoke-direct {v1, v5}, Lo/setInterpolator$onNavigationEvent;-><init>(Landroid/app/Application;)V

    .line 5099
    new-instance v6, Lo/setRetainInstance;

    invoke-direct {v6, v5}, Lo/setRetainInstance;-><init>(Landroid/app/Application;)V

    check-cast v6, Lo/willRunPredictiveAnimations;

    const-string v7, "provider"

    invoke-static {v6, v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5120
    iget-object v7, v1, Lo/setInterpolator$onNavigationEvent;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5124
    sget-object v6, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    iget-object v7, v1, Lo/setInterpolator$onNavigationEvent;->extraCallback:Landroid/app/Application;

    iget-object v1, v1, Lo/setInterpolator$onNavigationEvent;->onNavigationEvent:Ljava/util/List;

    invoke-static {v6, v7, v1}, Lo/setInterpolator;->ICustomTabsCallback(Lo/setInterpolator;Landroid/app/Application;Ljava/util/List;)V

    .line 5103
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 6000
    sget-object v1, Lo/setTrackTintMode;->getItem:Lo/getCollapseContentDescription;

    sget-object v6, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v7, 0x32

    aget-object v6, v6, v7

    invoke-virtual {v1, v6}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const v6, 0x132d2e4

    if-ge v1, v6, :cond_2

    .line 5104
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 7000
    sget-object v1, Lo/setTrackTintMode;->getItem:Lo/getCollapseContentDescription;

    sget-object v8, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v7, v8, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 5105
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    invoke-static {}, Lo/setInterpolator;->onMessageChannelReady()V

    .line 71
    :cond_2
    sget-object v1, Lo/openOptionsMenu;->onMessageChannelReady:Lo/openOptionsMenu;

    sget-object v1, Lo/setSwitchTypefaceByIndex$onPostMessage;->ICustomTabsCallback:Lo/setSwitchTypefaceByIndex$onPostMessage;

    check-cast v1, Lo/getServerTime;

    invoke-static {v5, v1}, Lo/openOptionsMenu;->onPostMessage(Landroid/app/Application;Lo/getServerTime;)V

    .line 74
    invoke-static {v5}, Lo/getTrackTintMode;->onNavigationEvent(Landroid/app/Application;)V

    .line 75
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 76
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 77
    sget-object v1, Lo/resize;->extraCallback:Lo/resize;

    check-cast v1, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v1}, Lo/setSwitchTypefaceByIndex;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 78
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v1, v7, :cond_4

    .line 79
    new-instance v1, Lo/getDragToOpenListener$extraCallback;

    invoke-direct {v1, v0}, Lo/getDragToOpenListener$extraCallback;-><init>(Landroid/content/Context;)V

    .line 7025
    iget-object v7, v1, Lo/getDragToOpenListener$extraCallback;->extraCallback:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    check-cast v7, Landroid/app/NotificationManager;

    .line 7026
    iget-object v1, v1, Lo/getDragToOpenListener$extraCallback;->onMessageChannelReady:Ljava/util/List;

    invoke-virtual {v7, v1}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    goto :goto_0

    .line 7025
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_4
    :goto_0
    sget-object v1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-static {}, Lo/getMaxCardElevation;->ICustomTabsCallback()V

    .line 82
    sget-object v1, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    invoke-static {}, Lo/replaceAll;->onNavigationEvent()V

    .line 83
    sget-object v1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-static {}, Lo/getMaxCardElevation;->onMessageChannelReady()V

    .line 84
    invoke-static {v0}, Lo/CombineContinuationsWorker;->onPostMessage(Landroid/content/Context;)V

    .line 86
    sget-object v0, Lo/updateIntent;->onMessageChannelReady:Lo/updateIntent;

    sget-object v0, Lo/setSwitchTypefaceByIndex;->extraCallback:Lo/setSwitchTypefaceByIndex;

    if-nez v0, :cond_5

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_5
    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8019
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v7, -0x1

    const-string v8, "LAST_APP_VER_CODE"

    .line 8020
    invoke-interface {v1, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ge v7, v6, :cond_6

    const/4 v2, 0x1

    :cond_6
    if-eqz v2, :cond_b

    .line 8024
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v8, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const v1, 0x1313ca0

    const/16 v2, 0x11

    if-ge v7, v1, :cond_7

    .line 8030
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 9000
    sget-object v1, Lo/setTrackTintMode;->extraCommand:Lo/setTitleTextColor;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8031
    sget-object v1, Lo/onCreateOptionsMenu;->onPostMessage:Lo/onCreateOptionsMenu;

    invoke-static {v1}, Lo/onCreateOptionsMenu;->ICustomTabsCallback(Lo/onCreateOptionsMenu;)V

    .line 8034
    :cond_7
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 10000
    sget-object v1, Lo/setTrackTintMode;->extraCommand:Lo/setTitleTextColor;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, 0x1314c40

    if-ge v7, v1, :cond_a

    .line 8037
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-eq v1, v2, :cond_8

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-ne v1, v2, :cond_a

    .line 8046
    :cond_8
    const-class v1, Landroid/app/job/JobScheduler;

    invoke-static {v0, v1}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_9

    .line 8038
    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->cancelAll()V

    .line 8039
    :cond_9
    sget-object v0, Lo/onRequestSendAccessibilityEvent;->extraCallback:Lo/onRequestSendAccessibilityEvent;

    invoke-static {}, Lo/onRequestSendAccessibilityEvent;->onPostMessage()V

    goto :goto_1

    :cond_a
    const v0, 0x132bf58

    if-ge v7, v0, :cond_b

    .line 8041
    sget-object v0, Lo/onRequestSendAccessibilityEvent;->extraCallback:Lo/onRequestSendAccessibilityEvent;

    invoke-static {}, Lo/onRequestSendAccessibilityEvent;->onPostMessage()V

    .line 87
    :cond_b
    :goto_1
    sget-object v0, Lo/setSubUiVisibilityListener;->extraCallback:Lo/setSubUiVisibilityListener$ICustomTabsCallback;

    sget-object v1, Lo/setSwitchTypefaceByIndex;->extraCallback:Lo/setSwitchTypefaceByIndex;

    if-nez v1, :cond_c

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v0, v1}, Lo/subUiVisibilityChanged;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lo/getLayoutPosition;->extraCallback:Lo/getLayoutPosition;

    invoke-static {v5}, Lo/getLayoutPosition;->ICustomTabsCallback(Landroid/app/Application;)V

    .line 89
    sget-object v0, Lo/isPendingInitialRun;->onNavigationEvent:Lo/isPendingInitialRun;

    sget-object v1, Lo/setSwitchTypefaceByIndex;->extraCallback:Lo/setSwitchTypefaceByIndex;

    if-nez v1, :cond_d

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_d
    check-cast v1, Landroid/content/Context;

    new-instance v2, Lo/getSwitchMinWidth$onPostMessage;

    invoke-direct {v2}, Lo/getSwitchMinWidth$onPostMessage;-><init>()V

    check-cast v2, Lo/onAnimation;

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "riverConfig"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10054
    sput-object v2, Lo/isPendingInitialRun;->ICustomTabsCallback:Lo/onAnimation;

    .line 10059
    sput-object v1, Lo/isPendingInitialRun;->onMessageChannelReady:Landroid/content/Context;

    .line 10060
    sget-object v2, Lo/isPendingInitialRun$ICustomTabsCallback$onPostMessage;->onMessageChannelReady:Lo/isPendingInitialRun$ICustomTabsCallback$onPostMessage;

    check-cast v2, Lo/isPendingInitialRun$ICustomTabsCallback;

    const/4 v3, 0x6

    invoke-static {v0, v2, v3}, Lo/isPendingInitialRun;->onNavigationEvent(Lo/isPendingInitialRun;Lo/isPendingInitialRun$ICustomTabsCallback;I)V

    .line 10061
    invoke-static {}, Lo/isPendingInitialRun;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10063
    sget-object v0, Lo/addAll;->ICustomTabsCallback:Lo/addAll;

    check-cast v0, Landroid/os/Handler;

    .line 10178
    new-instance v2, Lo/isPendingInitialRun$onNavigationEvent;

    invoke-direct {v2, v1}, Lo/isPendingInitialRun$onNavigationEvent;-><init>(Landroid/content/Context;)V

    check-cast v2, Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa0

    .line 10180
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    :cond_e
    sget-object v0, Lo/SnapHelper;->extraCallback:Lo/SnapHelper;

    new-instance v0, Lo/setSwitchTypefaceByIndex$onMessageChannelReady;

    invoke-direct {v0}, Lo/setSwitchTypefaceByIndex$onMessageChannelReady;-><init>()V

    check-cast v0, Lo/onChangeFinished;

    invoke-static {v0}, Lo/SnapHelper;->extraCallback(Lo/onChangeFinished;)V

    .line 94
    sget-object v0, Lo/entryRemoved;->onPostMessage:Lo/entryRemoved;

    invoke-static {}, Lo/entryRemoved;->onPostMessage()V

    return-void

    .line 129
    :cond_f
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1091
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Have you called Authenticator.init(Context context) first?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
