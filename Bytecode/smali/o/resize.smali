.class public final Lo/resize;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0010\u0010 \u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010!\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\"\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u001a\u0010#\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010$\u001a\u0004\u0018\u00010\u001fH\u0016J\u0010\u0010%\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010&\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\'\u001a\u00020\u001bH\u0002J\u0008\u0010(\u001a\u00020\u001bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006)"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/utils/AppLifecycleListener;",
        "Landroid/app/Application$ActivityLifecycleCallbacks;",
        "()V",
        "APP_SESSION_LENGTH",
        "",
        "AUDIO_EXPIRY_LENGTH",
        "FIRST_ACTIVITY",
        "",
        "NO_ACTIVITY",
        "appInBackGroundTimeTracker",
        "Lcom/dreamplug/androidapp/utils/TimeTracker;",
        "appInForeground",
        "Landroidx/lifecycle/LiveData;",
        "",
        "getAppInForeground",
        "()Landroidx/lifecycle/LiveData;",
        "firebaseDbViewModel",
        "Lcom/dreamplug/fabrik/ui/lifestyle/firebase/FirebaseWinDBViewModel;",
        "mActivityCount",
        "privateAppInForeground",
        "Landroidx/lifecycle/MutableLiveData;",
        "soundWhenAppWentToBackground",
        "getSoundWhenAppWentToBackground",
        "()Z",
        "setSoundWhenAppWentToBackground",
        "(Z)V",
        "onActivityCreated",
        "",
        "activity",
        "Landroid/app/Activity;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onActivityDestroyed",
        "onActivityPaused",
        "onActivityResumed",
        "onActivitySaveInstanceState",
        "outState",
        "onActivityStarted",
        "onActivityStopped",
        "onAppBackground",
        "onAppForeground",
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
.field private static ICustomTabsCallback:I

.field public static final extraCallback:Lo/resize;

.field private static onMessageChannelReady:Lo/evictionCount;

.field private static final onNavigationEvent:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final onPostMessage:Lo/calculateDtToFit;

