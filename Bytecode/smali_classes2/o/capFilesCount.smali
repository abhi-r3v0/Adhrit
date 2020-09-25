.class public final Lo/capFilesCount;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CrashlyticsReportPersistence$$Lambda$2;


# instance fields
.field private final gamesSDKRegistrar:Lo/lambda$deleteFinalizedReport$2;

.field private final javaSDKVersionUserAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Set;Lo/lambda$deleteFinalizedReport$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lo/readTextFile;",
            ">;",
            "Lo/lambda$deleteFinalizedReport$2;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lo/capFilesCount;->toUserAgent(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/capFilesCount;->javaSDKVersionUserAgent:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lo/capFilesCount;->gamesSDKRegistrar:Lo/lambda$deleteFinalizedReport$2;

    return-void
.end method

.method public static component()Lo/getNativeReportFiles;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getNativeReportFiles<",
            "Lo/CrashlyticsReportPersistence$$Lambda$2;",
            ">;"
        }
    .end annotation

    .line 68
    const-class v0, Lo/CrashlyticsReportPersistence$$Lambda$2;

    invoke-static {v0}, Lo/getNativeReportFiles;->builder(Ljava/lang/Class;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v0

    const-class v1, Lo/readTextFile;

    .line 69
    invoke-static {v1}, Lo/CrashlyticsCore$1;->setOf(Ljava/lang/Class;)Lo/CrashlyticsCore$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getNativeReportFiles$extraCallback;->add(Lo/CrashlyticsCore$1;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v0

    invoke-static {}, Lo/lambda$capAndGetOpenSessions$3;->lambdaFactory$()Lo/doBackgroundInitializationAsync;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lo/getNativeReportFiles$extraCallback;->factory(Lo/doBackgroundInitializationAsync;)Lo/getNativeReportFiles$extraCallback;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lo/getNativeReportFiles$extraCallback;->build()Lo/getNativeReportFiles;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$component$0(Lo/logException;)Lo/CrashlyticsReportPersistence$$Lambda$2;
    .locals 2

    .line 72
    new-instance v0, Lo/capFilesCount;

    const-class v1, Lo/readTextFile;

    .line 73
    invoke-interface {p0, v1}, Lo/logException;->setOf(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    invoke-static {}, Lo/lambda$deleteFinalizedReport$2;->getInstance()Lo/lambda$deleteFinalizedReport$2;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lo/capFilesCount;-><init>(Ljava/util/Set;Lo/lambda$deleteFinalizedReport$2;)V

    return-object v0
.end method

.method private static toUserAgent(Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lo/readTextFile;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 56
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/readTextFile;

    .line 58
    invoke-virtual {v1}, Lo/readTextFile;->getLibraryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lo/readTextFile;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getUserAgent()Ljava/lang/String;
    .locals 2

    .line 46
    iget-object v0, p0, Lo/capFilesCount;->gamesSDKRegistrar:Lo/lambda$deleteFinalizedReport$2;

    invoke-virtual {v0}, Lo/lambda$deleteFinalizedReport$2;->getRegisteredVersions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lo/capFilesCount;->javaSDKVersionUserAgent:Ljava/lang/String;

    return-object v0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/capFilesCount;->javaSDKVersionUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/capFilesCount;->gamesSDKRegistrar:Lo/lambda$deleteFinalizedReport$2;

    invoke-virtual {v1}, Lo/lambda$deleteFinalizedReport$2;->getRegisteredVersions()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lo/capFilesCount;->toUserAgent(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
