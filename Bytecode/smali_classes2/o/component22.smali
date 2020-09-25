.class public final Lo/component22;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final EMAIL_LINK_SIGN_IN_METHOD:Ljava/lang/String; = "emailLink"

.field public static final EMAIL_PASSWORD_SIGN_IN_METHOD:Ljava/lang/String; = "password"

.field public static final PROVIDER_ID:Ljava/lang/String; = "password"


# instance fields
.field private final arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

.field private final arg$2:Lo/insert;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)V
    .locals 0

    .line 7000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/component22;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

    iput-object p2, p0, Lo/component22;->arg$2:Lo/insert;

    return-void
.end method

.method public static getCredential(Ljava/lang/String;Ljava/lang/String;)Lo/calculateUsedDiskSpaceInBytes;
    .locals 2

    .line 4004
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Given String is empty or null"

    if-nez v0, :cond_1

    .line 5004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3004
    new-instance v0, Lo/logControlledError;

    invoke-direct {v0, p0, p1}, Lo/logControlledError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 5005
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4005
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCredentialWithLink(Ljava/lang/String;Ljava/lang/String;)Lo/calculateUsedDiskSpaceInBytes;
    .locals 7

    .line 6005
    invoke-static {p1}, Lo/logControlledError;->zza(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6008
    new-instance v0, Lo/logControlledError;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lo/logControlledError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    .line 6006
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given link is not a valid email link. Please use FirebaseAuth#isSignInWithEmailLink(String) to determine this before calling this function"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)Ljava/lang/Runnable;
    .locals 1

    .line 9000
    new-instance v0, Lo/component22;

    invoke-direct {v0, p0, p1}, Lo/component22;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)V

    return-object v0
.end method

.method public static onPostMessage(Landroid/content/Context;I)Z
    .locals 3

    .line 2007
    sget-object v0, Lo/preferLastSpan$onMessageChannelReady;->extraCallback:Lo/preferLastSpan$onMessageChannelReady;

    invoke-virtual {v0, p0}, Lo/preferLastSpan$onMessageChannelReady;->onNavigationEvent(Landroid/content/Context;)Lo/component28;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    .line 1015
    invoke-virtual {v0, p1, v1}, Lo/component28;->ICustomTabsCallback(ILjava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v2, 0x40

    .line 6
    :try_start_0
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    invoke-static {p0}, Lo/setMinAmount;->onMessageChannelReady(Landroid/content/Context;)Lo/setMinAmount;

    move-result-object p0

    if-eqz p1, :cond_3

    .line 2040
    invoke-static {p1, v0}, Lo/setMinAmount;->extraCallback(Landroid/content/pm/PackageInfo;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 2042
    :cond_1
    invoke-static {p1, v2}, Lo/setMinAmount;->extraCallback(Landroid/content/pm/PackageInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2043
    iget-object p0, p0, Lo/setMinAmount;->onPostMessage:Landroid/content/Context;

    invoke-static {p0}, Lo/getTotalAmount;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Test-keys aren\'t accepted on this build."

    .line 2045
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0

    :catch_0
    const/4 p0, 0x3

    const-string p1, "UidVerifier"

    .line 9
    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "Package manager can\'t find google play services package, defaulting to false"

    .line 10
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 8000
    iget-object v0, p0, Lo/component22;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;

    iget-object v1, p0, Lo/component22;->arg$2:Lo/insert;

    invoke-static {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;->lambda$initChannelTask$5(Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal;Lo/insert;)V

    return-void
.end method
