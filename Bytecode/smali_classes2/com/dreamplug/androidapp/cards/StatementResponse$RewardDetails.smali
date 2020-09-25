.class public final Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/androidapp/cards/StatementResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RewardDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$RewardPoints;,
        Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$BonusPoints;
    }
.end annotation

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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0002\u0019\u001aB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;",
        "",
        "rewardType",
        "",
        "bonusPoints",
        "Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$BonusPoints;",
        "rewardPoints",
        "Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$RewardPoints;",
        "(Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$BonusPoints;Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$RewardPoints;)V",
        "getBonusPoints",
        "()Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$BonusPoints;",
        "getRewardPoints",
        "()Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$RewardPoints;",
        "getRewardType",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "BonusPoints",
        "RewardPoints",
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
.field private final bonusPoints:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$BonusPoints;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "bonus_points"
    .end annotation
.end field

.field private final rewardPoints:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$RewardPoints;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "reward_points"
    .end annotation
.end field

.field private final rewardType:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "reward_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$BonusPoints;Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$RewardPoints;)V
    .locals 1

    const-string v0, "rewardType"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bonusPoints"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardPoints"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->rewardType:Ljava/lang/String;

    iput-object p2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->bonusPoints:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$BonusPoints;

    iput-object p3, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->rewardPoints:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$RewardPoints;

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$BonusPoints;Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$RewardPoints;ILjava/lang/Object;)Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->rewardType:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->bonusPoints:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$BonusPoints;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->rewardPoints:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$RewardPoints;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->copy(Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$BonusPoints;Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$RewardPoints;)Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->rewardType:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$BonusPoints;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->bonusPoints:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$BonusPoints;

    return-object v0
.end method

.method public final component3()Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$RewardPoints;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->rewardPoints:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$RewardPoints;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$BonusPoints;Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$RewardPoints;)Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;
    .locals 1

    const-string v0, "rewardType"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bonusPoints"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardPoints"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;

    invoke-direct {v0, p1, p2, p3}, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;-><init>(Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$BonusPoints;Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$RewardPoints;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->rewardType:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->rewardType:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->bonusPoints:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$BonusPoints;

    iget-object v1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->bonusPoints:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$BonusPoints;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->rewardPoints:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$RewardPoints;

    iget-object p1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->rewardPoints:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$RewardPoints;

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

.method public final getBonusPoints()Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$BonusPoints;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->bonusPoints:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$BonusPoints;

    return-object v0
.end method

.method public final getRewardPoints()Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$RewardPoints;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->rewardPoints:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$RewardPoints;

    return-object v0
.end method

.method public final getRewardType()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->rewardType:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->rewardType:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->bonusPoints:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$BonusPoints;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->rewardPoints:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$RewardPoints;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RewardDetails(rewardType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->rewardType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bonusPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->bonusPoints:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$BonusPoints;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rewardPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;->rewardPoints:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails$RewardPoints;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
