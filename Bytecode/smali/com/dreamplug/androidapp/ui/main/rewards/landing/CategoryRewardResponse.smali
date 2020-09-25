.class public final Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u000f\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0008H\u00c6\u0003J-\u0010\u0013\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0008H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;",
        "",
        "result",
        "",
        "Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;",
        "nextPage",
        "",
        "totalCount",
        "",
        "(Ljava/util/List;ZI)V",
        "getNextPage",
        "()Z",
        "getResult",
        "()Ljava/util/List;",
        "getTotalCount",
        "()I",
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
.field private final nextPage:Z
    .annotation runtime Lo/computeStringSize;
        extraCallback = "next_page"
    .end annotation
.end field

.field private final result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final totalCount:I
    .annotation runtime Lo/computeStringSize;
        extraCallback = "total_count"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;",
            ">;ZI)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->result:Ljava/util/List;

    iput-boolean p2, p0, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->nextPage:Z

    iput p3, p0, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->totalCount:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;Ljava/util/List;ZIILjava/lang/Object;)Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->result:Ljava/util/List;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->nextPage:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->totalCount:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->copy(Ljava/util/List;ZI)Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->result:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->nextPage:Z

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->totalCount:I

    return v0
.end method

.method public final copy(Ljava/util/List;ZI)Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;",
            ">;ZI)",
            "Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;-><init>(Ljava/util/List;ZI)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->result:Ljava/util/List;

    iget-object v1, p1, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->result:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->nextPage:Z

    iget-boolean v1, p1, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->nextPage:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->totalCount:I

    iget p1, p1, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->totalCount:I

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

    .line 47
    iget-boolean v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->nextPage:Z

    return v0
.end method

.method public final getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/ui/main/rewards/models/RewardDetails;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->result:Ljava/util/List;

    return-object v0
.end method

.method public final getTotalCount()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->totalCount:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->result:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->nextPage:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->totalCount:I

    .line 1025
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

    const-string v1, "CategoryRewardResponse(result="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->result:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nextPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->nextPage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dreamplug/androidapp/ui/main/rewards/landing/CategoryRewardResponse;->totalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
