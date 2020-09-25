.class public final Lclub/cred/credcurrency/CredPointModel;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0007H\u00c6\u0003J1\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lclub/cred/credcurrency/CredPointModel;",
        "",
        "userPoints",
        "",
        "pointsEarned",
        "pointsRedeemed",
        "response_code",
        "",
        "(JJJI)V",
        "getPointsEarned",
        "()J",
        "getPointsRedeemed",
        "getResponse_code",
        "()I",
        "getUserPoints",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "credCurrency_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:J
    .annotation runtime Lo/computeStringSize;
        extraCallback = "user_points"
    .end annotation
.end field

.field public final onMessageChannelReady:J
    .annotation runtime Lo/computeStringSize;
        extraCallback = "points_earned"
    .end annotation
.end field

.field public final onNavigationEvent:J
    .annotation runtime Lo/computeStringSize;
        extraCallback = "points_redeemed"
    .end annotation
.end field

.field final onPostMessage:I
    .annotation runtime Lo/computeStringSize;
        extraCallback = "response_code"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 10

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lclub/cred/credcurrency/CredPointModel;-><init>(JJJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJJI)V
    .locals 0
    .param p1    # J
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "user_points"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "points_earned"
        .end annotation
    .end param
    .param p5    # J
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "points_redeemed"
        .end annotation
    .end param
    .param p7    # I
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "response_code"
        .end annotation
    .end param

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lclub/cred/credcurrency/CredPointModel;->ICustomTabsCallback:J

    iput-wide p3, p0, Lclub/cred/credcurrency/CredPointModel;->onMessageChannelReady:J

    iput-wide p5, p0, Lclub/cred/credcurrency/CredPointModel;->onNavigationEvent:J

    iput p7, p0, Lclub/cred/credcurrency/CredPointModel;->onPostMessage:I

    return-void
.end method

.method public synthetic constructor <init>(JJJIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p9, p8, 0x1

    const-wide/16 v0, 0x0

    if-eqz p9, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    move-wide v4, v0

    goto :goto_1

    :cond_1
    move-wide v4, p3

    :goto_1
    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-wide v0, p5

    :goto_2
    and-int/lit8 p1, p8, 0x8

    if-eqz p1, :cond_3

    const/4 p7, 0x0

    const/4 p8, 0x0

    goto :goto_3

    :cond_3
    move p8, p7

    :goto_3
    move-object p1, p0

    move-wide p2, v2

    move-wide p4, v4

    move-wide p6, v0

    .line 21
    invoke-direct/range {p1 .. p8}, Lclub/cred/credcurrency/CredPointModel;-><init>(JJJI)V

    return-void
.end method


# virtual methods
.method public final copy(JJJI)Lclub/cred/credcurrency/CredPointModel;
    .locals 9
    .param p1    # J
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "user_points"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "points_earned"
        .end annotation
    .end param
    .param p5    # J
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "points_redeemed"
        .end annotation
    .end param
    .param p7    # I
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "response_code"
        .end annotation
    .end param

    new-instance v8, Lclub/cred/credcurrency/CredPointModel;

    move-object v0, v8

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lclub/cred/credcurrency/CredPointModel;-><init>(JJJI)V

    return-object v8
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lclub/cred/credcurrency/CredPointModel;

    if-eqz v0, :cond_0

    check-cast p1, Lclub/cred/credcurrency/CredPointModel;

    iget-wide v0, p0, Lclub/cred/credcurrency/CredPointModel;->ICustomTabsCallback:J

    iget-wide v2, p1, Lclub/cred/credcurrency/CredPointModel;->ICustomTabsCallback:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lclub/cred/credcurrency/CredPointModel;->onMessageChannelReady:J

    iget-wide v2, p1, Lclub/cred/credcurrency/CredPointModel;->onMessageChannelReady:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lclub/cred/credcurrency/CredPointModel;->onNavigationEvent:J

    iget-wide v2, p1, Lclub/cred/credcurrency/CredPointModel;->onNavigationEvent:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lclub/cred/credcurrency/CredPointModel;->onPostMessage:I

    iget p1, p1, Lclub/cred/credcurrency/CredPointModel;->onPostMessage:I

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

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lclub/cred/credcurrency/CredPointModel;->ICustomTabsCallback:J

    .line 1025
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lclub/cred/credcurrency/CredPointModel;->onMessageChannelReady:J

    .line 2025
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lclub/cred/credcurrency/CredPointModel;->onNavigationEvent:J

    .line 3025
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lclub/cred/credcurrency/CredPointModel;->onPostMessage:I

    .line 4025
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CredPointModel(userPoints="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lclub/cred/credcurrency/CredPointModel;->ICustomTabsCallback:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pointsEarned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lclub/cred/credcurrency/CredPointModel;->onMessageChannelReady:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pointsRedeemed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lclub/cred/credcurrency/CredPointModel;->onNavigationEvent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", response_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lclub/cred/credcurrency/CredPointModel;->onPostMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
