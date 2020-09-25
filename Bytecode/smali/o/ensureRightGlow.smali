.class public final Lo/ensureRightGlow;
.super Lo/StaggeredGridLayoutManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ensureRightGlow$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001&B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\nH\u00c6\u0003J;\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u0010\u001f\u001a\u00020\u00082\u0008\u0010 \u001a\u0004\u0018\u00010!H\u00d6\u0003J\t\u0010\"\u001a\u00020#H\u00d6\u0001J\u0010\u0010$\u001a\u00020\u00082\u0006\u0010 \u001a\u00020!H\u0016J\t\u0010%\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0011\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserInputTypeListItem;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "sectionId",
        "",
        "field",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;",
        "value",
        "validate",
        "",
        "onTextChange",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserInputTypeListItem$OnTextChange;",
        "(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;Ljava/lang/String;ZLcom/dreamplug/fabrik/ui/lifestyle/redemption/UserInputTypeListItem$OnTextChange;)V",
        "getField",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;",
        "getOnTextChange",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/redemption/UserInputTypeListItem$OnTextChange;",
        "getSectionId",
        "()Ljava/lang/String;",
        "getValidate",
        "()Z",
        "setValidate",
        "(Z)V",
        "getValue",
        "setValue",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "isSame",
        "toString",
        "OnTextChange",
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
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final extraCallback:Lo/ensureRightGlow$extraCallback;

.field public onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

.field public onPostMessage:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;Ljava/lang/String;ZLo/ensureRightGlow$extraCallback;)V
    .locals 1

    const-string/jumbo v0, "sectionId"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "field"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTextChange"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lo/StaggeredGridLayoutManager;-><init>()V

    iput-object p1, p0, Lo/ensureRightGlow;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p2, p0, Lo/ensureRightGlow;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    iput-object p3, p0, Lo/ensureRightGlow;->onMessageChannelReady:Ljava/lang/String;

    iput-boolean p4, p0, Lo/ensureRightGlow;->onPostMessage:Z

    iput-object p5, p0, Lo/ensureRightGlow;->extraCallback:Lo/ensureRightGlow$extraCallback;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/ensureRightGlow;

    if-eqz v0, :cond_0

    check-cast p1, Lo/ensureRightGlow;

    iget-object v0, p0, Lo/ensureRightGlow;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p1, Lo/ensureRightGlow;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ensureRightGlow;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    iget-object v1, p1, Lo/ensureRightGlow;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ensureRightGlow;->onMessageChannelReady:Ljava/lang/String;

    iget-object v1, p1, Lo/ensureRightGlow;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/ensureRightGlow;->onPostMessage:Z

    iget-boolean v1, p1, Lo/ensureRightGlow;->onPostMessage:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/ensureRightGlow;->extraCallback:Lo/ensureRightGlow$extraCallback;

    iget-object p1, p1, Lo/ensureRightGlow;->extraCallback:Lo/ensureRightGlow$extraCallback;

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

    iget-object v0, p0, Lo/ensureRightGlow;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/ensureRightGlow;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/ensureRightGlow;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/ensureRightGlow;->onPostMessage:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/ensureRightGlow;->extraCallback:Lo/ensureRightGlow$extraCallback;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public final isSame(Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    move-object v0, p0

    check-cast v0, Lo/ensureRightGlow;

    if-eq p1, v0, :cond_1

    instance-of v0, p1, Lo/ensureRightGlow;

    if-eqz v0, :cond_0

    check-cast p1, Lo/ensureRightGlow;

    iget-object p1, p1, Lo/ensureRightGlow;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    .line 1063
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onMessageChannelReady:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lo/ensureRightGlow;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    .line 2063
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;->onMessageChannelReady:Ljava/lang/String;

    .line 76
    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserInputTypeListItem(sectionId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/ensureRightGlow;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ensureRightGlow;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/Fields;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ensureRightGlow;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", validate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/ensureRightGlow;->onPostMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", onTextChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ensureRightGlow;->extraCallback:Lo/ensureRightGlow$extraCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
