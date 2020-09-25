.class public final Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0012\n\u0008\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0001\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005H\u00c6\u0003J\'\u0010\r\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0003\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;",
        "",
        "primary",
        "Lcom/dreamplug/fabrik/ui/nba/helper/Cta;",
        "secondary",
        "",
        "(Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Ljava/util/List;)V",
        "getPrimary",
        "()Lcom/dreamplug/fabrik/ui/nba/helper/Cta;",
        "getSecondary",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "copy",
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


# instance fields
.field public final ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

.field final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/nba/helper/Cta;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/dreamplug/fabrik/ui/nba/helper/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "primary"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "secondary"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/fabrik/ui/nba/helper/Cta;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/nba/helper/Cta;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;->onPostMessage:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final copy(Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Ljava/util/List;)Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;
    .locals 1
    .param p1    # Lcom/dreamplug/fabrik/ui/nba/helper/Cta;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "primary"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "secondary"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/fabrik/ui/nba/helper/Cta;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/nba/helper/Cta;",
            ">;)",
            "Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;"
        }
    .end annotation

    new-instance v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;

    invoke-direct {v0, p1, p2}, Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/Cta;Ljava/util/List;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;->onPostMessage:Ljava/util/List;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;->onPostMessage:Ljava/util/List;

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

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;->onPostMessage:Ljava/util/List;

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

    const-string v1, "Ctas(primary="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;->onPostMessage:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
