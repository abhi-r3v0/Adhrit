.class public final Lcom/dreamplug/utils/health/Health$ServiceStatus;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/utils/health/Health;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceStatus"
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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B?\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012$\u0008\u0002\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006`\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J%\u0010\u0018\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006`\u0007H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\tH\u00c6\u0003JC\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032$\u0008\u0002\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006`\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0006H\u00d6\u0001R6\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006`\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006 "
    }
    d2 = {
        "Lcom/dreamplug/utils/health/Health$ServiceStatus;",
        "",
        "status",
        "",
        "configs",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "qos",
        "Lcom/dreamplug/utils/health/Health$Status;",
        "(ILjava/util/HashMap;Lcom/dreamplug/utils/health/Health$Status;)V",
        "getConfigs",
        "()Ljava/util/HashMap;",
        "setConfigs",
        "(Ljava/util/HashMap;)V",
        "getQos",
        "()Lcom/dreamplug/utils/health/Health$Status;",
        "setQos",
        "(Lcom/dreamplug/utils/health/Health$Status;)V",
        "getStatus",
        "()I",
        "setStatus",
        "(I)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private configs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private qos:Lcom/dreamplug/utils/health/Health$onNavigationEvent;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dreamplug/utils/health/Health$ServiceStatus;-><init>(ILjava/util/HashMap;Lcom/dreamplug/utils/health/Health$onNavigationEvent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/HashMap;Lcom/dreamplug/utils/health/Health$onNavigationEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dreamplug/utils/health/Health$onNavigationEvent;",
            ")V"
        }
    .end annotation

    const-string v0, "configs"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qos"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->status:I

    iput-object p2, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->configs:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->qos:Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/HashMap;Lcom/dreamplug/utils/health/Health$onNavigationEvent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x4

    if-eqz p5, :cond_0

    const/4 p1, 0x4

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 70
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_1
    and-int/2addr p4, v0

    if-eqz p4, :cond_2

    .line 71
    sget-object p3, Lcom/dreamplug/utils/health/Health$onNavigationEvent;->extraCallback:Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/dreamplug/utils/health/Health$ServiceStatus;-><init>(ILjava/util/HashMap;Lcom/dreamplug/utils/health/Health$onNavigationEvent;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/utils/health/Health$ServiceStatus;ILjava/util/HashMap;Lcom/dreamplug/utils/health/Health$onNavigationEvent;ILjava/lang/Object;)Lcom/dreamplug/utils/health/Health$ServiceStatus;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->status:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->configs:Ljava/util/HashMap;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->qos:Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/dreamplug/utils/health/Health$ServiceStatus;->copy(ILjava/util/HashMap;Lcom/dreamplug/utils/health/Health$onNavigationEvent;)Lcom/dreamplug/utils/health/Health$ServiceStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->status:I

    return v0
.end method

.method public final component2()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->configs:Ljava/util/HashMap;

    return-object v0
.end method

.method public final component3()Lcom/dreamplug/utils/health/Health$onNavigationEvent;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->qos:Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    return-object v0
.end method

.method public final copy(ILjava/util/HashMap;Lcom/dreamplug/utils/health/Health$onNavigationEvent;)Lcom/dreamplug/utils/health/Health$ServiceStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dreamplug/utils/health/Health$onNavigationEvent;",
            ")",
            "Lcom/dreamplug/utils/health/Health$ServiceStatus;"
        }
    .end annotation

    const-string v0, "configs"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qos"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/utils/health/Health$ServiceStatus;

    invoke-direct {v0, p1, p2, p3}, Lcom/dreamplug/utils/health/Health$ServiceStatus;-><init>(ILjava/util/HashMap;Lcom/dreamplug/utils/health/Health$onNavigationEvent;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/utils/health/Health$ServiceStatus;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/utils/health/Health$ServiceStatus;

    iget v0, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->status:I

    iget v1, p1, Lcom/dreamplug/utils/health/Health$ServiceStatus;->status:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->configs:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/dreamplug/utils/health/Health$ServiceStatus;->configs:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->qos:Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    iget-object p1, p1, Lcom/dreamplug/utils/health/Health$ServiceStatus;->qos:Lcom/dreamplug/utils/health/Health$onNavigationEvent;

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

.method public final getConfigs()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->configs:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getQos()Lcom/dreamplug/utils/health/Health$onNavigationEvent;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->qos:Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->status:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->status:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->configs:Ljava/util/HashMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->qos:Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final setConfigs(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->configs:Ljava/util/HashMap;

    return-void
.end method

.method public final setQos(Lcom/dreamplug/utils/health/Health$onNavigationEvent;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->qos:Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->status:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServiceStatus(status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", configs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->configs:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", qos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;->qos:Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
