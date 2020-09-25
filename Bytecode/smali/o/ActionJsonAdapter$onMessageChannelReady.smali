.class final Lo/ActionJsonAdapter$onMessageChannelReady;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ActionJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/Action;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lo/Action;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    iput-object p2, p0, Lo/ActionJsonAdapter$onMessageChannelReady;->onMessageChannelReady:Lo/Action;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lo/ActionJsonAdapter$onMessageChannelReady;->onMessageChannelReady:Lo/Action;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lo/CampaignDatabase_Impl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lo/Action;->onMessageChannelReady(Lo/CampaignDatabase_Impl;)V

    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lo/ActionJsonAdapter$onMessageChannelReady;->onMessageChannelReady:Lo/Action;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lo/CampaignDatabase_Impl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, p1}, Lo/Action;->onMessageChannelReady(Lo/CampaignDatabase_Impl;I)V

    return-void
.end method
