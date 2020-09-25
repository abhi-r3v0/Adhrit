.class public final Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0016\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u00080\u0007j\u0008\u0012\u0004\u0012\u00020\u0008`\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\u0019\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00080\u0007j\u0008\u0012\u0004\u0012\u00020\u0008`\tH\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003JA\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0018\u0008\u0002\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u00080\u0007j\u0008\u0012\u0004\u0012\u00020\u0008`\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00032\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR!\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u00080\u0007j\u0008\u0012\u0004\u0012\u00020\u0008`\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\n\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;",
        "",
        "nextPage",
        "",
        "total_count",
        "",
        "result",
        "Ljava/util/ArrayList;",
        "Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonData;",
        "Lkotlin/collections/ArrayList;",
        "totalGemsEarned",
        "(ZILjava/util/ArrayList;I)V",
        "getNextPage",
        "()Z",
        "getResult",
        "()Ljava/util/ArrayList;",
        "getTotalGemsEarned",
        "()I",
        "getTotal_count",
        "component1",
        "component2",
        "component3",
        "component4",
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
.field private final nextPage:Z
    .annotation runtime Lo/computeStringSize;
        extraCallback = "next_page"
    .end annotation
.end field

.field private final result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonData;",
            ">;"
        }
    .end annotation
.end field

.field private final totalGemsEarned:I
    .annotation runtime Lo/computeStringSize;
        extraCallback = "total_gems_earned"
    .end annotation
.end field

.field private final total_count:I


# direct methods
.method public constructor <init>(ZILjava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/ArrayList<",
            "Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonData;",
            ">;I)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->nextPage:Z

    iput p2, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->total_count:I

    iput-object p3, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->result:Ljava/util/ArrayList;

    iput p4, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->totalGemsEarned:I

    return-void
.end method

.method public synthetic constructor <init>(ZILjava/util/ArrayList;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 13
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;-><init>(ZILjava/util/ArrayList;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;ZILjava/util/ArrayList;IILjava/lang/Object;)Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->nextPage:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->total_count:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->result:Ljava/util/ArrayList;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->totalGemsEarned:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->copy(ZILjava/util/ArrayList;I)Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->nextPage:Z

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->total_count:I

    return v0
.end method

.method public final component3()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->result:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->totalGemsEarned:I

    return v0
.end method

.method public final copy(ZILjava/util/ArrayList;I)Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/ArrayList<",
            "Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonData;",
            ">;I)",
            "Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;-><init>(ZILjava/util/ArrayList;I)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;

    iget-boolean v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->nextPage:Z

    iget-boolean v1, p1, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->nextPage:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->total_count:I

    iget v1, p1, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->total_count:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->result:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->result:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->totalGemsEarned:I

    iget p1, p1, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->totalGemsEarned:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getNextPage()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->nextPage:Z

    return v0
.end method

.method public final getResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonData;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->result:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getTotalGemsEarned()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->totalGemsEarned:I

    return v0
.end method

.method public final getTotal_count()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->total_count:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->nextPage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->total_count:I

    .line 1025
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->result:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->totalGemsEarned:I

    .line 2025
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReferredPersonResponse(nextPage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->nextPage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", total_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->total_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalGemsEarned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dreamplug/androidapp/ui/main/rewards/models/ReferredPersonResponse;->totalGemsEarned:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
