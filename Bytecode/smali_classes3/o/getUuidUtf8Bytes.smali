.class public final Lo/getUuidUtf8Bytes;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setUuidFromUtf8Bytes;


# static fields
.field private static final HEART_BEAT_HEADER:Lo/getPredecessorKey$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final USER_AGENT_HEADER:Lo/getPredecessorKey$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$ICustomTabsCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final firebaseFirestoreHeartBeatTag:Ljava/lang/String;

.field private final heartBeatInfoProvider:Lo/access$lambda$4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/access$lambda$4<",
            "Lo/parseFile;",
            ">;"
        }
    .end annotation
.end field

.field private final userAgentPublisherProvider:Lo/access$lambda$4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/access$lambda$4<",
            "Lo/CrashlyticsReportPersistence$$Lambda$2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    sget-object v0, Lo/getPredecessorKey;->onNavigationEvent:Lo/getPredecessorKey$onNavigationEvent;

    const-string v1, "x-firebase-client-log-type"

    .line 35
    invoke-static {v1, v0}, Lo/getPredecessorKey$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;Lo/getPredecessorKey$onNavigationEvent;)Lo/getPredecessorKey$ICustomTabsCallback;

    move-result-object v0

    sput-object v0, Lo/getUuidUtf8Bytes;->HEART_BEAT_HEADER:Lo/getPredecessorKey$ICustomTabsCallback;

    .line 37
    sget-object v0, Lo/getPredecessorKey;->onNavigationEvent:Lo/getPredecessorKey$onNavigationEvent;

    const-string v1, "x-firebase-client"

    .line 38
    invoke-static {v1, v0}, Lo/getPredecessorKey$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;Lo/getPredecessorKey$onNavigationEvent;)Lo/getPredecessorKey$ICustomTabsCallback;

    move-result-object v0

    sput-object v0, Lo/getUuidUtf8Bytes;->USER_AGENT_HEADER:Lo/getPredecessorKey$ICustomTabsCallback;

    return-void
.end method

.method public constructor <init>(Lo/access$lambda$4;Lo/access$lambda$4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/access$lambda$4<",
            "Lo/CrashlyticsReportPersistence$$Lambda$2;",
            ">;",
            "Lo/access$lambda$4<",
            "Lo/parseFile;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "fire-fst"

    .line 32
    iput-object v0, p0, Lo/getUuidUtf8Bytes;->firebaseFirestoreHeartBeatTag:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lo/getUuidUtf8Bytes;->userAgentPublisherProvider:Lo/access$lambda$4;

    .line 44
    iput-object p2, p0, Lo/getUuidUtf8Bytes;->heartBeatInfoProvider:Lo/access$lambda$4;

    return-void
.end method


# virtual methods
.method public final updateMetadata(Lo/getPredecessorKey;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lo/getUuidUtf8Bytes;->heartBeatInfoProvider:Lo/access$lambda$4;

    invoke-interface {v0}, Lo/access$lambda$4;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/getUuidUtf8Bytes;->userAgentPublisherProvider:Lo/access$lambda$4;

    invoke-interface {v0}, Lo/access$lambda$4;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lo/getUuidUtf8Bytes;->heartBeatInfoProvider:Lo/access$lambda$4;

    .line 53
    invoke-interface {v0}, Lo/access$lambda$4;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/parseFile;

    const-string v1, "fire-fst"

    invoke-interface {v0, v1}, Lo/parseFile;->getHeartBeatCode(Ljava/lang/String;)Lo/parseFile$onMessageChannelReady;

    move-result-object v0

    invoke-virtual {v0}, Lo/parseFile$onMessageChannelReady;->getCode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    sget-object v1, Lo/getUuidUtf8Bytes;->HEART_BEAT_HEADER:Lo/getPredecessorKey$ICustomTabsCallback;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lo/getPredecessorKey;->onPostMessage(Lo/getPredecessorKey$ICustomTabsCallback;Ljava/lang/Object;)V

    .line 57
    sget-object v0, Lo/getUuidUtf8Bytes;->USER_AGENT_HEADER:Lo/getPredecessorKey$ICustomTabsCallback;

    iget-object v1, p0, Lo/getUuidUtf8Bytes;->userAgentPublisherProvider:Lo/access$lambda$4;

    invoke-interface {v1}, Lo/access$lambda$4;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CrashlyticsReportPersistence$$Lambda$2;

    invoke-interface {v1}, Lo/CrashlyticsReportPersistence$$Lambda$2;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lo/getPredecessorKey;->onPostMessage(Lo/getPredecessorKey$ICustomTabsCallback;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
