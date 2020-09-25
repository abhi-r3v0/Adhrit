.class public Lo/CombineContinuationsWorker;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile onNavigationEvent:Z = false

.field private static onPostMessage:Lo/copy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lo/CombineContinuationsWorker;

    sput-object v0, Lo/CombineContinuationsWorker;->extraCallback:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Lo/weakContext;
    .locals 2

    .line 3140
    invoke-static {}, Lo/key;->onNavigationEvent()Lo/key;

    move-result-object v0

    .line 3302
    iget-object v1, v0, Lo/key;->onPostMessage:Lo/weakContext;

    if-nez v1, :cond_0

    .line 3303
    invoke-virtual {v0}, Lo/key;->extraCallback()Lo/weakContext;

    move-result-object v1

    iput-object v1, v0, Lo/key;->onPostMessage:Lo/weakContext;

    .line 3305
    :cond_0
    iget-object v0, v0, Lo/key;->onPostMessage:Lo/weakContext;

    return-object v0
.end method

.method public static onMessageChannelReady()Lo/CredPointCountModel;
    .locals 8

    .line 136
    sget-object v0, Lo/CombineContinuationsWorker;->onPostMessage:Lo/copy;

    .line 2079
    new-instance v7, Lo/CredPointCountModel;

    iget-object v2, v0, Lo/copy;->onNavigationEvent:Landroid/content/Context;

    iget-object v3, v0, Lo/copy;->extraCallback:Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;

    iget-object v4, v0, Lo/copy;->onPostMessage:Lo/weakContext;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lo/CredPointCountModel;-><init>(Landroid/content/Context;Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;Lo/weakContext;Ljava/util/Set;Ljava/util/Set;)V

    .line 2086
    iget-object v0, v0, Lo/copy;->onMessageChannelReady:Lo/onPostMessage$extraCallback;

    .line 2112
    iput-object v0, v7, Lo/CredPointCountModel;->extraCallback:Lo/onPostMessage$extraCallback;

    .line 2113
    check-cast v7, Lo/CredPointCountModel;

    return-object v7
.end method

.method public static onPostMessage(Landroid/content/Context;)V
    .locals 7

    .line 1063
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 1066
    sget-boolean v0, Lo/CombineContinuationsWorker;->onNavigationEvent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1067
    sget-object v0, Lo/CombineContinuationsWorker;->extraCallback:Ljava/lang/Class;

    const-string v2, "Fresco has already been initialized! `Fresco.initialize(...)` should only be called 1 single time to avoid memory leaks!"

    invoke-static {v0, v2}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 1072
    :cond_0
    sput-boolean v1, Lo/CombineContinuationsWorker;->onNavigationEvent:Z

    .line 1075
    :goto_0
    invoke-static {v1}, Lo/post;->ICustomTabsCallback(Z)V

    .line 1077
    invoke-static {}, Lo/AppsFlyerLibCore$3;->onMessageChannelReady()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1078
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    :try_start_0
    const-string v0, "com.facebook.imagepipeline.nativecode.NativeCodeInitializer"

    .line 1083
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "init"

    new-array v4, v1, [Ljava/lang/Class;

    .line 1084
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v6

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1096
    :catch_0
    :try_start_1
    new-instance v0, Lo/getPaddingBottom;

    invoke-direct {v0}, Lo/getPaddingBottom;-><init>()V

    invoke-static {v0}, Lo/AppsFlyerLibCore$3;->onPostMessage(Lo/AppsFlyerLibCore$6;)V

    goto :goto_1

    .line 1093
    :catch_1
    new-instance v0, Lo/getPaddingBottom;

    invoke-direct {v0}, Lo/getPaddingBottom;-><init>()V

    invoke-static {v0}, Lo/AppsFlyerLibCore$3;->onPostMessage(Lo/AppsFlyerLibCore$6;)V

    goto :goto_1

    .line 1090
    :catch_2
    new-instance v0, Lo/getPaddingBottom;

    invoke-direct {v0}, Lo/getPaddingBottom;-><init>()V

    invoke-static {v0}, Lo/AppsFlyerLibCore$3;->onPostMessage(Lo/AppsFlyerLibCore$6;)V

    goto :goto_1

    .line 1087
    :catch_3
    new-instance v0, Lo/getPaddingBottom;

    invoke-direct {v0}, Lo/getPaddingBottom;-><init>()V

    invoke-static {v0}, Lo/AppsFlyerLibCore$3;->onPostMessage(Lo/AppsFlyerLibCore$6;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1098
    :goto_1
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    goto :goto_3

    :goto_2
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 1099
    throw p0

    .line 1104
    :cond_1
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1106
    invoke-static {p0}, Lo/key;->onPostMessage(Landroid/content/Context;)V

    .line 1118
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 1121
    new-instance v0, Lo/copy;

    invoke-direct {v0, p0, v2}, Lo/copy;-><init>(Landroid/content/Context;Lo/extraCallback$onNavigationEvent;)V

    .line 1123
    sput-object v0, Lo/CombineContinuationsWorker;->onPostMessage:Lo/copy;

    invoke-static {v0}, Lo/setSpeed;->onNavigationEvent(Lo/setPivotX;)V

    .line 1124
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 1111
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void
.end method
