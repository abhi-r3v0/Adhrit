.class public final Lo/SeekBarPreference;
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008\u0086\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0008H\u00c6\u0003J)\u0010\u0013\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\n\u0010\u0018\u001a\u0004\u0018\u00010\u0004H\u0016J\t\u0010\u0019\u001a\u00020\u0006H\u00d6\u0001J\u0010\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\t\u0010\u001b\u001a\u00020\u0004H\u00d6\u0001R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/bankoffers/CategoryMiniRewardCardItem;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "Lcom/dreamplug/fabrik/ui/control/bankoffers/CategoryRewardItem;",
        "farmId",
        "",
        "position",
        "",
        "miniCard",
        "Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;",
        "(Ljava/lang/String;ILcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;)V",
        "getFarmId",
        "()Ljava/lang/String;",
        "getMiniCard",
        "()Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;",
        "getPosition",
        "()I",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "getItemFarmId",
        "hashCode",
        "isSame",
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
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final onMessageChannelReady:I

.field final onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;)V
    .locals 1

    const-string v0, "miniCard"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lo/StaggeredGridLayoutManager;-><init>()V

    iput-object p1, p0, Lo/SeekBarPreference;->ICustomTabsCallback:Ljava/lang/String;

    iput p2, p0, Lo/SeekBarPreference;->onMessageChannelReady:I

    iput-object p3, p0, Lo/SeekBarPreference;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/SeekBarPreference;

    if-eqz v0, :cond_0

    check-cast p1, Lo/SeekBarPreference;

    iget-object v0, p0, Lo/SeekBarPreference;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p1, Lo/SeekBarPreference;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/SeekBarPreference;->onMessageChannelReady:I

    iget v1, p1, Lo/SeekBarPreference;->onMessageChannelReady:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/SeekBarPreference;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;

    iget-object p1, p1, Lo/SeekBarPreference;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;

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

    iget-object v0, p0, Lo/SeekBarPreference;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lo/SeekBarPreference;->onMessageChannelReady:I

    .line 3025
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/SeekBarPreference;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final isSame(Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    instance-of v0, p1, Lo/SeekBarPreference;

    if-eqz v0, :cond_0

    check-cast p1, Lo/SeekBarPreference;

    iget-object p1, p1, Lo/SeekBarPreference;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;

    .line 1028
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;->onPostMessage:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lo/SeekBarPreference;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;

    .line 2028
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;->onPostMessage:Ljava/lang/String;

    .line 36
    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CategoryMiniRewardCardItem(farmId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/SeekBarPreference;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/SeekBarPreference;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", miniCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/SeekBarPreference;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/control/bankoffers/RewardData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
