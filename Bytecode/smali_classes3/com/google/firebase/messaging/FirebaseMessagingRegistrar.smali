.class public Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/FirebaseMessagingRegistrar$onNavigationEvent;,
        Lcom/google/firebase/messaging/FirebaseMessagingRegistrar$onPostMessage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static determineFactory(Lo/AppsFlyerProperties$EmailsCryptType;)Lo/AppsFlyerProperties$EmailsCryptType;
    .locals 3

    if-eqz p0, :cond_1

    .line 1001
    sget-object v0, Lo/onTrackingRequestSuccess;->extraCallback:Ljava/util/Set;

    .line 1030
    new-instance v1, Lo/isEnableLog;

    const-string v2, "json"

    invoke-direct {v1, v2}, Lo/isEnableLog;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 17
    :cond_1
    :goto_0
    new-instance p0, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar$onPostMessage;

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar$onPostMessage;-><init>()V

    return-object p0
.end method

.method public static final synthetic lambda$getComponents$0$FirebaseMessagingRegistrar(Lo/logException;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 8

    .line 19
    new-instance v7, Lcom/google/firebase/messaging/FirebaseMessaging;

    const-class v0, Lcom/google/firebase/FirebaseApp;

    .line 20
    invoke-interface {p0, v0}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/firebase/FirebaseApp;

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 21
    invoke-interface {p0, v0}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/firebase/iid/FirebaseInstanceId;

    const-class v0, Lo/CrashlyticsReportPersistence$$Lambda$2;

    .line 22
    invoke-interface {p0, v0}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lo/CrashlyticsReportPersistence$$Lambda$2;

    const-class v0, Lo/parseFile;

    .line 23
    invoke-interface {p0, v0}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lo/parseFile;

    const-class v0, Lo/CrashlyticsReportJsonTransform$$Lambda$4;

    .line 24
    invoke-interface {p0, v0}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lo/CrashlyticsReportJsonTransform$$Lambda$4;

    const-class v0, Lo/AppsFlyerProperties$EmailsCryptType;

    .line 25
    invoke-interface {p0, v0}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/AppsFlyerProperties$EmailsCryptType;

    invoke-static {p0}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;->determineFactory(Lo/AppsFlyerProperties$EmailsCryptType;)Lo/AppsFlyerProperties$EmailsCryptType;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/iid/FirebaseInstanceId;Lo/CrashlyticsReportPersistence$$Lambda$2;Lo/parseFile;Lo/CrashlyticsReportJsonTransform$$Lambda$4;Lo/AppsFlyerProperties$EmailsCryptType;)V

    return-object v7
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/getNativeReportFiles<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lo/getNativeReportFiles;

    .line 2
    const-class v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 3
    invoke-static {v1}, Lo/getNativeReportFiles;->builder(Ljava/lang/Class;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    const-class v2, Lcom/google/firebase/FirebaseApp;

    .line 4
    invoke-static {v2}, Lo/CrashlyticsCore$1;->required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    const-class v2, Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 5
    invoke-static {v2}, Lo/CrashlyticsCore$1;->required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    const-class v2, Lo/CrashlyticsReportPersistence$$Lambda$2;

    .line 6
    invoke-static {v2}, Lo/CrashlyticsCore$1;->required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    const-class v2, Lo/parseFile;

    .line 7
    invoke-static {v2}, Lo/CrashlyticsCore$1;->required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    const-class v2, Lo/AppsFlyerProperties$EmailsCryptType;

    .line 8
    invoke-static {v2}, Lo/CrashlyticsCore$1;->optional(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    const-class v2, Lo/CrashlyticsReportJsonTransform$$Lambda$4;

    .line 9
    invoke-static {v2}, Lo/CrashlyticsCore$1;->required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    sget-object v2, Lo/binaryImagesJsonFromMapsFile;->$instance:Lo/doBackgroundInitializationAsync;

    .line 10
    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->factory(Lo/doBackgroundInitializationAsync;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lo/getNativeReportFiles$extraCallback;->alwaysEager()Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lo/getNativeReportFiles$extraCallback;->build()Lo/getNativeReportFiles;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fire-fcm"

    const-string v2, "20.2.4"

    .line 13
    invoke-static {v1, v2}, Lo/toStringMap$asBinder;->create(Ljava/lang/String;Ljava/lang/String;)Lo/getNativeReportFiles;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 14
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
