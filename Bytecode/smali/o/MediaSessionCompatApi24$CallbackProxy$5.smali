.class final Lo/MediaSessionCompatApi24$CallbackProxy$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompatApi24$CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Landroid/widget/FrameLayout;

.field final synthetic onMessageChannelReady:Lo/ParcelableVolumeInfo;

.field final synthetic onPostMessage:Lo/MediaSessionCompatApi24$CallbackProxy;


# direct methods
.method constructor <init>(Lo/MediaSessionCompatApi24$CallbackProxy;Landroid/widget/FrameLayout;Lo/ParcelableVolumeInfo;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lo/MediaSessionCompatApi24$CallbackProxy$5;->onPostMessage:Lo/MediaSessionCompatApi24$CallbackProxy;

    iput-object p2, p0, Lo/MediaSessionCompatApi24$CallbackProxy$5;->extraCallback:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lo/MediaSessionCompatApi24$CallbackProxy$5;->onMessageChannelReady:Lo/ParcelableVolumeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 188
    iget-object p1, p0, Lo/MediaSessionCompatApi24$CallbackProxy$5;->extraCallback:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p0, Lo/MediaSessionCompatApi24$CallbackProxy$5;->extraCallback:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 190
    iget-object p1, p0, Lo/MediaSessionCompatApi24$CallbackProxy$5;->onPostMessage:Lo/MediaSessionCompatApi24$CallbackProxy;

    iget-object p2, p0, Lo/MediaSessionCompatApi24$CallbackProxy$5;->onMessageChannelReady:Lo/ParcelableVolumeInfo;

    invoke-virtual {p1, p2}, Lo/MediaSessionCompatApi24$CallbackProxy;->onMessageChannelReady(Lo/ParcelableVolumeInfo;)V

    :cond_0
    return-void
.end method
