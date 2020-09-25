.class public Lcom/google/firebase/auth/FirebaseAuthRegistrar;
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
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
    const-class v1, Lcom/google/firebase/auth/FirebaseAuth;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lo/getNativeSessionFilesDir;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 3
    invoke-static {v1, v3}, Lo/getNativeReportFiles;->builder(Ljava/lang/Class;[Ljava/lang/Class;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    const-class v3, Lcom/google/firebase/FirebaseApp;

    .line 4
    invoke-static {v3}, Lo/CrashlyticsCore$1;->required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    sget-object v3, Lo/CrashlyticsController$9;->zza:Lo/doBackgroundInitializationAsync;

    .line 5
    invoke-virtual {v1, v3}, Lo/getNativeReportFiles$extraCallback;->factory(Lo/doBackgroundInitializationAsync;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lo/getNativeReportFiles$extraCallback;->eagerInDefaultApp()Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lo/getNativeReportFiles$extraCallback;->build()Lo/getNativeReportFiles;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "fire-auth"

    const-string v3, "19.4.0"

    .line 8
    invoke-static {v1, v3}, Lo/toStringMap$asBinder;->create(Ljava/lang/String;Ljava/lang/String;)Lo/getNativeReportFiles;

    move-result-object v1

    aput-object v1, v0, v2

    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
