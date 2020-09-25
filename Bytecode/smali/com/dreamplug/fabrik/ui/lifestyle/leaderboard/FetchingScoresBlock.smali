.class public final Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock$ICustomTabsCallback;
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
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0012\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BA\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0010JJ\u0010\u0019\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\tH\u00c6\u0001\u00a2\u0006\u0002\u0010\u001aJ\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u00d6\u0003J\t\u0010!\u001a\u00020\u001cH\u00d6\u0001J\t\u0010\"\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u001cH\u00d6\u0001R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0015\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u0011\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000e\u00a8\u0006("
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;",
        "Landroid/os/Parcelable;",
        "title",
        "",
        "description",
        "cta",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;",
        "url",
        "endTime",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;Ljava/lang/String;Ljava/lang/Long;)V",
        "getCta",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;",
        "getDescription",
        "()Ljava/lang/String;",
        "getEndTime",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getTitle",
        "getUrl",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;Ljava/lang/String;Ljava/lang/Long;)Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final extraCallback:Ljava/lang/Long;

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock$ICustomTabsCallback;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock$ICustomTabsCallback;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "image_url"
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "end_time"
        .end annotation
    .end param

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onPostMessage:Ljava/lang/String;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onMessageChannelReady:Ljava/lang/String;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p5, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->extraCallback:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p7, v0

    goto :goto_0

    :cond_0
    move-object p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    move-object p6, v0

    goto :goto_4

    :cond_4
    move-object p6, p5

    :goto_4
    move-object p1, p0

    move-object p2, p7

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    .line 65
    invoke-direct/range {p1 .. p6}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;Ljava/lang/String;Ljava/lang/Long;)Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;
    .locals 7
    .param p4    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "image_url"
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "end_time"
        .end annotation
    .end param

    new-instance v6, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v6
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onPostMessage:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onPostMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onMessageChannelReady:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->extraCallback:Ljava/lang/Long;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->extraCallback:Ljava/lang/Long;

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
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onPostMessage:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->extraCallback:Ljava/lang/Long;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FetchingScoresBlock(title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->extraCallback:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->extraCallback:Ljava/lang/Long;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
