.class public Lcom/google/firebase/abt/component/AbtRegistrar;
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

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$getComponents$0(Lo/logException;)Lo/CLSUUID;
    .locals 3

    .line 44
    new-instance v0, Lo/CLSUUID;

    const-class v1, Landroid/content/Context;

    .line 45
    invoke-interface {p0, v1}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lo/convertLongToFourByteBuffer;

    invoke-interface {p0, v2}, Lo/logException;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/convertLongToFourByteBuffer;

    invoke-direct {v0, v1, p0}, Lo/CLSUUID;-><init>(Landroid/content/Context;Lo/convertLongToFourByteBuffer;)V

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

    .line 38
    const-class v1, Lo/CLSUUID;

    .line 39
    invoke-static {v1}, Lo/getNativeReportFiles;->builder(Ljava/lang/Class;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    .line 40
    invoke-static {v2}, Lo/CrashlyticsCore$1;->required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    const-class v2, Lo/convertLongToFourByteBuffer;

    .line 41
    invoke-static {v2}, Lo/CrashlyticsCore$1;->optional(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    invoke-static {}, Lo/populateSequenceNumber;->lambdaFactory$()Lo/doBackgroundInitializationAsync;

    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lo/getNativeReportFiles$extraCallback;->factory(Lo/doBackgroundInitializationAsync;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lo/getNativeReportFiles$extraCallback;->build()Lo/getNativeReportFiles;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fire-abt"

    const-string v2, "19.1.0"

    .line 47
    invoke-static {v1, v2}, Lo/toStringMap$asBinder;->create(Ljava/lang/String;Ljava/lang/String;)Lo/getNativeReportFiles;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 38
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
