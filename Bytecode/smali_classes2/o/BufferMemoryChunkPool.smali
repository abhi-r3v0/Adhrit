.class final Lo/BufferMemoryChunkPool;
.super Lo/BasePool$SizeTooLargeException;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/BasePool$SizeTooLargeException;-><init>(Lo/BasePool$InvalidSizeException;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/BasePool$InvalidSizeException;)V
    .locals 0

    invoke-direct {p0}, Lo/BufferMemoryChunkPool;-><init>()V

    return-void
.end method

.method private static onPostMessage(Ljava/lang/Object;J)Lo/setImageRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Lo/setImageRequest<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lo/shouldShowContactUsOnFaqScreens;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/setImageRequest;

    return-object p0
.end method


# virtual methods
.method final extraCallback(Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p1, p2, p3}, Lo/BufferMemoryChunkPool;->onPostMessage(Ljava/lang/Object;J)Lo/setImageRequest;

    move-result-object p1

    invoke-interface {p1}, Lo/setImageRequest;->extraCallback()V

    return-void
.end method

.method final onPostMessage(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    invoke-static {p1, p3, p4}, Lo/BufferMemoryChunkPool;->onPostMessage(Ljava/lang/Object;J)Lo/setImageRequest;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lo/BufferMemoryChunkPool;->onPostMessage(Ljava/lang/Object;J)Lo/setImageRequest;

    move-result-object p2

    invoke-interface {v0}, Lo/setImageRequest;->size()I

    move-result v1

    invoke-interface {p2}, Lo/setImageRequest;->size()I

    move-result v2

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    invoke-interface {v0}, Lo/setImageRequest;->onMessageChannelReady()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/2addr v2, v1

    invoke-interface {v0, v2}, Lo/setImageRequest;->onNavigationEvent(I)Lo/setImageRequest;

    move-result-object v0

    :cond_0
    invoke-interface {v0, p2}, Lo/setImageRequest;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v1, :cond_2

    move-object p2, v0

    :cond_2
    invoke-static {p1, p3, p4, p2}, Lo/shouldShowContactUsOnFaqScreens;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
