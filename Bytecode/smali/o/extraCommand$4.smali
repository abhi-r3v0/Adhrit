.class final Lo/extraCommand$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/populateSessionApplicationData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/extraCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/extraCommand;


# direct methods
.method constructor <init>(Lo/extraCommand;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lo/extraCommand$4;->onMessageChannelReady:Lo/extraCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 1

    .line 164
    iget-object v0, p0, Lo/extraCommand$4;->onMessageChannelReady:Lo/extraCommand;

    iget-object v0, v0, Lo/extraCommand;->onPostMessage:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 165
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
