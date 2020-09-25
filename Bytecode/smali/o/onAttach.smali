.class public final Lo/onAttach;
.super Lo/StaggeredGridLayoutManager;
.source ""

# interfaces
.implements Lo/shouldShowRequestPermissionRationale;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008\u0086\u0008\u0018\u00002\u00020\u00012\u00020\u0002B+\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0006H\u00c6\u0003J1\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00d6\u0003J\n\u0010\u0019\u001a\u0004\u0018\u00010\u0004H\u0016J\t\u0010\u001a\u001a\u00020\u0006H\u00d6\u0001J\u0010\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\t\u0010\u001c\u001a\u00020\u0004H\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/ui/list/holders/LoaderItem;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "Lcom/dreamplug/fabrik/helper/ui/list/PlaceHolderItem;",
        "tag",
        "",
        "height",
        "",
        "width",
        "colorRes",
        "(Ljava/lang/String;III)V",
        "getColorRes",
        "()I",
        "getHeight",
        "getTag",
        "()Ljava/lang/String;",
        "getWidth",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "getPlaceHolderTag",
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
.field final ICustomTabsCallback:I

.field private final extraCallback:Ljava/lang/String;

.field final onMessageChannelReady:I

.field final onNavigationEvent:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, -0x1

    const v1, 0x7f060209

    .line 30
    invoke-direct {p0, p1, p2, v0, v1}, Lo/onAttach;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    const-string/jumbo p3, "tag"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lo/StaggeredGridLayoutManager;-><init>()V

    iput-object p1, p0, Lo/onAttach;->extraCallback:Ljava/lang/String;

    iput p2, p0, Lo/onAttach;->onNavigationEvent:I

    const/4 p1, -0x1

    iput p1, p0, Lo/onAttach;->onMessageChannelReady:I

    const p1, 0x7f060209

    iput p1, p0, Lo/onAttach;->ICustomTabsCallback:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/onAttach;->extraCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/onAttach;

    if-eqz v0, :cond_0

    check-cast p1, Lo/onAttach;

    iget-object v0, p0, Lo/onAttach;->extraCallback:Ljava/lang/String;

    iget-object v1, p1, Lo/onAttach;->extraCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/onAttach;->onNavigationEvent:I

    iget v1, p1, Lo/onAttach;->onNavigationEvent:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/onAttach;->onMessageChannelReady:I

    iget v1, p1, Lo/onAttach;->onMessageChannelReady:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/onAttach;->ICustomTabsCallback:I

    iget p1, p1, Lo/onAttach;->ICustomTabsCallback:I

    if-ne v0, p1, :cond_0

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
    .locals 2

    iget-object v0, p0, Lo/onAttach;->extraCallback:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/onAttach;->onNavigationEvent:I

    .line 2025
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/onAttach;->onMessageChannelReady:I

    .line 3025
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lo/onAttach;->ICustomTabsCallback:I

    .line 4025
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isSame(Ljava/lang/Object;)Z
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    instance-of v0, p1, Lo/onCreateView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lo/onCreateView;

    .line 1028
    iget-object v0, v0, Lo/onCreateView;->ICustomTabsCallback:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lo/onAttach;->extraCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lo/extraCallback;->onMessageChannelReady(Lo/shouldShowRequestPermissionRationale;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoaderItem(tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/onAttach;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/onAttach;->onNavigationEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/onAttach;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", colorRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/onAttach;->ICustomTabsCallback:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
