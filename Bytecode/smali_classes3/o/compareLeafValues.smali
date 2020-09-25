.class public final Lo/compareLeafValues;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final onMessageChannelReady:Ljava/lang/Object;


# instance fields
.field public final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/compareLeafValues;->onMessageChannelReady:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    const/4 v1, 0x0

    .line 1053
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    iget-object v0, p0, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    .line 63
    :goto_0
    iget-object v1, p0, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 64
    iget-object v1, p0, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final onPostMessage(ILjava/lang/Object;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 47
    iget-object v0, p0, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 49
    :cond_0
    iget-object v0, p0, Lo/compareLeafValues;->onPostMessage:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method
