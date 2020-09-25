.class public final Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/NativeApi;
    extraCallback = true
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B)\u0012\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0008\u0001\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\u000f\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0003J-\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00052\u000e\u0008\u0003\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00052\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;",
        "",
        "count",
        "",
        "hasMore",
        "",
        "results",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
        "(IZLjava/util/List;)V",
        "getCount",
        "()I",
        "getHasMore",
        "()Z",
        "getResults",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:Z


# direct methods
.method public constructor <init>(IZLjava/util/List;)V
    .locals 1
    .param p1    # I
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "total_count"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "next_page"
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "result"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "results"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->onMessageChannelReady:I

    iput-boolean p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->onNavigationEvent:Z

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->extraCallback:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(IZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x0

    .line 19
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;-><init>(IZLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final copy(IZLjava/util/List;)Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;
    .locals 1
    .param p1    # I
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "total_count"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "next_page"
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "result"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
            ">;)",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;"
        }
    .end annotation

    const-string/jumbo v0, "results"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;-><init>(IZLjava/util/List;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;

    iget v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->onMessageChannelReady:I

    iget v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->onMessageChannelReady:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->onNavigationEvent:Z

    iget-boolean v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->onNavigationEvent:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->extraCallback:Ljava/util/List;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->extraCallback:Ljava/util/List;

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->onMessageChannelReady:I

    .line 1025
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->onNavigationEvent:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->extraCallback:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FarmCardResponse(count="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasMore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->onNavigationEvent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", results="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->extraCallback:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
