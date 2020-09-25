.class public Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;
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

.method public static synthetic lambda$getComponents$0(Lo/logException;)Lo/FileStoreImpl;
    .locals 7

    .line 51
    new-instance v6, Lo/FileStoreImpl;

    const-class v0, Landroid/content/Context;

    .line 52
    invoke-interface {p0, v0}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lcom/google/firebase/FirebaseApp;

    .line 53
    invoke-interface {p0, v0}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/firebase/FirebaseApp;

    const-class v0, Lo/CrashlyticsReportJsonTransform$$Lambda$4;

    .line 54
    invoke-interface {p0, v0}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lo/CrashlyticsReportJsonTransform$$Lambda$4;

    const-class v0, Lo/CLSUUID;

    .line 55
    invoke-interface {p0, v0}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CLSUUID;

    const-string v4, "frc"

    invoke-virtual {v0, v4}, Lo/CLSUUID;->get(Ljava/lang/String;)Lo/populatePID;

    move-result-object v4

    const-class v0, Lo/convertLongToFourByteBuffer;

    .line 56
    invoke-interface {p0, v0}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lo/convertLongToFourByteBuffer;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/FileStoreImpl;-><init>(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Lo/CrashlyticsReportJsonTransform$$Lambda$4;Lo/populatePID;Lo/convertLongToFourByteBuffer;)V

    return-object v6
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

    .line 42
    const-class v1, Lo/FileStoreImpl;

    .line 43
    invoke-static {v1}, Lo/getNativeReportFiles;->builder(Ljava/lang/Class;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    .line 44
    invoke-static {v2}, Lo/CrashlyticsCore$1;->required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    const-class v2, Lcom/google/firebase/FirebaseApp;

    .line 45
    invoke-static {v2}, Lo/CrashlyticsCore$1;->required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    const-class v2, Lo/CrashlyticsReportJsonTransform$$Lambda$4;

    .line 46
    invoke-static {v2}, Lo/CrashlyticsCore$1;->required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    const-class v2, Lo/CLSUUID;

    .line 47
    invoke-static {v2}, Lo/CrashlyticsCore$1;->required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    const-class v2, Lo/convertLongToFourByteBuffer;

    .line 48
    invoke-static {v2}, Lo/CrashlyticsCore$1;->optional(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    invoke-static {}, Lo/isExternalStorageAvailable;->lambdaFactory$()Lo/doBackgroundInitializationAsync;

    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->factory(Lo/doBackgroundInitializationAsync;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lo/getNativeReportFiles$extraCallback;->eagerInDefaultApp()Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lo/getNativeReportFiles$extraCallback;->build()Lo/getNativeReportFiles;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fire-rc"

    const-string v2, "19.2.0"

    .line 59
    invoke-static {v1, v2}, Lo/toStringMap$asBinder;->create(Ljava/lang/String;Ljava/lang/String;)Lo/getNativeReportFiles;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 42
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
