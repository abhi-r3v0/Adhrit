.class Lo/getPlaybackType$4;
.super Landroid/transition/Transition$EpicenterCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getPlaybackType;->extraCallback(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/getPlaybackType;

.field final synthetic onPostMessage:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lo/getPlaybackType;Landroid/graphics/Rect;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lo/getPlaybackType$4;->extraCallback:Lo/getPlaybackType;

    iput-object p2, p0, Lo/getPlaybackType$4;->onPostMessage:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 0

    .line 352
    iget-object p1, p0, Lo/getPlaybackType$4;->onPostMessage:Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    iget-object p1, p0, Lo/getPlaybackType$4;->onPostMessage:Landroid/graphics/Rect;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
