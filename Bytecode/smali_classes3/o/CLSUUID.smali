.class public Lo/CLSUUID;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final abtOriginInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/populatePID;",
            ">;"
        }
    .end annotation
.end field

.field private final analyticsConnector:Lo/convertLongToFourByteBuffer;

.field private final appContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/convertLongToFourByteBuffer;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/CLSUUID;->abtOriginInstances:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lo/CLSUUID;->appContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lo/CLSUUID;->analyticsConnector:Lo/convertLongToFourByteBuffer;

    return-void
.end method


# virtual methods
.method protected createAbtInstance(Ljava/lang/String;)Lo/populatePID;
    .locals 3

    .line 63
    new-instance v0, Lo/populatePID;

    iget-object v1, p0, Lo/CLSUUID;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lo/CLSUUID;->analyticsConnector:Lo/convertLongToFourByteBuffer;

    invoke-direct {v0, v1, v2, p1}, Lo/populatePID;-><init>(Landroid/content/Context;Lo/convertLongToFourByteBuffer;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lo/populatePID;
    .locals 2

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lo/CLSUUID;->abtOriginInstances:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lo/CLSUUID;->abtOriginInstances:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lo/CLSUUID;->createAbtInstance(Ljava/lang/String;)Lo/populatePID;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    iget-object v0, p0, Lo/CLSUUID;->abtOriginInstances:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/populatePID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
