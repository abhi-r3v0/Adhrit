.class public final Lo/dispatchOnCancelled$extraCallback;
.super Lo/StaggeredGridLayoutManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/dispatchOnCancelled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B)\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000cJ2\u0010\u0011\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\u0010\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/ControlSectionHolder$HeaderItem;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "bg",
        "Landroid/content/res/ColorStateList;",
        "curvedBg",
        "customHeight",
        "",
        "(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Ljava/lang/Float;)V",
        "getBg",
        "()Landroid/content/res/ColorStateList;",
        "getCurvedBg",
        "getCustomHeight",
        "()Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Ljava/lang/Float;)Lcom/dreamplug/fabrik/ui/control/ControlSectionHolder$HeaderItem;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "isSame",
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
.field final extraCallback:Ljava/lang/Float;

.field private final onMessageChannelReady:Landroid/content/res/ColorStateList;

.field private final onNavigationEvent:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-direct {p0, v0, v0, v1}, Lo/dispatchOnCancelled$extraCallback;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;I)V
    .locals 2

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v1

    .line 29
    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lo/dispatchOnCancelled$extraCallback;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Ljava/lang/Float;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Ljava/lang/Float;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lo/StaggeredGridLayoutManager;-><init>()V

    iput-object p1, p0, Lo/dispatchOnCancelled$extraCallback;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Lo/dispatchOnCancelled$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    iput-object p1, p0, Lo/dispatchOnCancelled$extraCallback;->extraCallback:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/dispatchOnCancelled$extraCallback;

    if-eqz v0, :cond_0

    check-cast p1, Lo/dispatchOnCancelled$extraCallback;

    iget-object v0, p0, Lo/dispatchOnCancelled$extraCallback;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Lo/dispatchOnCancelled$extraCallback;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/dispatchOnCancelled$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Lo/dispatchOnCancelled$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/dispatchOnCancelled$extraCallback;->extraCallback:Ljava/lang/Float;

    iget-object p1, p1, Lo/dispatchOnCancelled$extraCallback;->extraCallback:Ljava/lang/Float;

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

    iget-object v0, p0, Lo/dispatchOnCancelled$extraCallback;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/dispatchOnCancelled$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/dispatchOnCancelled$extraCallback;->extraCallback:Ljava/lang/Float;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final isSame(Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    instance-of p1, p1, Lo/dispatchOnCancelled$extraCallback;

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HeaderItem(bg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/dispatchOnCancelled$extraCallback;->onMessageChannelReady:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", curvedBg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/dispatchOnCancelled$extraCallback;->onNavigationEvent:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/dispatchOnCancelled$extraCallback;->extraCallback:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
