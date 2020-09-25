.class final Lo/LinkingData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:I

.field private final synthetic asInterface:Lo/InstrumentValidationSuccessRequest;

.field private final synthetic extraCallback:Ljava/lang/String;

.field private final synthetic onMessageChannelReady:Ljava/lang/String;

.field private final synthetic onNavigationEvent:Z

.field private final synthetic onPostMessage:I


# direct methods
.method constructor <init>(Lo/InstrumentValidationSuccessRequest;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 0

    iput-object p1, p0, Lo/LinkingData;->asInterface:Lo/InstrumentValidationSuccessRequest;

    iput-object p2, p0, Lo/LinkingData;->onMessageChannelReady:Ljava/lang/String;

    iput-object p3, p0, Lo/LinkingData;->extraCallback:Ljava/lang/String;

    iput p4, p0, Lo/LinkingData;->ICustomTabsCallback:I

    iput p5, p0, Lo/LinkingData;->onPostMessage:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/LinkingData;->onNavigationEvent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "precacheProgress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lo/LinkingData;->onMessageChannelReady:Ljava/lang/String;

    const-string v2, "src"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lo/LinkingData;->extraCallback:Ljava/lang/String;

    const-string v2, "cachedSrc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lo/LinkingData;->ICustomTabsCallback:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bytesLoaded"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lo/LinkingData;->onPostMessage:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "totalBytes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lo/LinkingData;->onNavigationEvent:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    const-string v2, "cacheReady"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lo/LinkingData;->asInterface:Lo/InstrumentValidationSuccessRequest;

    const-string v2, "onPrecacheEvent"

    invoke-static {v1, v2, v0}, Lo/InstrumentValidationSuccessRequest;->extraCallback(Lo/InstrumentValidationSuccessRequest;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
