.class public final Lo/adjustDropDownSizeAndPosition;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/adjustDropDownSizeAndPosition$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0080\u0008\u0018\u00002\u00020\u0001:\u0001!BC\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0007H\u00c6\u0003JG\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020\u0007H\u00d6\u0001J\t\u0010 \u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\rR\u0011\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\rR\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\r\u00a8\u0006\""
    }
    d2 = {
        "Lcom/datadog/android/core/internal/net/info/NetworkInfo;",
        "",
        "connectivity",
        "Lcom/datadog/android/core/internal/net/info/NetworkInfo$Connectivity;",
        "carrierName",
        "",
        "carrierId",
        "",
        "upKbps",
        "downKbps",
        "strength",
        "(Lcom/datadog/android/core/internal/net/info/NetworkInfo$Connectivity;Ljava/lang/String;IIII)V",
        "getCarrierId",
        "()I",
        "getCarrierName",
        "()Ljava/lang/String;",
        "getConnectivity",
        "()Lcom/datadog/android/core/internal/net/info/NetworkInfo$Connectivity;",
        "getDownKbps",
        "getStrength",
        "getUpKbps",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "Connectivity",
        "dd-sdk-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/adjustDropDownSizeAndPosition$extraCallback;

.field public final asInterface:I

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:I

.field public final onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lo/adjustDropDownSizeAndPosition;-><init>(Lo/adjustDropDownSizeAndPosition$extraCallback;Ljava/lang/String;IIIII)V

    return-void
.end method

.method private constructor <init>(Lo/adjustDropDownSizeAndPosition$extraCallback;Ljava/lang/String;IIII)V
    .locals 1

    const-string v0, "connectivity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/adjustDropDownSizeAndPosition;->ICustomTabsCallback:Lo/adjustDropDownSizeAndPosition$extraCallback;

    iput-object p2, p0, Lo/adjustDropDownSizeAndPosition;->extraCallback:Ljava/lang/String;

    iput p3, p0, Lo/adjustDropDownSizeAndPosition;->onPostMessage:I

    iput p4, p0, Lo/adjustDropDownSizeAndPosition;->onMessageChannelReady:I

    iput p5, p0, Lo/adjustDropDownSizeAndPosition;->onNavigationEvent:I

    iput p6, p0, Lo/adjustDropDownSizeAndPosition;->asInterface:I

    return-void
.end method

.method public synthetic constructor <init>(Lo/adjustDropDownSizeAndPosition$extraCallback;Ljava/lang/String;IIIII)V
    .locals 7

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_0

    .line 10
    sget-object p1, Lo/adjustDropDownSizeAndPosition$extraCallback;->ICustomTabsCallback:Lo/adjustDropDownSizeAndPosition$extraCallback;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    move-object v2, p2

    and-int/lit8 p1, p7, 0x4

    const/4 p2, -0x1

    if-eqz p1, :cond_2

    const/4 v3, -0x1

    goto :goto_0

    :cond_2
    move v3, p3

    :goto_0
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    const/4 v4, -0x1

    goto :goto_1

    :cond_3
    move v4, p4

    :goto_1
    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    const/4 v5, -0x1

    goto :goto_2

    :cond_4
    move v5, p5

    :goto_2
    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_5

    const/high16 p6, -0x80000000

    const/high16 v6, -0x80000000

    goto :goto_3

    :cond_5
    move v6, p6

    :goto_3
    move-object v0, p0

    .line 15
    invoke-direct/range {v0 .. v6}, Lo/adjustDropDownSizeAndPosition;-><init>(Lo/adjustDropDownSizeAndPosition$extraCallback;Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/adjustDropDownSizeAndPosition;

    if-eqz v0, :cond_0

    check-cast p1, Lo/adjustDropDownSizeAndPosition;

    iget-object v0, p0, Lo/adjustDropDownSizeAndPosition;->ICustomTabsCallback:Lo/adjustDropDownSizeAndPosition$extraCallback;

    iget-object v1, p1, Lo/adjustDropDownSizeAndPosition;->ICustomTabsCallback:Lo/adjustDropDownSizeAndPosition$extraCallback;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/adjustDropDownSizeAndPosition;->extraCallback:Ljava/lang/String;

    iget-object v1, p1, Lo/adjustDropDownSizeAndPosition;->extraCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/adjustDropDownSizeAndPosition;->onPostMessage:I

    iget v1, p1, Lo/adjustDropDownSizeAndPosition;->onPostMessage:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/adjustDropDownSizeAndPosition;->onMessageChannelReady:I

    iget v1, p1, Lo/adjustDropDownSizeAndPosition;->onMessageChannelReady:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/adjustDropDownSizeAndPosition;->onNavigationEvent:I

    iget v1, p1, Lo/adjustDropDownSizeAndPosition;->onNavigationEvent:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/adjustDropDownSizeAndPosition;->asInterface:I

    iget p1, p1, Lo/adjustDropDownSizeAndPosition;->asInterface:I

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

    iget-object v0, p0, Lo/adjustDropDownSizeAndPosition;->ICustomTabsCallback:Lo/adjustDropDownSizeAndPosition$extraCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/adjustDropDownSizeAndPosition;->extraCallback:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/adjustDropDownSizeAndPosition;->onPostMessage:I

    .line 1025
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/adjustDropDownSizeAndPosition;->onMessageChannelReady:I

    .line 2025
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/adjustDropDownSizeAndPosition;->onNavigationEvent:I

    .line 3025
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/adjustDropDownSizeAndPosition;->asInterface:I

    .line 4025
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

    const-string v1, "NetworkInfo(connectivity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/adjustDropDownSizeAndPosition;->ICustomTabsCallback:Lo/adjustDropDownSizeAndPosition$extraCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", carrierName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/adjustDropDownSizeAndPosition;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", carrierId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/adjustDropDownSizeAndPosition;->onPostMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", upKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/adjustDropDownSizeAndPosition;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", downKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/adjustDropDownSizeAndPosition;->onNavigationEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", strength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/adjustDropDownSizeAndPosition;->asInterface:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