.field private static onRelationshipValidationResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lo/resize;

    invoke-direct {v0}, Lo/resize;-><init>()V

    sput-object v0, Lo/resize;->extraCallback:Lo/resize;

    .line 36
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    sput-object v0, Lo/resize;->onNavigationEvent:Lo/setActive;

    .line 38
    new-instance v0, Lo/calculateDtToFit;

    invoke-direct {v0}, Lo/calculateDtToFit;-><init>()V

    sput-object v0, Lo/resize;->onPostMessage:Lo/calculateDtToFit;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 34
    sget-object v0, Lo/resize;->onNavigationEvent:Lo/setActive;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string p2, "activity"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lo/maxSize;->onNavigationEvent:Lo/maxSize;

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1015
    invoke-static {p1}, Lo/maxSize;->ICustomTabsCallback(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1016
    new-instance p2, Lo/maxSize$extraCallback;

    invoke-direct {p2, p1}, Lo/maxSize$extraCallback;-><init>(Landroid/app/Activity;)V

    check-cast p2, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    sput-object p2, Lo/maxSize;->onMessageChannelReady:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1017
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string p2, "activity.window"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const-string p2, "activity.window.decorView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    sget-object p2, Lo/maxSize;->onMessageChannelReady:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 11

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget p1, Lo/resize;->ICustomTabsCallback:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 46
    sput p1, Lo/resize;->ICustomTabsCallback:I

    if-ne p1, v0, :cond_d

    .line 1067
    sget-object p1, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {}, Lo/getTrackTintMode;->ICustomTabsCallback$Stub()V

    .line 1068
    sget-object p1, Lo/resize;->onNavigationEvent:Lo/setActive;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1069
    sget-object p1, Lo/resize;->onMessageChannelReady:Lo/evictionCount;

    const-wide/16 v1, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/evictionCount;->onMessageChannelReady()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    const-wide/32 v5, 0x493e0

    cmp-long p1, v3, v1

    if-eqz p1, :cond_2

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    goto :goto_1

    .line 1074
    :cond_1
    sget-object v1, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    goto :goto_2

    .line 1072
    :cond_2
    :goto_1
    sget-object v1, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    :goto_2
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    cmp-long v7, v3, v5

    if-lez v7, :cond_8

    .line 1078
    :cond_3
    sget-object v5, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    .line 2061
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lo/getTrackTintList;->ICustomTabsCallback:Ljava/lang/String;

    .line 2063
    invoke-virtual {v5}, Lo/getTrackTintList;->ICustomTabsCallback$Stub$Proxy()V

    const/4 v5, 0x6

    new-array v6, v5, [Lo/addWrite;

    .line 2065
    sget-object v7, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    .line 3056
    sget-object v7, Lo/isMeasuring;->onPostMessage:Lo/isMeasuring;

    invoke-static {}, Lo/isMeasuring;->extraCallback()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "ContextProvider.context.resources"

    invoke-static {v7, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v7}, Lo/sortAndDedup;->onNavigationEvent(F)I

    move-result v7

    .line 2065
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4043
    new-instance v8, Lo/addWrite;

    const-string v9, "DEVICE_DENSITY"

    invoke-direct {v8, v9, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v6, v2

    .line 2066
    sget-object v7, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 4122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v8, "context"

    invoke-static {v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2066
    :cond_4
    check-cast v7, Landroid/content/Context;

    invoke-static {v7}, Lo/MediaDescriptionCompatApi21;->onMessageChannelReady(Landroid/content/Context;)Lo/MediaDescriptionCompatApi21;

    move-result-object v7

    invoke-virtual {v7}, Lo/MediaDescriptionCompatApi21;->onNavigationEvent()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 5043
    new-instance v8, Lo/addWrite;

    const-string v9, "NOTIFICATION_ENABLED"

    invoke-direct {v8, v9, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v6, v0

    const/4 v0, 0x2

    .line 2067
    sget-object v7, Lo/detectDisplayOptions;->onPostMessage:Lo/detectDisplayOptions;

    const-string v7, "cred_rewards"

    invoke-static {v7}, Lo/detectDisplayOptions;->onPostMessage(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 6043
    new-instance v8, Lo/addWrite;

    const-string v9, "NOTIFICATION_REWARDS_CHANNEL_ENABLED"

    invoke-direct {v8, v9, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v6, v0

    .line 2068
    sget-object v0, Lo/detectDisplayOptions;->onPostMessage:Lo/detectDisplayOptions;

    const-string v0, "cred_promotions"

    invoke-static {v0}, Lo/detectDisplayOptions;->onPostMessage(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 7043
    new-instance v7, Lo/addWrite;

    const-string v8, "NOTIFICATION_PROMOTIONS_CHANNEL_ENABLED"

    invoke-direct {v7, v8, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v1

    const/4 v0, 0x4

    .line 2069
    sget-object v7, Lo/detectDisplayOptions;->onPostMessage:Lo/detectDisplayOptions;

    const-string v7, "cred_alerts"

    invoke-static {v7}, Lo/detectDisplayOptions;->onPostMessage(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 8043
    new-instance v8, Lo/addWrite;

    const-string v9, "NOTIFICATION_ALERTS_CHANNEL_ENABLED"

    invoke-direct {v8, v9, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v6, v0

    const/4 v0, 0x5

    .line 2070
    sget-object v7, Lo/initLifecycle;->ICustomTabsCallback:Lo/initLifecycle;

    invoke-virtual {v7}, Lo/initLifecycle;->onPostMessage()Ljava/lang/String;

    move-result-object v7

    .line 9043
    new-instance v8, Lo/addWrite;

    const-string v9, "INSTALLATION_ID"

    invoke-direct {v8, v9, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v6, v0

    const-string v0, "pairs"

    .line 2064
    invoke-static {v6, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v6}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v5, "app_launch"

    .line 2064
    invoke-static {v5, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 2073
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    invoke-static {}, Lo/setInterpolator;->ICustomTabsCallback()V

    .line 2074
    sget-object v0, Lo/setTrackResource;->ICustomTabsCallback:Lo/setTrackResource;

    .line 10033
    sget-object v5, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 11000
    sget-object v5, Lo/setTrackTintMode;->extraCommand:Lo/setTitleTextColor;

    sget-object v6, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v7, 0x11

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 10034
    invoke-virtual {v0}, Lo/setTrackResource;->onNavigationEvent()V

    .line 2075
    :cond_5
    sget-object v0, Lo/getPaddingStart;->extraCallback:Lo/getPaddingStart;

    invoke-virtual {v0}, Lo/getPaddingStart;->ICustomTabsCallback()V

    .line 2076
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 12000
    sget-object v0, Lo/setTrackTintMode;->extraCommand:Lo/setTitleTextColor;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v5, v5, v7

    invoke-virtual {v0, v5}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2077
    sget-object v0, Lo/openOptionsMenu;->onMessageChannelReady:Lo/openOptionsMenu;

    invoke-static {}, Lo/openOptionsMenu;->extraCallback()V

    .line 2079
    :cond_6
    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    sget-object v0, Lo/getTrackTintList$onPostMessage;->onMessageChannelReady:Lo/getTrackTintList$onPostMessage;

    check-cast v0, Lo/getServerTime;

    const-string v5, "command"

    invoke-static {v0, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x7d0

    .line 12018
    new-instance v7, Lo/updateItemAt$extraCallback;

    invoke-direct {v7, v0}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v7, Ljava/lang/Runnable;

    invoke-static {v5, v6, v7}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    .line 2083
    sget-boolean v0, Lo/getTrackTintList;->onPostMessage:Z

    if-nez v0, :cond_7

    .line 2084
    sget-object v0, Lo/getTextOff;->onNavigationEvent:Lo/getTextOff;

    invoke-static {}, Lo/getTextOff;->onPostMessage()V

    .line 2086
    :cond_7
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 13000
    sget-object v0, Lo/setTrackTintMode;->unsubscribe:Lo/getNavigationContentDescription;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v6, 0x36

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    .line 14000
    sget-object v0, Lo/setTrackTintMode;->unsubscribe:Lo/getNavigationContentDescription;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v5, v5, v6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 2087
    sput-boolean v2, Lo/getTrackTintList;->onMessageChannelReady:Z

    .line 2088
    sput-boolean v2, Lo/getTrackTintList;->onPostMessage:Z

    .line 2089
    sput-boolean v2, Lo/getTrackTintList;->onNavigationEvent:Z

    :cond_8
    if-eqz p1, :cond_a

    const-wide/16 v5, 0x4e20

    cmp-long p1, v3, v5

    if-lez p1, :cond_9

    goto :goto_3

    .line 1084
    :cond_9
    sget-object p1, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    sget-boolean p1, Lo/resize;->onRelationshipValidationResult:Z

    invoke-static {p1}, Lo/getTrackTintList;->extraCallback(Z)V

    goto :goto_4

    .line 1082
    :cond_a
    :goto_3
    sget-object p1, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {v2}, Lo/getTrackTintList;->extraCallback(Z)V

    .line 1087
    :goto_4
    sget-object p1, Lo/requireParentFragment;->extraCallback:Lo/requireParentFragment;

    .line 14019
    sget-boolean p1, Lo/requireParentFragment;->ICustomTabsCallback:Z

    if-eqz p1, :cond_b

    const-wide/16 v3, 0x1e

    .line 14021
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lo/requireParentFragment;->extraCallback(Ljava/lang/Long;)V

    .line 14022
    sput-boolean v2, Lo/requireParentFragment;->ICustomTabsCallback:Z

    goto :goto_5

    .line 14025
    :cond_b
    invoke-static {}, Lo/requireParentFragment;->onNavigationEvent()V

    .line 1088
    :goto_5
    sget-object p1, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->updateVisuals()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1089
    sget-object p1, Lo/resize;->onPostMessage:Lo/calculateDtToFit;

    invoke-virtual {p1}, Lo/calculateDtToFit;->extraCallback()V

    .line 1091
    :cond_c
    sget-object p1, Lo/keepAll;->onMessageChannelReady:Lo/keepAll;

    check-cast p1, Lo/isFromUser;

    new-instance v0, Lo/resize$onMessageChannelReady;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lo/resize$onMessageChannelReady;-><init>(Lo/setSessionPersistenceKey;)V

    check-cast v0, Lo/nextTransactionOrder;

    .line 15001
    invoke-static {p1, v2, v2, v0, v1}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(Lo/isFromUser;Lo/isZombied;Lo/getQueryParams;Lo/nextTransactionOrder;I)Lo/assertValidTrackedQuery;

    :cond_d
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 9

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget p1, Lo/resize;->ICustomTabsCallback:I

    add-int/lit8 p1, p1, -0x1

    .line 57
    sput p1, Lo/resize;->ICustomTabsCallback:I

    if-nez p1, :cond_4

    .line 15098
    sget-object p1, Lo/getTrackTintMode;->onMessageChannelReady:Lo/getTrackTintMode;

    invoke-static {}, Lo/getTrackTintMode;->ICustomTabsCallback()V

    .line 15099
    sget-object p1, Lo/resize;->onNavigationEvent:Lo/setActive;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 15100
    sget-object p1, Lo/updateToolbarLogo;->onMessageChannelReady:Lo/updateToolbarLogo;

    .line 16109
    invoke-static {}, Lo/updateToolbarLogo;->asBinder()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lo/updateToolbarLogo;->asInterface()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16126
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lo/setTrackTintMode;->extraCallback(J)V

    .line 15101
    :cond_0
    new-instance p1, Lo/evictionCount;

    invoke-direct {p1}, Lo/evictionCount;-><init>()V

    .line 15102
    sput-object p1, Lo/resize;->onMessageChannelReady:Lo/evictionCount;

    invoke-virtual {p1}, Lo/evictionCount;->onPostMessage()V

    .line 15103
    sget-object p1, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->extraCallback()Z

    move-result p1

    sput-boolean p1, Lo/resize;->onRelationshipValidationResult:Z

    .line 15104
    sget-object p1, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    const/4 p1, 0x0

    invoke-static {p1}, Lo/getTrackTintList;->extraCallback(Z)V

    .line 15105
    sget-object v0, Lo/clearOldPosition;->extraCallback:Lo/clearOldPosition;

    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 17000
    sget-object v0, Lo/isInLayout;->IPostMessageService$Stub$Proxy:Lo/isResumed;

    sget-object v1, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v2, 0x24

    aget-object v1, v1, v2

    const-string v2, "property"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18000
    iget-object v0, v0, Lo/hasOptionsMenu;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getJsonObjectFrom;

    .line 17020
    invoke-interface {v0}, Lo/getJsonObjectFrom;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    .line 17000
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 19000
    sget-object v1, Lo/clearOldPosition;->onPostMessage:Lo/addToData;

    sget-object v2, Lo/clearOldPosition;->onNavigationEvent:[Lo/applyUserOverwrite;

    aget-object v2, v2, p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lo/SortedListAdapterCallback;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 15106
    sget-object v0, Lo/willCreateInTime;->onMessageChannelReady:Lo/willCreateInTime;

    invoke-static {}, Lo/willCreateInTime;->extraCallback()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 15121
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "$this$collectionSizeOrDefault"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19039
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    goto :goto_0

    :cond_1
    const/16 v2, 0xa

    .line 15121
    :goto_0
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 15122
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 15123
    check-cast v2, Lo/addWrite;

    .line 15107
    new-instance v3, Lo/addWrite;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20027
    iget-object v5, v2, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 15107
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 20028
    iget-object v2, v2, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 15107
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15124
    :cond_2
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    new-array p1, p1, [Lo/addWrite;

    .line 15126
    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 15106
    check-cast p1, [Lo/addWrite;

    .line 15109
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lo/addWrite;

    const-string v0, "pairs"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20088
    new-instance v0, Ljava/util/LinkedHashMap;

    array-length v1, p1

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "app_background"

    .line 15110
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 15111
    sget-object p1, Lo/willCreateInTime;->onMessageChannelReady:Lo/willCreateInTime;

    invoke-static {}, Lo/willCreateInTime;->onMessageChannelReady()V

    .line 15112
    sget-object p1, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->updateVisuals()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15113
    sget-object p1, Lo/resize;->onPostMessage:Lo/calculateDtToFit;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/calculateDtToFit;->extraCallback(Z)V

    goto :goto_2

    .line 15126
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    return-void
.end method
