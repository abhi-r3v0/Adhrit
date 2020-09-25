.class public final Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\r\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\tJ\u0011\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0003J,\u0010\u000f\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\tR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;",
        "",
        "participants",
        "",
        "users",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;",
        "(Ljava/lang/Long;Ljava/util/List;)V",
        "getParticipants",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getUsers",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "copy",
        "(Ljava/lang/Long;Ljava/util/List;)Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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

.annotation runtime Lo/getDisplayVersion;
.end annotation


# instance fields
.field private final participants:Ljava/lang/Long;

.field private final users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;-><init>(Ljava/lang/Long;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;->participants:Ljava/lang/Long;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;->users:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 18
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;-><init>(Ljava/lang/Long;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;Ljava/lang/Long;Ljava/util/List;ILjava/lang/Object;)Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;->participants:Ljava/lang/Long;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;->users:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;->copy(Ljava/lang/Long;Ljava/util/List;)Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;->participants:Ljava/lang/Long;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;->users:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/Long;Ljava/util/List;)Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;",
            ">;)",
            "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;"
        }
    .end annotation

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;

    invoke-direct {v0, p1, p2}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;-><init>(Ljava/lang/Long;Ljava/util/List;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;->participants:Ljava/lang/Long;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;->participants:Ljava/lang/Long;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;->users:Ljava/util/List;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;->users:Ljava/util/List;

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

.method public final getParticipants()Ljava/lang/Long;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;->participants:Ljava/lang/Long;

    return-object v0
.end method

.method public final getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;->users:Ljava/util/List;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;->participants:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;->users:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LeaderBoardResponse(participants="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;->participants:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", users="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;->users:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
