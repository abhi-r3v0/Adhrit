.class public final Lo/isLoadInBackgroundCanceled$onPostMessage;
.super Lo/StaggeredGridLayoutManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isLoadInBackgroundCanceled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00d6\u0001J\u0010\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/CurrencyFilterHeaderHolder$CredCurrencyFilterItem;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "header",
        "",
        "filter",
        "",
        "bg",
        "Landroid/content/res/ColorStateList;",
        "(Ljava/lang/String;ILandroid/content/res/ColorStateList;)V",
        "getBg",
        "()Landroid/content/res/ColorStateList;",
        "getFilter",
        "()I",
        "getHeader",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
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
.field final ICustomTabsCallback:Ljava/lang/String;

.field final onNavigationEvent:I

.field private final onPostMessage:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/res/ColorStateList;)V
    .locals 1

    const-string v0, "header"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bg"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lo/StaggeredGridLayoutManager;-><init>()V

    iput-object p1, p0, Lo/isLoadInBackgroundCanceled$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    iput p2, p0, Lo/isLoadInBackgroundCanceled$onPostMessage;->onNavigationEvent:I

    iput-object p3, p0, Lo/isLoadInBackgroundCanceled$onPostMessage;->onPostMessage:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public static synthetic extraCallback(Lo/isLoadInBackgroundCanceled$onPostMessage;I)Lo/isLoadInBackgroundCanceled$onPostMessage;
    .locals 2

    iget-object v0, p0, Lo/isLoadInBackgroundCanceled$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    iget-object p0, p0, Lo/isLoadInBackgroundCanceled$onPostMessage;->onPostMessage:Landroid/content/res/ColorStateList;

    const-string v1, "header"

    .line 1000
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bg"

    invoke-static {p0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lo/isLoadInBackgroundCanceled$onPostMessage;

    invoke-direct {v1, v0, p1, p0}, Lo/isLoadInBackgroundCanceled$onPostMessage;-><init>(Ljava/lang/String;ILandroid/content/res/ColorStateList;)V

    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/isLoadInBackgroundCanceled$onPostMessage;

    if-eqz v0, :cond_0

    check-cast p1, Lo/isLoadInBackgroundCanceled$onPostMessage;

    iget-object v0, p0, Lo/isLoadInBackgroundCanceled$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p1, Lo/isLoadInBackgroundCanceled$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/isLoadInBackgroundCanceled$onPostMessage;->onNavigationEvent:I

    iget v1, p1, Lo/isLoadInBackgroundCanceled$onPostMessage;->onNavigationEvent:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/isLoadInBackgroundCanceled$onPostMessage;->onPostMessage:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Lo/isLoadInBackgroundCanceled$onPostMessage;->onPostMessage:Landroid/content/res/ColorStateList;

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

    iget-object v0, p0, Lo/isLoadInBackgroundCanceled$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lo/isLoadInBackgroundCanceled$onPostMessage;->onNavigationEvent:I

    .line 1025
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/isLoadInBackgroundCanceled$onPostMessage;->onPostMessage:Landroid/content/res/ColorStateList;

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

    .line 47
    instance-of p1, p1, Lo/isLoadInBackgroundCanceled$onPostMessage;

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CredCurrencyFilterItem(header="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/isLoadInBackgroundCanceled$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/isLoadInBackgroundCanceled$onPostMessage;->onNavigationEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/isLoadInBackgroundCanceled$onPostMessage;->onPostMessage:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
