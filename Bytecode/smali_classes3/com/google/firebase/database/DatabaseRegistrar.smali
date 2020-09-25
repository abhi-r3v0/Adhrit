.class public Lcom/google/firebase/database/DatabaseRegistrar;
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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$getComponents$0(Lo/logException;)Lo/onCustomKey;
    .locals 3

    .line 40
    new-instance v0, Lo/onCustomKey;

    const-class v1, Lcom/google/firebase/FirebaseApp;

    .line 41
    invoke-interface {p0, v1}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/FirebaseApp;

    const-class v2, Lo/getNativeSessionFilesDir;

    invoke-interface {p0, v2}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getNativeSessionFilesDir;

    invoke-direct {v0, v1, p0}, Lo/onCustomKey;-><init>(Lcom/google/firebase/FirebaseApp;Lo/getNativeSessionFilesDir;)V

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 3
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

    .line 34
    const-class v1, Lo/onCustomKey;

    .line 35
    invoke-static {v1}, Lo/getNativeReportFiles;->builder(Ljava/lang/Class;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    const-class v2, Lcom/google/firebase/FirebaseApp;

    .line 36
    invoke-static {v2}, Lo/CrashlyticsCore$1;->required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    const-class v2, Lo/getNativeSessionFilesDir;

    .line 37
    invoke-static {v2}, Lo/CrashlyticsCore$1;->optional(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    invoke-static {}, Lo/onBeginSession;->lambdaFactory$()Lo/doBackgroundInitializationAsync;

    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->factory(Lo/doBackgroundInitializationAsync;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lo/getNativeReportFiles$extraCallback;->build()Lo/getNativeReportFiles;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fire-rtdb"

    const-string v2, "19.4.0"

    .line 43
    invoke-static {v1, v2}, Lo/toStringMap$asBinder;->create(Ljava/lang/String;Ljava/lang/String;)Lo/getNativeReportFiles;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 34
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
