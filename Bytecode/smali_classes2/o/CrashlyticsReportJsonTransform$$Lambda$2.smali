.class final Lo/CrashlyticsReportJsonTransform$$Lambda$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CrashlyticsReportJsonTransform$$Lambda$6;


# instance fields
.field private final resultTaskCompletionSource:Lo/removeBackgroundStateChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/removeBackgroundStateChangeListener<",
            "Lo/BinaryImagesConverter;",
            ">;"
        }
    .end annotation
.end field

.field private final utils:Lo/CrashlyticsReportJsonTransform$ObjectParser;


# direct methods
.method public constructor <init>(Lo/CrashlyticsReportJsonTransform$ObjectParser;Lo/removeBackgroundStateChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReportJsonTransform$ObjectParser;",
            "Lo/removeBackgroundStateChangeListener<",
            "Lo/BinaryImagesConverter;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$2;->utils:Lo/CrashlyticsReportJsonTransform$ObjectParser;

    .line 27
    iput-object p2, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$2;->resultTaskCompletionSource:Lo/removeBackgroundStateChangeListener;

    return-void
.end method


# virtual methods
.method public final onException(Lo/jsonFromMapEntryString;Ljava/lang/Exception;)Z
    .locals 1

    .line 49
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->isErrored()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->isNotGenerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->isUnregistered()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 52
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$2;->resultTaskCompletionSource:Lo/removeBackgroundStateChangeListener;

    .line 1013
    iget-object p1, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p1, p2}, Lo/getProjectId;->ICustomTabsCallback(Ljava/lang/Exception;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final onStateReached(Lo/jsonFromMapEntryString;)Z
    .locals 4

    .line 33
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$2;->utils:Lo/CrashlyticsReportJsonTransform$ObjectParser;

    .line 34
    invoke-virtual {v0, p1}, Lo/CrashlyticsReportJsonTransform$ObjectParser;->isAuthTokenExpired(Lo/jsonFromMapEntryString;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$2;->resultTaskCompletionSource:Lo/removeBackgroundStateChangeListener;

    .line 36
    invoke-static {}, Lo/BinaryImagesConverter;->builder()Lo/BinaryImagesConverter$extraCallback;

    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/BinaryImagesConverter$extraCallback;->setToken(Ljava/lang/String;)Lo/BinaryImagesConverter$extraCallback;

    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getExpiresInSecs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/BinaryImagesConverter$extraCallback;->setTokenExpirationTimestamp(J)Lo/BinaryImagesConverter$extraCallback;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getTokenCreationEpochInSecs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/BinaryImagesConverter$extraCallback;->setTokenCreationTimestamp(J)Lo/BinaryImagesConverter$extraCallback;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lo/BinaryImagesConverter$extraCallback;->build()Lo/BinaryImagesConverter;

    move-result-object p1

    .line 1008
    iget-object v0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {v0, p1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
