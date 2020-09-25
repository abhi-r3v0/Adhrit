.class public final Lo/computeVerticalScrollExtent;
.super Lo/StaggeredGridLayoutManager;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\tH\u00c6\u0003J=\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000e\u00a8\u0006!"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleMasonryItem;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "firstItem",
        "Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleMinItem;",
        "secondItem",
        "firstPercent",
        "",
        "secondPercent",
        "responseCard",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleMinItem;Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleMinItem;FFLcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;)V",
        "getFirstItem",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleMinItem;",
        "getFirstPercent",
        "()F",
        "getResponseCard",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
        "getSecondItem",
        "getSecondPercent",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "",
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
.field public final ICustomTabsCallback:Lo/scrollToPositionWithOffset;

.field final extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

.field public final onMessageChannelReady:F

.field public final onNavigationEvent:Lo/scrollToPositionWithOffset;

.field public final onPostMessage:F


# direct methods
.method public constructor <init>(Lo/scrollToPositionWithOffset;Lo/scrollToPositionWithOffset;FFLcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;)V
    .locals 1

    const-string v0, "firstItem"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "responseCard"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lo/StaggeredGridLayoutManager;-><init>()V

    iput-object p1, p0, Lo/computeVerticalScrollExtent;->onNavigationEvent:Lo/scrollToPositionWithOffset;

    iput-object p2, p0, Lo/computeVerticalScrollExtent;->ICustomTabsCallback:Lo/scrollToPositionWithOffset;

    iput p3, p0, Lo/computeVerticalScrollExtent;->onMessageChannelReady:F

    iput p4, p0, Lo/computeVerticalScrollExtent;->onPostMessage:F

    iput-object p5, p0, Lo/computeVerticalScrollExtent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/computeVerticalScrollExtent;

    if-eqz v0, :cond_0

    check-cast p1, Lo/computeVerticalScrollExtent;

    iget-object v0, p0, Lo/computeVerticalScrollExtent;->onNavigationEvent:Lo/scrollToPositionWithOffset;

    iget-object v1, p1, Lo/computeVerticalScrollExtent;->onNavigationEvent:Lo/scrollToPositionWithOffset;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/computeVerticalScrollExtent;->ICustomTabsCallback:Lo/scrollToPositionWithOffset;

    iget-object v1, p1, Lo/computeVerticalScrollExtent;->ICustomTabsCallback:Lo/scrollToPositionWithOffset;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/computeVerticalScrollExtent;->onMessageChannelReady:F

    iget v1, p1, Lo/computeVerticalScrollExtent;->onMessageChannelReady:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lo/computeVerticalScrollExtent;->onPostMessage:F

    iget v1, p1, Lo/computeVerticalScrollExtent;->onPostMessage:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/computeVerticalScrollExtent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    iget-object p1, p1, Lo/computeVerticalScrollExtent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

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

    iget-object v0, p0, Lo/computeVerticalScrollExtent;->onNavigationEvent:Lo/scrollToPositionWithOffset;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/computeVerticalScrollExtent;->ICustomTabsCallback:Lo/scrollToPositionWithOffset;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lo/computeVerticalScrollExtent;->onMessageChannelReady:F

    .line 1025
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lo/computeVerticalScrollExtent;->onPostMessage:F

    .line 2025
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/computeVerticalScrollExtent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

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

    const-string v1, "LifestyleMasonryItem(firstItem="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/computeVerticalScrollExtent;->onNavigationEvent:Lo/scrollToPositionWithOffset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/computeVerticalScrollExtent;->ICustomTabsCallback:Lo/scrollToPositionWithOffset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", firstPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/computeVerticalScrollExtent;->onMessageChannelReady:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", secondPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/computeVerticalScrollExtent;->onPostMessage:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", responseCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/computeVerticalScrollExtent;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
