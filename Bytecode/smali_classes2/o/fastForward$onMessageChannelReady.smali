.class final Lo/fastForward$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fastForward;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/fastForward$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fastForward$extraCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Landroid/graphics/Rect;

.field private final onNavigationEvent:Landroid/graphics/Rect;

.field private final onPostMessage:Z


# direct methods
.method constructor <init>(ZLo/fastForward$extraCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lo/fastForward$extraCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/fastForward$onMessageChannelReady;->onMessageChannelReady:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/fastForward$onMessageChannelReady;->onNavigationEvent:Landroid/graphics/Rect;

    .line 102
    iput-boolean p1, p0, Lo/fastForward$onMessageChannelReady;->onPostMessage:Z

    .line 103
    iput-object p2, p0, Lo/fastForward$onMessageChannelReady;->extraCallback:Lo/fastForward$extraCallback;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lo/fastForward$onMessageChannelReady;->onMessageChannelReady:Landroid/graphics/Rect;

    .line 109
    iget-object v1, p0, Lo/fastForward$onMessageChannelReady;->onNavigationEvent:Landroid/graphics/Rect;

    .line 111
    iget-object v2, p0, Lo/fastForward$onMessageChannelReady;->extraCallback:Lo/fastForward$extraCallback;

    invoke-interface {v2, p1, v0}, Lo/fastForward$extraCallback;->extraCallback(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 112
    iget-object p1, p0, Lo/fastForward$onMessageChannelReady;->extraCallback:Lo/fastForward$extraCallback;

    invoke-interface {p1, p2, v1}, Lo/fastForward$extraCallback;->extraCallback(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 114
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget p2, v1, Landroid/graphics/Rect;->top:I

    const/4 v2, -0x1

    if-ge p1, p2, :cond_0

    return v2

    .line 116
    :cond_0
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget p2, v1, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x1

    if-le p1, p2, :cond_1

    return v3

    .line 118
    :cond_1
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v1, Landroid/graphics/Rect;->left:I

    if-ge p1, p2, :cond_3

    .line 119
    iget-boolean p1, p0, Lo/fastForward$onMessageChannelReady;->onPostMessage:Z

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v2

    .line 120
    :cond_3
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v1, Landroid/graphics/Rect;->left:I

    if-le p1, p2, :cond_5

    .line 121
    iget-boolean p1, p0, Lo/fastForward$onMessageChannelReady;->onPostMessage:Z

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v3

    .line 122
    :cond_5
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    if-ge p1, p2, :cond_6

    return v2

    .line 124
    :cond_6
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    if-le p1, p2, :cond_7

    return v3

    .line 126
    :cond_7
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget p2, v1, Landroid/graphics/Rect;->right:I

    if-ge p1, p2, :cond_9

    .line 127
    iget-boolean p1, p0, Lo/fastForward$onMessageChannelReady;->onPostMessage:Z

    if-eqz p1, :cond_8

    return v3

    :cond_8
    return v2

    .line 128
    :cond_9
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget p2, v1, Landroid/graphics/Rect;->right:I

    if-le p1, p2, :cond_b

    .line 129
    iget-boolean p1, p0, Lo/fastForward$onMessageChannelReady;->onPostMessage:Z

    if-eqz p1, :cond_a

    return v2

    :cond_a
    return v3

    :cond_b
    const/4 p1, 0x0

    return p1
.end method
