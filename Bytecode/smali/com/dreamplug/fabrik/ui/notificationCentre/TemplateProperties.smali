.class public final Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;
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
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B)\u0012\n\u0008\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J-\u0010\u0012\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;",
        "",
        "background",
        "Lcom/dreamplug/fabrik/ui/nba/helper/Background;",
        "body",
        "Lcom/dreamplug/fabrik/ui/notificationCentre/Body;",
        "ctas",
        "Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;",
        "(Lcom/dreamplug/fabrik/ui/nba/helper/Background;Lcom/dreamplug/fabrik/ui/notificationCentre/Body;Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;)V",
        "getBackground",
        "()Lcom/dreamplug/fabrik/ui/nba/helper/Background;",
        "getBody",
        "()Lcom/dreamplug/fabrik/ui/notificationCentre/Body;",
        "getCtas",
        "()Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;",
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
.field public final ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/notificationCentre/Body;

.field public final extraCallback:Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;

.field public final onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/Background;


# direct methods
.method public constructor <init>(Lcom/dreamplug/fabrik/ui/nba/helper/Background;Lcom/dreamplug/fabrik/ui/notificationCentre/Body;Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;)V
    .locals 0
    .param p1    # Lcom/dreamplug/fabrik/ui/nba/helper/Background;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "background"
        .end annotation
    .end param
    .param p2    # Lcom/dreamplug/fabrik/ui/notificationCentre/Body;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "body"
        .end annotation
    .end param
    .param p3    # Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "ctas"
        .end annotation
    .end param

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/notificationCentre/Body;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;

    return-void
.end method


# virtual methods
.method public final copy(Lcom/dreamplug/fabrik/ui/nba/helper/Background;Lcom/dreamplug/fabrik/ui/notificationCentre/Body;Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;)Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;
    .locals 1
    .param p1    # Lcom/dreamplug/fabrik/ui/nba/helper/Background;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "background"
        .end annotation
    .end param
    .param p2    # Lcom/dreamplug/fabrik/ui/notificationCentre/Body;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "body"
        .end annotation
    .end param
    .param p3    # Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "ctas"
        .end annotation
    .end param

    new-instance v0, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;

    invoke-direct {v0, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/Background;Lcom/dreamplug/fabrik/ui/notificationCentre/Body;Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/notificationCentre/Body;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/notificationCentre/Body;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;

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

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/notificationCentre/Body;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;

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

    const-string v1, "TemplateProperties(background="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/notificationCentre/Body;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ctas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
