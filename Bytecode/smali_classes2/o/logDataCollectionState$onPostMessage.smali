.class Lo/logDataCollectionState$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/logDataCollectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field private final path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final queryParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lo/logDataCollectionState$onPostMessage;->path:Ljava/util/List;

    .line 46
    iput-object p2, p0, Lo/logDataCollectionState$onPostMessage;->queryParams:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$1000(Lo/logDataCollectionState$onPostMessage;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lo/logDataCollectionState$onPostMessage;->path:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lo/logDataCollectionState$onPostMessage;)Ljava/util/Map;
    .locals 0

    .line 40
    iget-object p0, p0, Lo/logDataCollectionState$onPostMessage;->queryParams:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 52
    :cond_0
    instance-of v0, p1, Lo/logDataCollectionState$onPostMessage;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 56
    :cond_1
    check-cast p1, Lo/logDataCollectionState$onPostMessage;

    .line 58
    iget-object v0, p0, Lo/logDataCollectionState$onPostMessage;->path:Ljava/util/List;

    iget-object v2, p1, Lo/logDataCollectionState$onPostMessage;->path:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 61
    :cond_2
    iget-object v0, p0, Lo/logDataCollectionState$onPostMessage;->queryParams:Ljava/util/Map;

    iget-object p1, p1, Lo/logDataCollectionState$onPostMessage;->queryParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 66
    iget-object v0, p0, Lo/logDataCollectionState$onPostMessage;->path:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget-object v1, p0, Lo/logDataCollectionState$onPostMessage;->queryParams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/logDataCollectionState$onPostMessage;->path:Ljava/util/List;

    invoke-static {v1}, Lo/setEndIconOnClickListener;->pathToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/logDataCollectionState$onPostMessage;->queryParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
