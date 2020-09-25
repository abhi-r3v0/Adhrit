.class final Lo/shouldIncludeCompoundHash$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/shouldIncludeCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# instance fields
.field extraCallback:I

.field onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/splitNodeRunLength;",
            ">;"
        }
    .end annotation
.end field

.field onPostMessage:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/splitNodeRunLength;",
            ">;)V"
        }
    .end annotation

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    iput-object p1, p0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onNavigationEvent:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/net/SocketAddress;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 723
    :goto_0
    iget-object v2, p0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 724
    iget-object v2, p0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/splitNodeRunLength;

    .line 1090
    iget-object v2, v2, Lo/splitNodeRunLength;->onMessageChannelReady:Ljava/util/List;

    .line 725
    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 729
    iput v1, p0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->onPostMessage:I

    .line 730
    iput v2, p0, Lo/shouldIncludeCompoundHash$onNavigationEvent;->extraCallback:I

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
