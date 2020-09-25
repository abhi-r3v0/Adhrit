.class public final Lo/AppsFlyerConversionListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static extraCallback:Z


# instance fields
.field private final arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AppsFlyerConversionListener;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;

    return-void
.end method

.method public static lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)Ljava/lang/Runnable;
    .locals 1

    .line 3000
    new-instance v0, Lo/AppsFlyerConversionListener;

    invoke-direct {v0, p0}, Lo/AppsFlyerConversionListener;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)V

    return-object v0
.end method

.method public static declared-synchronized onPostMessage()V
    .locals 4

    const-class v0, Lo/AppsFlyerConversionListener;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-boolean v1, Lo/AppsFlyerConversionListener;->extraCallback:Z

    if-nez v1, :cond_1

    .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x10

    const/4 v3, 0x1

    if-gt v1, v2, :cond_0

    :try_start_1
    const-string v1, "fb_jpegturbo"

    .line 26
    invoke-static {v1, v3}, Lo/AppsFlyerLibCore$3;->onNavigationEvent(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    const-string v1, "native-imagetranscoder"

    .line 31
    invoke-static {v1}, Lo/AppsFlyerLibCore$3;->onMessageChannelReady(Ljava/lang/String;)Z

    .line 32
    sput-boolean v3, Lo/AppsFlyerConversionListener;->extraCallback:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/AppsFlyerConversionListener;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;

    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->lambda$createV8CollectionParentsIndex$9(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;)V

    return-void
.end method
