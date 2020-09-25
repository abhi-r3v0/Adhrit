.class public final Lcom/google/firebase/iid/Registrar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/Registrar$onPostMessage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic lambda$getComponents$0$Registrar(Lo/logException;)Lcom/google/firebase/iid/FirebaseInstanceId;
    .locals 7

    .line 21
    new-instance v6, Lcom/google/firebase/iid/FirebaseInstanceId;

    const-class v0, Lcom/google/firebase/FirebaseApp;

    .line 22
    invoke-interface {p0, v0}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/firebase/FirebaseApp;

    const-class v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;

    .line 23
    invoke-interface {p0, v0}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;

    const-class v0, Lo/CrashlyticsReportPersistence$$Lambda$2;

    .line 24
    invoke-interface {p0, v0}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lo/CrashlyticsReportPersistence$$Lambda$2;

    const-class v0, Lo/parseFile;

    .line 25
    invoke-interface {p0, v0}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lo/parseFile;

    const-class v0, Lo/CrashlyticsReportJsonTransform$$Lambda$4;

    .line 26
    invoke-interface {p0, v0}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lo/CrashlyticsReportJsonTransform$$Lambda$4;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/iid/FirebaseInstanceId;-><init>(Lcom/google/firebase/FirebaseApp;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;Lo/CrashlyticsReportPersistence$$Lambda$2;Lo/parseFile;Lo/CrashlyticsReportJsonTransform$$Lambda$4;)V

    return-object v6
.end method

.method public static final synthetic lambda$getComponents$1$Registrar(Lo/logException;)Lo/access$lambda$5;
    .locals 2

    .line 20
    new-instance v0, Lcom/google/firebase/iid/Registrar$onPostMessage;

    const-class v1, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-interface {p0, v1}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/Registrar$onPostMessage;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;)V

    return-object v0
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 5
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

    .line 2
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 3
    invoke-static {v0}, Lo/getNativeReportFiles;->builder(Ljava/lang/Class;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v0

    const-class v1, Lcom/google/firebase/FirebaseApp;

    .line 4
    invoke-static {v1}, Lo/CrashlyticsCore$1;->required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v0

    const-class v1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;

    .line 5
    invoke-static {v1}, Lo/CrashlyticsCore$1;->required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v0

    const-class v1, Lo/CrashlyticsReportPersistence$$Lambda$2;

    .line 6
    invoke-static {v1}, Lo/CrashlyticsCore$1;->required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v0

    const-class v1, Lo/parseFile;

    .line 7
    invoke-static {v1}, Lo/CrashlyticsCore$1;->required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v0

    const-class v1, Lo/CrashlyticsReportJsonTransform$$Lambda$4;

    .line 8
    invoke-static {v1}, Lo/CrashlyticsCore$1;->required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v0

    sget-object v1, Lo/parseEventThread;->$instance:Lo/doBackgroundInitializationAsync;

    .line 9
    invoke-virtual {v0, v1}, Lo/getNativeReportFiles$extraCallback;->factory(Lo/doBackgroundInitializationAsync;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lo/getNativeReportFiles$extraCallback;->alwaysEager()Lo/getNativeReportFiles$extraCallback;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lo/getNativeReportFiles$extraCallback;->build()Lo/getNativeReportFiles;

    move-result-object v0

    .line 12
    const-class v1, Lo/access$lambda$5;

    .line 13
    invoke-static {v1}, Lo/getNativeReportFiles;->builder(Ljava/lang/Class;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    const-class v2, Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 14
    invoke-static {v2}, Lo/CrashlyticsCore$1;->required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    sget-object v2, Lo/parseEventBinaryImage;->$instance:Lo/doBackgroundInitializationAsync;

    .line 15
    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->factory(Lo/doBackgroundInitializationAsync;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lo/getNativeReportFiles$extraCallback;->build()Lo/getNativeReportFiles;

    move-result-object v1

    const-string v2, "fire-iid"

    const-string v3, "20.2.3"

    .line 18
    invoke-static {v2, v3}, Lo/toStringMap$asBinder;->create(Ljava/lang/String;Ljava/lang/String;)Lo/getNativeReportFiles;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lo/getNativeReportFiles;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    .line 19
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
