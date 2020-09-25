.class Lo/getDefaultImpl$3;
.super Lo/getTag;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getDefaultImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private extraCallback:Z

.field final synthetic onMessageChannelReady:Lo/getDefaultImpl;

.field private onNavigationEvent:I


# direct methods
.method constructor <init>(Lo/getDefaultImpl;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lo/getDefaultImpl$3;->onMessageChannelReady:Lo/getDefaultImpl;

    invoke-direct {p0}, Lo/getTag;-><init>()V

    const/4 p1, 0x0

    .line 122
    iput-boolean p1, p0, Lo/getDefaultImpl$3;->extraCallback:Z

    .line 123
    iput p1, p0, Lo/getDefaultImpl$3;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Lo/getDefaultImpl$3;->onNavigationEvent:I

    .line 138
    iput-boolean v0, p0, Lo/getDefaultImpl$3;->extraCallback:Z

    .line 139
    iget-object v0, p0, Lo/getDefaultImpl$3;->onMessageChannelReady:Lo/getDefaultImpl;

    invoke-virtual {v0}, Lo/getDefaultImpl;->onPostMessage()V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 144
    iget p1, p0, Lo/getDefaultImpl$3;->onNavigationEvent:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/getDefaultImpl$3;->onNavigationEvent:I

    iget-object v0, p0, Lo/getDefaultImpl$3;->onMessageChannelReady:Lo/getDefaultImpl;

    iget-object v0, v0, Lo/getDefaultImpl;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 145
    iget-object p1, p0, Lo/getDefaultImpl$3;->onMessageChannelReady:Lo/getDefaultImpl;

    iget-object p1, p1, Lo/getDefaultImpl;->onPostMessage:Lo/setVolumeTo;

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lo/getDefaultImpl$3;->onMessageChannelReady:Lo/getDefaultImpl;

    iget-object p1, p1, Lo/getDefaultImpl;->onPostMessage:Lo/setVolumeTo;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lo/setVolumeTo;->onAnimationEnd(Landroid/view/View;)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lo/getDefaultImpl$3;->ICustomTabsCallback()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 127
    iget-boolean p1, p0, Lo/getDefaultImpl$3;->extraCallback:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p0, Lo/getDefaultImpl$3;->extraCallback:Z

    .line 131
    iget-object p1, p0, Lo/getDefaultImpl$3;->onMessageChannelReady:Lo/getDefaultImpl;

    iget-object p1, p1, Lo/getDefaultImpl;->onPostMessage:Lo/setVolumeTo;

    if-eqz p1, :cond_1

    .line 132
    iget-object p1, p0, Lo/getDefaultImpl$3;->onMessageChannelReady:Lo/getDefaultImpl;

    iget-object p1, p1, Lo/getDefaultImpl;->onPostMessage:Lo/setVolumeTo;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lo/setVolumeTo;->onAnimationStart(Landroid/view/View;)V

    :cond_1
    return-void
.end method
