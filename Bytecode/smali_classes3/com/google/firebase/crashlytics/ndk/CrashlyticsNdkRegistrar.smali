.class public Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar;Lo/logException;)Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar;->buildCrashlyticsNdk(Lo/logException;)Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    move-result-object p0

    return-object p0
.end method

.method private buildCrashlyticsNdk(Lo/logException;)Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;
    .locals 1

    .line 40
    const-class v0, Landroid/content/Context;

    invoke-interface {p1, v0}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 41
    invoke-static {p1}, Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;->create(Landroid/content/Context;)Lcom/google/firebase/crashlytics/ndk/FirebaseCrashlyticsNdk;

    move-result-object p1

    return-object p1
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

    .line 30
    const-class v1, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    .line 31
    invoke-static {v1}, Lo/getNativeReportFiles;->builder(Ljava/lang/Class;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    .line 32
    invoke-static {v2}, Lo/CrashlyticsCore$1;->required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    invoke-static {p0}, Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar$$Lambda$1;->lambdaFactory$(Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar;)Lo/doBackgroundInitializationAsync;

    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->factory(Lo/doBackgroundInitializationAsync;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lo/getNativeReportFiles$extraCallback;->eagerInDefaultApp()Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lo/getNativeReportFiles$extraCallback;->build()Lo/getNativeReportFiles;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fire-cls-ndk"

    const-string v2, "17.2.1"

    .line 36
    invoke-static {v1, v2}, Lo/toStringMap$asBinder;->create(Ljava/lang/String;Ljava/lang/String;)Lo/getNativeReportFiles;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 30
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
