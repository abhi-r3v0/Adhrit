.class public final Lo/updateToolbarLogo;
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
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0012\u001a\u00020\u000bJ\u0006\u0010\u0013\u001a\u00020\u000bJ\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0006\u0010\u001a\u001a\u00020\u0015J\u0006\u0010\u001b\u001a\u00020\u0015J\u0006\u0010\u001c\u001a\u00020\u0015J\u0012\u0010\u001d\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0004H\u0002J \u0010\u001f\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0010\u0008\u0002\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010!R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\r\"\u0004\u0008\u0011\u0010\u000f\u00a8\u0006\""
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/main/LockUtil;",
        "",
        "()V",
        "AUTHENTICATION_DURATION_SECONDS",
        "",
        "SESSION_AUTHENTICATED",
        "",
        "SESSION_INVALID",
        "biometricHelper",
        "Lcom/dreamplug/androidapp/ui/helpers/BiometricHelper;",
        "ignoreResult",
        "",
        "getIgnoreResult",
        "()Z",
        "setIgnoreResult",
        "(Z)V",
        "isAuthenticating",
        "setAuthenticating",
        "isAuthSetup",
        "isSessionValid",
        "launchAuthenticateIntent",
        "",
        "activity",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "keyguardManager",
        "Landroid/app/KeyguardManager;",
        "markAuthenticated",
        "onAppBackground",
        "removeAuthSetup",
        "setSessionExpiry",
        "duration",
        "showAuthenticationScreen",
        "alreadyAuthenticated",
        "Lkotlin/Function0;",
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
.field private static ICustomTabsCallback:Z

.field public static final onMessageChannelReady:Lo/updateToolbarLogo;

.field private static onPostMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lo/updateToolbarLogo;

    invoke-direct {v0}, Lo/updateToolbarLogo;-><init>()V

    sput-object v0, Lo/updateToolbarLogo;->onMessageChannelReady:Lo/updateToolbarLogo;

    .line 67
    sget-object v0, Lo/copyMarginsFromCompat;->onMessageChannelReady:Lo/copyMarginsFromCompat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/asBinder;Landroid/app/KeyguardManager;)V
    .locals 0

    .line 61
    invoke-static {p0, p1}, Lo/updateToolbarLogo;->onMessageChannelReady(Lo/asBinder;Landroid/app/KeyguardManager;)V

    return-void
.end method

.method public static synthetic ICustomTabsCallback(Lo/updateToolbarLogo;Lo/asBinder;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, p1, v0}, Lo/updateToolbarLogo;->onMessageChannelReady(Lo/asBinder;Lo/getServerTime;)V

    return-void
.end method

.method public static ICustomTabsCallback(Z)V
    .locals 0

    .line 62
    sput-boolean p0, Lo/updateToolbarLogo;->onPostMessage:Z

    return-void
.end method

.method public static ICustomTabsCallback()Z
    .locals 1

    .line 63
    sget-boolean v0, Lo/updateToolbarLogo;->ICustomTabsCallback:Z

    return v0
.end method

.method public static asBinder()Z
    .locals 5

    .line 130
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {}, Lo/setTrackTintMode;->newSession()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {}, Lo/setTrackTintMode;->newSession()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static asInterface()Z
    .locals 5

    .line 134
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-static {}, Lo/setTrackTintMode;->newSession()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static extraCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    sput-boolean v0, Lo/updateToolbarLogo;->ICustomTabsCallback:Z

    return-void
.end method

.method private static onMessageChannelReady(Lo/asBinder;Landroid/app/KeyguardManager;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Lo/addWrite;

    .line 2043
    new-instance v2, Lo/addWrite;

    const-string v3, "authentication_type"

    const-string v4, "default"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "pairs"

    .line 101
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "lock_screen_authentication"

    .line 100
    invoke-static {v1, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 102
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f130141

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 103
    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v2, 0x7f130142

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 102
    invoke-virtual {p1, v1, v2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 104
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static onMessageChannelReady()Z
    .locals 1

    .line 62
    sget-boolean v0, Lo/updateToolbarLogo;->onPostMessage:Z

    return v0
.end method

.method public static onNavigationEvent()V
    .locals 2

    const/4 v0, 0x0

    .line 116
    sput-boolean v0, Lo/updateToolbarLogo;->ICustomTabsCallback:Z

    .line 117
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lo/setTrackTintMode;->extraCallback(J)V

    return-void
.end method

.method public static onPostMessage()V
    .locals 2

    .line 122
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lo/setTrackTintMode;->extraCallback(J)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/asBinder;Lo/getServerTime;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/asBinder;",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguard"

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Landroid/app/KeyguardManager;

    .line 72
    sget-object v1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 1000
    sget-object v1, Lo/isInLayout;->MediaBrowserCompat$ItemReceiver:Lo/isAdded;

    sget-object v2, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v3, 0x56

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {p1}, Lo/copyMarginsFromCompat;->onNavigationEvent(Lo/asBinder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    sput-boolean v2, Lo/updateToolbarLogo;->ICustomTabsCallback:Z

    new-array p2, v2, [Lo/addWrite;

    const/4 v1, 0x0

    .line 1043
    new-instance v3, Lo/addWrite;

    const-string v4, "authentication_type"

    const-string v5, "biometric"

    invoke-direct {v3, v4, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, p2, v1

    const-string v1, "pairs"

    .line 75
    invoke-static {p2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, p2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p2, "lock_screen_authentication"

    .line 74
    invoke-static {p2, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 76
    new-instance p2, Lo/updateToolbarLogo$ICustomTabsCallback;

    move-object v1, p0

    check-cast v1, Lo/updateToolbarLogo;

    invoke-direct {p2, v1}, Lo/updateToolbarLogo$ICustomTabsCallback;-><init>(Lo/updateToolbarLogo;)V

    check-cast p2, Lo/getServerTime;

    .line 77
    new-instance v1, Lo/updateToolbarLogo$onMessageChannelReady;

    invoke-direct {v1, p1, v0}, Lo/updateToolbarLogo$onMessageChannelReady;-><init>(Lo/asBinder;Landroid/app/KeyguardManager;)V

    check-cast v1, Lo/getServerTime;

    .line 79
    new-instance v0, Lo/updateToolbarLogo$onNavigationEvent;

    invoke-direct {v0, p1}, Lo/updateToolbarLogo$onNavigationEvent;-><init>(Lo/asBinder;)V

    check-cast v0, Lo/getServerTime;

    .line 76
    invoke-static {p1, p2, v1, v0}, Lo/copyMarginsFromCompat;->onMessageChannelReady(Lo/asBinder;Lo/getServerTime;Lo/getServerTime;Lo/getServerTime;)V

    return-void

    .line 83
    :cond_0
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "Lock Util"

    const-string v0, "Secure lock screen hasn\'t set up"

    .line 84
    invoke-static {p1, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 85
    invoke-interface {p2}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_1
    return-void

    .line 89
    :cond_2
    :try_start_0
    sput-boolean v2, Lo/updateToolbarLogo;->ICustomTabsCallback:Z

    .line 90
    invoke-static {p1, v0}, Lo/updateToolbarLogo;->onMessageChannelReady(Lo/asBinder;Landroid/app/KeyguardManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    const-string p1, "lock_screen_exception"

    .line 92
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    if-eqz p2, :cond_3

    .line 93
    invoke-interface {p2}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_3
    return-void

    .line 70
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.app.KeyguardManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
