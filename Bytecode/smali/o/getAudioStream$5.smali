.class final Lo/getAudioStream$5;
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
.field final synthetic ICustomTabsCallback:Ljava/lang/Object;

.field final synthetic ICustomTabsCallback$Stub:Ljava/lang/Object;

.field final synthetic asInterface:Ljava/util/ArrayList;

.field final synthetic extraCallback:Ljava/util/ArrayList;

.field final synthetic onMessageChannelReady:Landroidx/fragment/app/Fragment;

.field final synthetic onNavigationEvent:Lo/getVolumeControl;

.field final synthetic onPostMessage:Landroid/view/View;

.field final synthetic onTransact:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lo/getVolumeControl;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lo/getAudioStream$5;->ICustomTabsCallback:Ljava/lang/Object;

    iput-object p2, p0, Lo/getAudioStream$5;->onNavigationEvent:Lo/getVolumeControl;

    iput-object p3, p0, Lo/getAudioStream$5;->onPostMessage:Landroid/view/View;

    iput-object p4, p0, Lo/getAudioStream$5;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    iput-object p5, p0, Lo/getAudioStream$5;->extraCallback:Ljava/util/ArrayList;

    iput-object p6, p0, Lo/getAudioStream$5;->onTransact:Ljava/util/ArrayList;

    iput-object p7, p0, Lo/getAudioStream$5;->asInterface:Ljava/util/ArrayList;

    iput-object p8, p0, Lo/getAudioStream$5;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 453
    iget-object v0, p0, Lo/getAudioStream$5;->ICustomTabsCallback:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 454
    iget-object v1, p0, Lo/getAudioStream$5;->onNavigationEvent:Lo/getVolumeControl;

    iget-object v2, p0, Lo/getAudioStream$5;->onPostMessage:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Lo/getVolumeControl;->onMessageChannelReady(Ljava/lang/Object;Landroid/view/View;)V

    .line 456
    iget-object v0, p0, Lo/getAudioStream$5;->onNavigationEvent:Lo/getVolumeControl;

    iget-object v1, p0, Lo/getAudioStream$5;->ICustomTabsCallback:Ljava/lang/Object;

    iget-object v2, p0, Lo/getAudioStream$5;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    iget-object v3, p0, Lo/getAudioStream$5;->extraCallback:Ljava/util/ArrayList;

    iget-object v4, p0, Lo/getAudioStream$5;->onPostMessage:Landroid/view/View;

    invoke-static {v0, v1, v2, v3, v4}, Lo/getAudioStream;->onMessageChannelReady(Lo/getVolumeControl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lo/getAudioStream$5;->onTransact:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 461
    :cond_0
    iget-object v0, p0, Lo/getAudioStream$5;->asInterface:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lo/getAudioStream$5;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    iget-object v1, p0, Lo/getAudioStream$5;->onPostMessage:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v1, p0, Lo/getAudioStream$5;->onNavigationEvent:Lo/getVolumeControl;

    iget-object v2, p0, Lo/getAudioStream$5;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    iget-object v3, p0, Lo/getAudioStream$5;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v0}, Lo/getVolumeControl;->onNavigationEvent(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 468
    :cond_1
    iget-object v0, p0, Lo/getAudioStream$5;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 469
    iget-object v0, p0, Lo/getAudioStream$5;->asInterface:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/getAudioStream$5;->onPostMessage:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
