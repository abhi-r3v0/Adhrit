.class public final Lo/calculateTimeForDeceleration;
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
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0017\u001a\u00020\u00182\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u001aH\u0002J\u001e\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u00042\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u001aH\u0002J\u0014\u0010\u001d\u001a\u00020\u00182\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u001aR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/firebase/FirebaseAuthManager;",
        "",
        "()V",
        "INSTANCE_NAME",
        "",
        "currentUser",
        "Lcom/google/firebase/auth/FirebaseUser;",
        "firebaseApp",
        "Lcom/google/firebase/FirebaseApp;",
        "getFirebaseApp",
        "()Lcom/google/firebase/FirebaseApp;",
        "setFirebaseApp",
        "(Lcom/google/firebase/FirebaseApp;)V",
        "firebaseAuth",
        "Lcom/google/firebase/auth/FirebaseAuth;",
        "mercury",
        "Lcom/dreamplug/fabrik/ui/lifestyle/firebase/MercuryService;",
        "getMercury",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/firebase/MercuryService;",
        "mercury$delegate",
        "Lkotlin/Lazy;",
        "options",
        "Lcom/google/firebase/FirebaseOptions;",
        "fetchAuthToken",
        "",
        "operation",
        "Lkotlin/Function0;",
        "firebaseSignIn",
        "token",
        "signIn",
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
.field private static final ICustomTabsCallback:Lo/asGzippedBytes;

.field private static asInterface:Lo/isRooted;

.field private static final extraCallback:Lo/isSameListener;

.field private static onMessageChannelReady:Lcom/google/firebase/FirebaseApp;

.field public static final onNavigationEvent:Lo/calculateTimeForDeceleration;

.field private static onPostMessage:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "firebase_win"

    .line 15
    new-instance v1, Lo/calculateTimeForDeceleration;

    invoke-direct {v1}, Lo/calculateTimeForDeceleration;-><init>()V

    sput-object v1, Lo/calculateTimeForDeceleration;->onNavigationEvent:Lo/calculateTimeForDeceleration;

    .line 17
    sget-object v1, Lo/calculateTimeForDeceleration$ICustomTabsCallback;->ICustomTabsCallback:Lo/calculateTimeForDeceleration$ICustomTabsCallback;

    check-cast v1, Lo/getServerTime;

    const-string v2, "initializer"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 17
    sput-object v2, Lo/calculateTimeForDeceleration;->extraCallback:Lo/isSameListener;

    .line 24
    new-instance v1, Lo/asGzippedBytes$onNavigationEvent;

    invoke-direct {v1}, Lo/asGzippedBytes$onNavigationEvent;-><init>()V

    const-string v2, "1:75169063838:android:bc0d5337942e2dea636c8f"

    .line 25
    invoke-virtual {v1, v2}, Lo/asGzippedBytes$onNavigationEvent;->setApplicationId(Ljava/lang/String;)Lo/asGzippedBytes$onNavigationEvent;

    move-result-object v1

    const-string v2, "AIzaSyA1Rb3rpBs2wawYtif9oITiUzExmFBKf_A"

    .line 26
    invoke-virtual {v1, v2}, Lo/asGzippedBytes$onNavigationEvent;->setApiKey(Ljava/lang/String;)Lo/asGzippedBytes$onNavigationEvent;

    move-result-object v1

    const-string v2, "credleaderboard"

    .line 27
    invoke-virtual {v1, v2}, Lo/asGzippedBytes$onNavigationEvent;->setProjectId(Ljava/lang/String;)Lo/asGzippedBytes$onNavigationEvent;

    move-result-object v1

    const-string v2, "https://credleaderboard.firebaseio.com/"

    .line 28
    invoke-virtual {v1, v2}, Lo/asGzippedBytes$onNavigationEvent;->setDatabaseUrl(Ljava/lang/String;)Lo/asGzippedBytes$onNavigationEvent;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lo/asGzippedBytes$onNavigationEvent;->build()Lo/asGzippedBytes;

    move-result-object v1

    const-string v2, "FirebaseOptions.Builder(\u2026URL)\n            .build()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lo/calculateTimeForDeceleration;->ICustomTabsCallback:Lo/asGzippedBytes;

    .line 35
    :try_start_0
    sget-object v1, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 2122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "context"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 35
    :cond_0
    check-cast v1, Landroid/content/Context;

    sget-object v2, Lo/calculateTimeForDeceleration;->ICustomTabsCallback:Lo/asGzippedBytes;

    invoke-static {v1, v2, v0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lo/asGzippedBytes;Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    const-string v2, "FirebaseApp.initializeAp\u2026, options, INSTANCE_NAME)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    const-string v0, "FirebaseApp.getInstance(INSTANCE_NAME)"

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    :goto_0
    sput-object v1, Lo/calculateTimeForDeceleration;->onMessageChannelReady:Lcom/google/firebase/FirebaseApp;

    invoke-static {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    const-string v1, "FirebaseAuth.getInstance(firebaseApp)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lo/calculateTimeForDeceleration;->onPostMessage:Lcom/google/firebase/auth/FirebaseAuth;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Lcom/google/firebase/FirebaseApp;
    .locals 1

    .line 22
    sget-object v0, Lo/calculateTimeForDeceleration;->onMessageChannelReady:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method

.method public static final synthetic ICustomTabsCallback(Ljava/lang/String;Lo/getServerTime;)V
    .locals 1

    .line 3073
    sget-object v0, Lo/calculateTimeForDeceleration;->onPostMessage:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0, p0}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCustomToken(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 3074
    new-instance v0, Lo/calculateTimeForDeceleration$onNavigationEvent;

    invoke-direct {v0, p1}, Lo/calculateTimeForDeceleration$onNavigationEvent;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/addLifecycleEventListener;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->extraCallback(Lo/addLifecycleEventListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 3079
    new-instance v0, Lo/calculateTimeForDeceleration$onPostMessage;

    invoke-direct {v0, p1}, Lo/calculateTimeForDeceleration$onPostMessage;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/addBackgroundStateChangeListener;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Lo/addBackgroundStateChangeListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/isRooted;)V
    .locals 0

    .line 15
    sput-object p0, Lo/calculateTimeForDeceleration;->asInterface:Lo/isRooted;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/getServerTime;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lo/calculateTimeForDeceleration;->asInterface:Lo/isRooted;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    return-void

    .line 2000
    :cond_0
    sget-object v0, Lo/calculateTimeForDeceleration;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/calculateDyToMakeVisible;

    .line 1051
    invoke-interface {v0}, Lo/calculateDyToMakeVisible;->onPostMessage()Lo/clearScrap;

    move-result-object v0

    new-instance v1, Lo/calculateTimeForDeceleration$extraCallback;

    invoke-direct {v1, p1}, Lo/calculateTimeForDeceleration$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method
