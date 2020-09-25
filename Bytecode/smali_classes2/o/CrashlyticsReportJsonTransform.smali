.class public final Lo/CrashlyticsReportJsonTransform;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/parseFile;


# instance fields
.field private storage:Lo/parseReport;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lo/parseReport;->getInstance(Landroid/content/Context;)Lo/parseReport;

    move-result-object p1

    iput-object p1, p0, Lo/CrashlyticsReportJsonTransform;->storage:Lo/parseReport;

    return-void
.end method

.method constructor <init>(Lo/parseReport;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lo/CrashlyticsReportJsonTransform;->storage:Lo/parseReport;

    return-void
.end method

.method public static component()Lo/getNativeReportFiles;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getNativeReportFiles<",
            "Lo/parseFile;",
            ">;"
        }
    .end annotation

    .line 55
    const-class v0, Lo/parseFile;

    invoke-static {v0}, Lo/getNativeReportFiles;->builder(Ljava/lang/Class;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 56
    invoke-static {v1}, Lo/CrashlyticsCore$1;->required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v0

    invoke-static {}, Lo/parseUser;->lambdaFactory$()Lo/doBackgroundInitializationAsync;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lo/getNativeReportFiles$extraCallback;->factory(Lo/doBackgroundInitializationAsync;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lo/getNativeReportFiles$extraCallback;->build()Lo/getNativeReportFiles;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$component$0(Lo/logException;)Lo/parseFile;
    .locals 2

    .line 57
    new-instance v0, Lo/CrashlyticsReportJsonTransform;

    const-class v1, Landroid/content/Context;

    invoke-interface {p0, v1}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0}, Lo/CrashlyticsReportJsonTransform;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final getHeartBeatCode(Ljava/lang/String;)Lo/parseFile$onMessageChannelReady;
    .locals 3

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 42
    iget-object v2, p0, Lo/CrashlyticsReportJsonTransform;->storage:Lo/parseReport;

    invoke-virtual {v2, p1, v0, v1}, Lo/parseReport;->shouldSendSdkHeartBeat(Ljava/lang/String;J)Z

    move-result p1

    .line 43
    iget-object v2, p0, Lo/CrashlyticsReportJsonTransform;->storage:Lo/parseReport;

    invoke-virtual {v2, v0, v1}, Lo/parseReport;->shouldSendGlobalHeartBeat(J)Z

    move-result v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 45
    sget-object p1, Lo/parseFile$onMessageChannelReady;->COMBINED:Lo/parseFile$onMessageChannelReady;

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    .line 47
    sget-object p1, Lo/parseFile$onMessageChannelReady;->GLOBAL:Lo/parseFile$onMessageChannelReady;

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 49
    sget-object p1, Lo/parseFile$onMessageChannelReady;->SDK:Lo/parseFile$onMessageChannelReady;

    return-object p1

    .line 51
    :cond_2
    sget-object p1, Lo/parseFile$onMessageChannelReady;->NONE:Lo/parseFile$onMessageChannelReady;

    return-object p1
.end method
