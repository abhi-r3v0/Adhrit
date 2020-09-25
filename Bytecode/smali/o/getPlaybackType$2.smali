.class Lo/getPlaybackType$2;
.super Landroid/transition/Transition$EpicenterCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getPlaybackType;->onNavigationEvent(Ljava/lang/Object;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/getPlaybackType;

.field final synthetic onPostMessage:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lo/getPlaybackType;Landroid/graphics/Rect;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lo/getPlaybackType$2;->onMessageChannelReady:Lo/getPlaybackType;

    iput-object p2, p0, Lo/getPlaybackType$2;->onPostMessage:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 0

    .line 86
    iget-object p1, p0, Lo/getPlaybackType$2;->onPostMessage:Landroid/graphics/Rect;

    return-object p1
.end method
