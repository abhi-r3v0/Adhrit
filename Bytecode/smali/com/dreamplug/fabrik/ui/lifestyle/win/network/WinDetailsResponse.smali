.class public final Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;
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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B9\u0012\n\u0008\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\rJ\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0003J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0014J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\nH\u00c6\u0003JD\u0010\u001a\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0003\u0010\t\u001a\u0004\u0018\u00010\nH\u00c6\u0001\u00a2\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u00032\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0008H\u00d6\u0001J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u0015\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006!"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;",
        "",
        "nextPage",
        "",
        "result",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;",
        "totalCount",
        "",
        "parentEntity",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ParentEntity;",
        "(Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ParentEntity;)V",
        "getNextPage",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getParentEntity",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ParentEntity;",
        "getResult",
        "()Ljava/util/List;",
        "getTotalCount",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ParentEntity;)Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;",
        "equals",
        "other",
        "hashCode",
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
.field public final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;",
            ">;"
        }
    .end annotation
.end field

.field final extraCallback:Ljava/lang/Integer;

.field public final onMessageChannelReady:Ljava/lang/Boolean;

.field public final onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ParentEntity;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ParentEntity;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "next_page"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "total_count"
        .end annotation
    .end param
    .param p4    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ParentEntity;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "parent_entity"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ParentEntity;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;->onMessageChannelReady:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;->ICustomTabsCallback:Ljava/util/List;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;->extraCallback:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ParentEntity;

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ParentEntity;)Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "next_page"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "total_count"
        .end annotation
    .end param
    .param p4    # Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ParentEntity;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "parent_entity"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ParentEntity;",
            ")",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;"
        }
    .end annotation

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;-><init>(Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ParentEntity;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;->onMessageChannelReady:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;->onMessageChannelReady:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;->ICustomTabsCallback:Ljava/util/List;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;->ICustomTabsCallback:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;->extraCallback:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;->extraCallback:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ParentEntity;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ParentEntity;

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

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;->onMessageChannelReady:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;->ICustomTabsCallback:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;->extraCallback:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ParentEntity;

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

    const-string v1, "WinDetailsResponse(nextPage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;->onMessageChannelReady:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;->ICustomTabsCallback:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;->extraCallback:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parentEntity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ParentEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
