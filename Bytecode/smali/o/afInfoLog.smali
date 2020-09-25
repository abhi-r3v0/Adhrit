.class public Lo/afInfoLog;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public extraCallback:I

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:Z

.field public final onPostMessage:Ljava/util/Queue;


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    if-ltz p2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    if-ltz p3, :cond_2

    goto :goto_2

    :cond_2
    const/4 p4, 0x0

    :goto_2
    if-eqz p4, :cond_3

    .line 65
    iput p1, p0, Lo/afInfoLog;->ICustomTabsCallback:I

    .line 66
    iput p2, p0, Lo/afInfoLog;->onMessageChannelReady:I

    .line 67
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lo/afInfoLog;->onPostMessage:Ljava/util/Queue;

    .line 68
    iput p3, p0, Lo/afInfoLog;->extraCallback:I

    .line 70
    iput-boolean v0, p0, Lo/afInfoLog;->onNavigationEvent:Z

    return-void

    .line 3162
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 2162
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1162
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method


# virtual methods
.method public ICustomTabsCallback()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lo/afInfoLog;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostMessage(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lo/afInfoLog;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
