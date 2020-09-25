.class public final Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;
.super Lo/StaggeredGridLayoutManager;
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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B1\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J3\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u00062\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00062\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "id",
        "",
        "text",
        "shouldShowDescription",
        "",
        "message",
        "Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "(Ljava/lang/String;Ljava/lang/String;ZLcom/dreamplug/textformatter/EncodedStringWrapper;)V",
        "getId",
        "()Ljava/lang/String;",
        "getMessage",
        "()Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "getShouldShowDescription",
        "()Z",
        "getText",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "",
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

.annotation runtime Lorg/parceler/Parcel;
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final message:Lo/getTargetScrollPosition;

.field private final shouldShowDescription:Z

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLo/getTargetScrollPosition;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "text"
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "should_show_description"
        .end annotation
    .end param
    .param p4    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "message"
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "text"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lo/StaggeredGridLayoutManager;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->text:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->shouldShowDescription:Z

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->message:Lo/getTargetScrollPosition;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLo/getTargetScrollPosition;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 55
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;-><init>(Ljava/lang/String;Ljava/lang/String;ZLo/getTargetScrollPosition;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;Ljava/lang/String;Ljava/lang/String;ZLo/getTargetScrollPosition;ILjava/lang/Object;)Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->text:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->shouldShowDescription:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->message:Lo/getTargetScrollPosition;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->copy(Ljava/lang/String;Ljava/lang/String;ZLo/getTargetScrollPosition;)Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->shouldShowDescription:Z

    return v0
.end method

.method public final component4()Lo/getTargetScrollPosition;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->message:Lo/getTargetScrollPosition;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ZLo/getTargetScrollPosition;)Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "text"
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "should_show_description"
        .end annotation
    .end param
    .param p4    # Lo/getTargetScrollPosition;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "message"
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "text"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;-><init>(Ljava/lang/String;Ljava/lang/String;ZLo/getTargetScrollPosition;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->text:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->text:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->shouldShowDescription:Z

    iget-boolean v1, p1, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->shouldShowDescription:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->message:Lo/getTargetScrollPosition;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->message:Lo/getTargetScrollPosition;

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

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Lo/getTargetScrollPosition;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->message:Lo/getTargetScrollPosition;

    return-object v0
.end method

.method public final getShouldShowDescription()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->shouldShowDescription:Z

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->text:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->shouldShowDescription:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->message:Lo/getTargetScrollPosition;

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

    const-string v1, "CardLinkingReason(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldShowDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->shouldShowDescription:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->message:Lo/getTargetScrollPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
