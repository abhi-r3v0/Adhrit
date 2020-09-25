.class public Lcom/google/firebase/datatransport/TransportRegistrar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$getComponents$0(Lo/logException;)Lo/AppsFlyerProperties$EmailsCryptType;
    .locals 1

    .line 37
    const-class v0, Landroid/content/Context;

    invoke-interface {p0, v0}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lo/OaidClient;->onPostMessage(Landroid/content/Context;)V

    .line 1091
    sget-object p0, Lo/OaidClient;->onPostMessage:Lo/ServerConfigHandler;

    if-eqz p0, :cond_0

    .line 1095
    invoke-virtual {p0}, Lo/ServerConfigHandler;->extraCallback()Lo/OaidClient;

    move-result-object p0

    .line 38
    sget-object v0, Lo/onTrackingRequestSuccess;->onPostMessage:Lo/onTrackingRequestSuccess;

    invoke-virtual {p0, v0}, Lo/OaidClient;->extraCallback(Lo/onNewToken;)Lo/AppsFlyerProperties$EmailsCryptType;

    move-result-object p0

    return-object p0

    .line 1093
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not initialized!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/getNativeReportFiles<",
            "*>;>;"
        }
    .end annotation

    .line 32
    const-class v0, Lo/AppsFlyerProperties$EmailsCryptType;

    .line 33
    invoke-static {v0}, Lo/getNativeReportFiles;->builder(Ljava/lang/Class;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 34
    invoke-static {v1}, Lo/CrashlyticsCore$1;->required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v0

    invoke-static {}, Lo/forEach;->lambdaFactory$()Lo/doBackgroundInitializationAsync;

    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lo/getNativeReportFiles$extraCallback;->factory(Lo/doBackgroundInitializationAsync;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lo/getNativeReportFiles$extraCallback;->build()Lo/getNativeReportFiles;

    move-result-object v0

    .line 32
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
