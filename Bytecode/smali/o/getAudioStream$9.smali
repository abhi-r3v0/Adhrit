.class final Lo/getAudioStream$9;
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
.field final synthetic ICustomTabsCallback:Lo/postOrRun;

.field final synthetic ICustomTabsCallback$Stub:Ljava/util/ArrayList;

.field final synthetic asBinder:Landroid/view/View;

.field final synthetic asInterface:Z

.field final synthetic extraCallback:Ljava/util/ArrayList;

.field final synthetic newSession:Ljava/lang/Object;

.field final synthetic onMessageChannelReady:Ljava/lang/Object;

.field final synthetic onNavigationEvent:Lo/getAudioStream$extraCallback;

.field final synthetic onPostMessage:Lo/getVolumeControl;

.field final synthetic onRelationshipValidationResult:Landroidx/fragment/app/Fragment;

.field final synthetic onTransact:Landroidx/fragment/app/Fragment;

.field final synthetic warmup:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lo/getVolumeControl;Lo/postOrRun;Ljava/lang/Object;Lo/getAudioStream$extraCallback;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lo/getAudioStream$9;->onPostMessage:Lo/getVolumeControl;

    iput-object p2, p0, Lo/getAudioStream$9;->ICustomTabsCallback:Lo/postOrRun;

    iput-object p3, p0, Lo/getAudioStream$9;->onMessageChannelReady:Ljava/lang/Object;

    iput-object p4, p0, Lo/getAudioStream$9;->onNavigationEvent:Lo/getAudioStream$extraCallback;

    iput-object p5, p0, Lo/getAudioStream$9;->extraCallback:Ljava/util/ArrayList;

    iput-object p6, p0, Lo/getAudioStream$9;->asBinder:Landroid/view/View;

    iput-object p7, p0, Lo/getAudioStream$9;->onTransact:Landroidx/fragment/app/Fragment;

    iput-object p8, p0, Lo/getAudioStream$9;->onRelationshipValidationResult:Landroidx/fragment/app/Fragment;

    iput-boolean p9, p0, Lo/getAudioStream$9;->asInterface:Z

    iput-object p10, p0, Lo/getAudioStream$9;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    iput-object p11, p0, Lo/getAudioStream$9;->newSession:Ljava/lang/Object;

    iput-object p12, p0, Lo/getAudioStream$9;->warmup:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 795
    iget-object v0, p0, Lo/getAudioStream$9;->onPostMessage:Lo/getVolumeControl;

    iget-object v1, p0, Lo/getAudioStream$9;->ICustomTabsCallback:Lo/postOrRun;

    iget-object v2, p0, Lo/getAudioStream$9;->onMessageChannelReady:Ljava/lang/Object;

    iget-object v3, p0, Lo/getAudioStream$9;->onNavigationEvent:Lo/getAudioStream$extraCallback;

    invoke-static {v0, v1, v2, v3}, Lo/getAudioStream;->onNavigationEvent(Lo/getVolumeControl;Lo/postOrRun;Ljava/lang/Object;Lo/getAudioStream$extraCallback;)Lo/postOrRun;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 799
    iget-object v1, p0, Lo/getAudioStream$9;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lo/postOrRun;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 800
    iget-object v1, p0, Lo/getAudioStream$9;->extraCallback:Ljava/util/ArrayList;

    iget-object v2, p0, Lo/getAudioStream$9;->asBinder:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 803
    :cond_0
    iget-object v1, p0, Lo/getAudioStream$9;->onTransact:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lo/getAudioStream$9;->onRelationshipValidationResult:Landroidx/fragment/app/Fragment;

    iget-boolean v3, p0, Lo/getAudioStream$9;->asInterface:Z

    invoke-static {v1, v2, v3, v0}, Lo/getAudioStream;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLo/postOrRun;)V

    .line 805
    iget-object v1, p0, Lo/getAudioStream$9;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 806
    iget-object v2, p0, Lo/getAudioStream$9;->onPostMessage:Lo/getVolumeControl;

    iget-object v3, p0, Lo/getAudioStream$9;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    iget-object v4, p0, Lo/getAudioStream$9;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3, v4}, Lo/getVolumeControl;->onMessageChannelReady(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 810
    iget-object v1, p0, Lo/getAudioStream$9;->onNavigationEvent:Lo/getAudioStream$extraCallback;

    iget-object v2, p0, Lo/getAudioStream$9;->newSession:Ljava/lang/Object;

    iget-boolean v3, p0, Lo/getAudioStream$9;->asInterface:Z

    invoke-static {v0, v1, v2, v3}, Lo/getAudioStream;->onMessageChannelReady(Lo/postOrRun;Lo/getAudioStream$extraCallback;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 813
    iget-object v1, p0, Lo/getAudioStream$9;->onPostMessage:Lo/getVolumeControl;

    iget-object v2, p0, Lo/getAudioStream$9;->warmup:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lo/getVolumeControl;->onMessageChannelReady(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
