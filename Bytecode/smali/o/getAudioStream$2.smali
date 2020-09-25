.class final Lo/getAudioStream$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAudioStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroidx/fragment/app/Fragment;

.field final synthetic ICustomTabsCallback$Stub:Landroid/graphics/Rect;

.field final synthetic asInterface:Lo/getVolumeControl;

.field final synthetic extraCallback:Lo/postOrRun;

.field final synthetic onMessageChannelReady:Z

.field final synthetic onNavigationEvent:Landroid/view/View;

.field final synthetic onPostMessage:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLo/postOrRun;Landroid/view/View;Lo/getVolumeControl;Landroid/graphics/Rect;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lo/getAudioStream$2;->onPostMessage:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lo/getAudioStream$2;->ICustomTabsCallback:Landroidx/fragment/app/Fragment;

    iput-boolean p3, p0, Lo/getAudioStream$2;->onMessageChannelReady:Z

    iput-object p4, p0, Lo/getAudioStream$2;->extraCallback:Lo/postOrRun;

    iput-object p5, p0, Lo/getAudioStream$2;->onNavigationEvent:Landroid/view/View;

    iput-object p6, p0, Lo/getAudioStream$2;->asInterface:Lo/getVolumeControl;

    iput-object p7, p0, Lo/getAudioStream$2;->ICustomTabsCallback$Stub:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 683
    iget-object v0, p0, Lo/getAudioStream$2;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lo/getAudioStream$2;->ICustomTabsCallback:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Lo/getAudioStream$2;->onMessageChannelReady:Z

    iget-object v3, p0, Lo/getAudioStream$2;->extraCallback:Lo/postOrRun;

    invoke-static {v0, v1, v2, v3}, Lo/getAudioStream;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLo/postOrRun;)V

    .line 685
    iget-object v0, p0, Lo/getAudioStream$2;->onNavigationEvent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 686
    iget-object v1, p0, Lo/getAudioStream$2;->asInterface:Lo/getVolumeControl;

    iget-object v2, p0, Lo/getAudioStream$2;->ICustomTabsCallback$Stub:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lo/getVolumeControl;->onMessageChannelReady(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
