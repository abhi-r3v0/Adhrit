.class public Lcom/google/firebase/firestore/FirestoreRegistrar;
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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$getComponents$0(Lo/logException;)Lo/getPlatform;
    .locals 7

    .line 52
    new-instance v0, Lo/getPlatform;

    const-class v1, Landroid/content/Context;

    .line 53
    invoke-interface {p0, v1}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/google/firebase/FirebaseApp;

    .line 54
    invoke-interface {p0, v2}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/FirebaseApp;

    const-class v3, Lo/getNativeSessionFilesDir;

    .line 55
    invoke-interface {p0, v3}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getNativeSessionFilesDir;

    new-instance v4, Lo/getUuidUtf8Bytes;

    const-class v5, Lo/CrashlyticsReportPersistence$$Lambda$2;

    .line 57
    invoke-interface {p0, v5}, Lo/logException;->getProvider(Ljava/lang/Class;)Lo/access$lambda$4;

    move-result-object v5

    const-class v6, Lo/parseFile;

    .line 58
    invoke-interface {p0, v6}, Lo/logException;->getProvider(Ljava/lang/Class;)Lo/access$lambda$4;

    move-result-object p0

    invoke-direct {v4, v5, p0}, Lo/getUuidUtf8Bytes;-><init>(Lo/access$lambda$4;Lo/access$lambda$4;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lo/getPlatform;-><init>(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Lo/getNativeSessionFilesDir;Lo/setUuidFromUtf8Bytes;)V

    return-object v0
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

    .line 43
    const-class v1, Lo/getPlatform;

    .line 44
    invoke-static {v1}, Lo/getNativeReportFiles;->builder(Ljava/lang/Class;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    const-class v2, Lcom/google/firebase/FirebaseApp;

    .line 45
    invoke-static {v2}, Lo/CrashlyticsCore$1;->required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    .line 46
    invoke-static {v2}, Lo/CrashlyticsCore$1;->required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    const-class v2, Lo/parseFile;

    .line 47
    invoke-static {v2}, Lo/CrashlyticsCore$1;->optionalProvider(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    const-class v2, Lo/CrashlyticsReportPersistence$$Lambda$2;

    .line 48
    invoke-static {v2}, Lo/CrashlyticsCore$1;->optionalProvider(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    const-class v2, Lo/getNativeSessionFilesDir;

    .line 49
    invoke-static {v2}, Lo/CrashlyticsCore$1;->optional(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    invoke-static {}, Lo/AutoValue_CrashlyticsReport$1;->lambdaFactory$()Lo/doBackgroundInitializationAsync;

    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->factory(Lo/doBackgroundInitializationAsync;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lo/getNativeReportFiles$extraCallback;->build()Lo/getNativeReportFiles;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fire-fst"

    const-string v2, "21.6.0"

    .line 60
    invoke-static {v1, v2}, Lo/toStringMap$asBinder;->create(Ljava/lang/String;Ljava/lang/String;)Lo/getNativeReportFiles;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 43
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
