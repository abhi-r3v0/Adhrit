.class public final Lo/ActivityChooserModel$OnChooseActivityListener;
.super Landroidx/databinding/ViewDataBinding$5;
.source ""


# instance fields
.field private onPostMessage:Z


# direct methods
.method public constructor <init>(Lo/onChooseActivity;Z)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroidx/databinding/ViewDataBinding$5;-><init>(Lo/onChooseActivity;)V

    .line 16
    iput-boolean p2, p0, Lo/ActivityChooserModel$OnChooseActivityListener;->onPostMessage:Z

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/ActivityChooserView;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActivityChooserView;",
            "Ljava/util/List<",
            "Landroidx/databinding/ViewDataBinding$4;",
            ">;)V"
        }
    .end annotation

    .line 23
    iget-boolean v0, p0, Lo/ActivityChooserModel$OnChooseActivityListener;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 1107
    iget-boolean v0, p1, Lo/ActivityChooserView;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/databinding/ViewDataBinding$5;->onMessageChannelReady(Lo/ActivityChooserView;Ljava/util/List;)V

    return-void
.end method
