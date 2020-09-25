.class public final Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B1\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J7\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;",
        "",
        "cardId",
        "",
        "cta",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;",
        "gameEntityId",
        "templateProperties",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;",
        "(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;)V",
        "getCardId",
        "()Ljava/lang/String;",
        "getCta",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;",
        "getGameEntityId",
        "getTemplateProperties",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field final ICustomTabsCallback:Ljava/lang/String;

.field final extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

.field final onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

.field final onNavigationEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "card_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "game_entity_id"
        .end annotation
    .end param
    .param p4    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "template_properties"
        .end annotation
    .end param

    const-string v0, "cardId"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;->onNavigationEvent:Ljava/lang/String;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;)Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "card_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "game_entity_id"
        .end annotation
    .end param
    .param p4    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "template_properties"
        .end annotation
    .end param

    const-string v0, "cardId"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;->onNavigationEvent:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

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

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;->onNavigationEvent:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChildCard(cardId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gameEntityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", templateProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ChildCard;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
