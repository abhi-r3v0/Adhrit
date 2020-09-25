.class public final Lo/stopTracking;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final arg$1:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    .line 4000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/stopTracking;->arg$1:Ljava/util/Comparator;

    return-void
.end method

.method public static ICustomTabsCallback(Lo/onInstallConversionFailureNative;Z)Lo/AppsFlyerLib;
    .locals 5

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 1133
    iget-object p1, p0, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    .line 2112
    iget-object p1, p1, Lo/onInstallConversionDataLoadedNative;->extraCallback:Lo/onAppOpenAttributionNative;

    .line 1133
    iget p1, p1, Lo/onAppOpenAttributionNative;->onMessageChannelReady:I

    .line 29
    new-instance v0, Lo/onValidateInAppFailure;

    .line 30
    invoke-virtual {p0}, Lo/onInstallConversionFailureNative;->extraCallback()Lo/afDebugLog;

    move-result-object p0

    new-instance v1, Lo/RatingCompat$StarStyle$onMessageChannelReady;

    invoke-direct {v1, p1}, Lo/RatingCompat$StarStyle$onMessageChannelReady;-><init>(I)V

    invoke-direct {v0, p0, p1, v1}, Lo/onValidateInAppFailure;-><init>(Lo/afDebugLog;ILo/RatingCompat$StarStyle$onMessageChannelReady;)V

    return-object v0

    .line 31
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3

    .line 32
    invoke-static {}, Lo/post;->ICustomTabsCallback()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const-string v1, "Wrong Native code setup, reflection failed."

    if-eqz p1, :cond_2

    .line 38
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge p1, v2, :cond_2

    const-string p0, "com.facebook.imagepipeline.platform.GingerbreadPurgeableDecoder"

    .line 40
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Class;

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/AppsFlyerLib;

    return-object p0

    :cond_2
    const-string p1, "com.facebook.imagepipeline.platform.KitKatPurgeableDecoder"

    .line 44
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 45
    const-class v4, Lo/AFSensorManager$4;

    aput-object v4, v3, v0

    .line 47
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    .line 48
    invoke-virtual {p0}, Lo/onInstallConversionFailureNative;->onMessageChannelReady()Lo/AFSensorManager$4;

    move-result-object p0

    aput-object p0, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/AppsFlyerLib;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 59
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 57
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 55
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 53
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    .line 51
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 2133
    :cond_3
    :goto_0
    iget-object p1, p0, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    .line 3112
    iget-object p1, p1, Lo/onInstallConversionDataLoadedNative;->extraCallback:Lo/onAppOpenAttributionNative;

    .line 2133
    iget p1, p1, Lo/onAppOpenAttributionNative;->onMessageChannelReady:I

    .line 34
    new-instance v0, Lo/onAttributionFailure;

    .line 35
    invoke-virtual {p0}, Lo/onInstallConversionFailureNative;->extraCallback()Lo/afDebugLog;

    move-result-object p0

    new-instance v1, Lo/RatingCompat$StarStyle$onMessageChannelReady;

    invoke-direct {v1, p1}, Lo/RatingCompat$StarStyle$onMessageChannelReady;-><init>(I)V

    invoke-direct {v0, p0, p1, v1}, Lo/onAttributionFailure;-><init>(Lo/afDebugLog;ILo/RatingCompat$StarStyle$onMessageChannelReady;)V

    return-object v0
.end method

.method public static lambdaFactory$(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1

    .line 6000
    new-instance v0, Lo/stopTracking;

    invoke-direct {v0, p0}, Lo/stopTracking;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 5000
    iget-object v0, p0, Lo/stopTracking;->arg$1:Ljava/util/Comparator;

    check-cast p1, Lo/setDiskUsed;

    check-cast p2, Lo/setDiskUsed;

    invoke-static {v0, p1, p2}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->lambda$emptySet$0(Ljava/util/Comparator;Lo/setDiskUsed;Lo/setDiskUsed;)I

    move-result p1

    return p1
.end method
