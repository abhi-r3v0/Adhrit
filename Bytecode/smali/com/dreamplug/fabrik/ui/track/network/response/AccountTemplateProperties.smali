.class public final Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;
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
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B%\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J)\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;",
        "",
        "body",
        "Lcom/dreamplug/fabrik/ui/track/network/response/Body;",
        "footer",
        "Lcom/dreamplug/fabrik/ui/track/network/response/Footer;",
        "header",
        "Lcom/dreamplug/fabrik/ui/track/network/response/Header;",
        "(Lcom/dreamplug/fabrik/ui/track/network/response/Body;Lcom/dreamplug/fabrik/ui/track/network/response/Footer;Lcom/dreamplug/fabrik/ui/track/network/response/Header;)V",
        "getBody",
        "()Lcom/dreamplug/fabrik/ui/track/network/response/Body;",
        "getFooter",
        "()Lcom/dreamplug/fabrik/ui/track/network/response/Footer;",
        "getHeader",
        "()Lcom/dreamplug/fabrik/ui/track/network/response/Header;",
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
.field public final ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/track/network/response/Body;

.field public final onNavigationEvent:Lcom/dreamplug/fabrik/ui/track/network/response/Header;

.field public final onPostMessage:Lcom/dreamplug/fabrik/ui/track/network/response/Footer;


# direct methods
.method public constructor <init>(Lcom/dreamplug/fabrik/ui/track/network/response/Body;Lcom/dreamplug/fabrik/ui/track/network/response/Footer;Lcom/dreamplug/fabrik/ui/track/network/response/Header;)V
    .locals 1
    .param p1    # Lcom/dreamplug/fabrik/ui/track/network/response/Body;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "body"
        .end annotation
    .end param
    .param p2    # Lcom/dreamplug/fabrik/ui/track/network/response/Footer;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "footer"
        .end annotation
    .end param
    .param p3    # Lcom/dreamplug/fabrik/ui/track/network/response/Header;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "header"
        .end annotation
    .end param

    const-string v0, "body"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "header"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/track/network/response/Body;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;->onPostMessage:Lcom/dreamplug/fabrik/ui/track/network/response/Footer;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/track/network/response/Header;

    return-void
.end method


# virtual methods
.method public final copy(Lcom/dreamplug/fabrik/ui/track/network/response/Body;Lcom/dreamplug/fabrik/ui/track/network/response/Footer;Lcom/dreamplug/fabrik/ui/track/network/response/Header;)Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;
    .locals 1
    .param p1    # Lcom/dreamplug/fabrik/ui/track/network/response/Body;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "body"
        .end annotation
    .end param
    .param p2    # Lcom/dreamplug/fabrik/ui/track/network/response/Footer;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "footer"
        .end annotation
    .end param
    .param p3    # Lcom/dreamplug/fabrik/ui/track/network/response/Header;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "header"
        .end annotation
    .end param

    const-string v0, "body"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "header"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;

    invoke-direct {v0, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;-><init>(Lcom/dreamplug/fabrik/ui/track/network/response/Body;Lcom/dreamplug/fabrik/ui/track/network/response/Footer;Lcom/dreamplug/fabrik/ui/track/network/response/Header;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/track/network/response/Body;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/track/network/response/Body;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;->onPostMessage:Lcom/dreamplug/fabrik/ui/track/network/response/Footer;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;->onPostMessage:Lcom/dreamplug/fabrik/ui/track/network/response/Footer;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/track/network/response/Header;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/track/network/response/Header;

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

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/track/network/response/Body;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;->onPostMessage:Lcom/dreamplug/fabrik/ui/track/network/response/Footer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/track/network/response/Header;

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

    const-string v1, "AccountTemplateProperties(body="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/track/network/response/Body;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", footer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;->onPostMessage:Lcom/dreamplug/fabrik/ui/track/network/response/Footer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/track/network/response/Header;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
