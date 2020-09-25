.class public final Lo/launchIntent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/launchIntent$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0080\u0008\u0018\u00002\u00020\u0001:\u0001\u0018B#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00072\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/system/SystemInfo;",
        "",
        "batteryStatus",
        "Lcom/datadog/android/core/internal/system/SystemInfo$BatteryStatus;",
        "batteryLevel",
        "",
        "powerSaveMode",
        "",
        "(Lcom/datadog/android/core/internal/system/SystemInfo$BatteryStatus;IZ)V",
        "getBatteryLevel",
        "()I",
        "getBatteryStatus",
        "()Lcom/datadog/android/core/internal/system/SystemInfo$BatteryStatus;",
        "getPowerSaveMode",
        "()Z",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
        "BatteryStatus",
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
.field public final ICustomTabsCallback:Z

.field public final onMessageChannelReady:Lo/launchIntent$onPostMessage;

.field public final onNavigationEvent:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/launchIntent;-><init>(B)V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 2

    .line 12
    sget-object p1, Lo/launchIntent$onPostMessage;->onNavigationEvent:Lo/launchIntent$onPostMessage;

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0, p1, v0, v1}, Lo/launchIntent;-><init>(Lo/launchIntent$onPostMessage;IZ)V

    return-void
.end method

.method private constructor <init>(Lo/launchIntent$onPostMessage;IZ)V
    .locals 1

    const-string v0, "batteryStatus"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/launchIntent;->onMessageChannelReady:Lo/launchIntent$onPostMessage;

    iput p2, p0, Lo/launchIntent;->onNavigationEvent:I

    iput-boolean p3, p0, Lo/launchIntent;->ICustomTabsCallback:Z

    return-void
.end method

.method public static synthetic onMessageChannelReady(Lo/launchIntent;Lo/launchIntent$onPostMessage;IZI)Lo/launchIntent;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lo/launchIntent;->onMessageChannelReady:Lo/launchIntent$onPostMessage;

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    iget p2, p0, Lo/launchIntent;->onNavigationEvent:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lo/launchIntent;->ICustomTabsCallback:Z

    :cond_2
    const-string p0, "batteryStatus"

    .line 1000
    invoke-static {p1, p0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lo/launchIntent;

    invoke-direct {p0, p1, p2, p3}, Lo/launchIntent;-><init>(Lo/launchIntent$onPostMessage;IZ)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/launchIntent;

    if-eqz v0, :cond_0

    check-cast p1, Lo/launchIntent;

    iget-object v0, p0, Lo/launchIntent;->onMessageChannelReady:Lo/launchIntent$onPostMessage;

    iget-object v1, p1, Lo/launchIntent;->onMessageChannelReady:Lo/launchIntent$onPostMessage;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/launchIntent;->onNavigationEvent:I

    iget v1, p1, Lo/launchIntent;->onNavigationEvent:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lo/launchIntent;->ICustomTabsCallback:Z

    iget-boolean p1, p1, Lo/launchIntent;->ICustomTabsCallback:Z

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
    .locals 2

    iget-object v0, p0, Lo/launchIntent;->onMessageChannelReady:Lo/launchIntent$onPostMessage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/launchIntent;->onNavigationEvent:I

    .line 1025
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lo/launchIntent;->ICustomTabsCallback:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SystemInfo(batteryStatus="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/launchIntent;->onMessageChannelReady:Lo/launchIntent$onPostMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", batteryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/launchIntent;->onNavigationEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", powerSaveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/launchIntent;->ICustomTabsCallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
