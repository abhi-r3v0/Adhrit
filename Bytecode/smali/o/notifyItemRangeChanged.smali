.class public final Lo/notifyItemRangeChanged;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B+\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\u0011\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J/\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00032\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0008R\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/FabState;",
        "",
        "isExpanded",
        "",
        "nudge",
        "Lcom/dreamplug/utils/Event;",
        "show",
        "(ZLcom/dreamplug/utils/Event;Z)V",
        "()Z",
        "getNudge",
        "()Lcom/dreamplug/utils/Event;",
        "getShow",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
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
.field final ICustomTabsCallback:Z

.field public final onMessageChannelReady:Z

.field final onPostMessage:Lo/throwIfInMutationOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/throwIfInMutationOperation<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/notifyItemRangeChanged;-><init>(B)V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, v0, v1}, Lo/notifyItemRangeChanged;-><init>(ZLo/throwIfInMutationOperation;Z)V

    return-void
.end method

.method private constructor <init>(ZLo/throwIfInMutationOperation;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lo/throwIfInMutationOperation<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/notifyItemRangeChanged;->onMessageChannelReady:Z

    iput-object p2, p0, Lo/notifyItemRangeChanged;->onPostMessage:Lo/throwIfInMutationOperation;

    iput-boolean p3, p0, Lo/notifyItemRangeChanged;->ICustomTabsCallback:Z

    return-void
.end method

.method public static synthetic ICustomTabsCallback(Lo/notifyItemRangeChanged;ZLo/throwIfInMutationOperation;ZI)Lo/notifyItemRangeChanged;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lo/notifyItemRangeChanged;->onMessageChannelReady:Z

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    iget-object p2, p0, Lo/notifyItemRangeChanged;->onPostMessage:Lo/throwIfInMutationOperation;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lo/notifyItemRangeChanged;->ICustomTabsCallback:Z

    .line 1000
    :cond_2
    new-instance p0, Lo/notifyItemRangeChanged;

    invoke-direct {p0, p1, p2, p3}, Lo/notifyItemRangeChanged;-><init>(ZLo/throwIfInMutationOperation;Z)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/notifyItemRangeChanged;

    if-eqz v0, :cond_0

    check-cast p1, Lo/notifyItemRangeChanged;

    iget-boolean v0, p0, Lo/notifyItemRangeChanged;->onMessageChannelReady:Z

    iget-boolean v1, p1, Lo/notifyItemRangeChanged;->onMessageChannelReady:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/notifyItemRangeChanged;->onPostMessage:Lo/throwIfInMutationOperation;

    iget-object v1, p1, Lo/notifyItemRangeChanged;->onPostMessage:Lo/throwIfInMutationOperation;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/notifyItemRangeChanged;->ICustomTabsCallback:Z

    iget-boolean p1, p1, Lo/notifyItemRangeChanged;->ICustomTabsCallback:Z

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
    .locals 3

    iget-boolean v0, p0, Lo/notifyItemRangeChanged;->onMessageChannelReady:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/notifyItemRangeChanged;->onPostMessage:Lo/throwIfInMutationOperation;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lo/notifyItemRangeChanged;->ICustomTabsCallback:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FabState(isExpanded="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lo/notifyItemRangeChanged;->onMessageChannelReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nudge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/notifyItemRangeChanged;->onPostMessage:Lo/throwIfInMutationOperation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", show="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/notifyItemRangeChanged;->ICustomTabsCallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
