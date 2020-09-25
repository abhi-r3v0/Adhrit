.class final Lo/makeOptionalFitsSystemWindows$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/makeOptionalFitsSystemWindows;

.field private synthetic onPostMessage:I


# direct methods
.method constructor <init>(Lo/makeOptionalFitsSystemWindows;I)V
    .locals 0

    .line 142
    iput-object p1, p0, Lo/makeOptionalFitsSystemWindows$2;->onMessageChannelReady:Lo/makeOptionalFitsSystemWindows;

    iput p2, p0, Lo/makeOptionalFitsSystemWindows$2;->onPostMessage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 145
    iget-object p1, p0, Lo/makeOptionalFitsSystemWindows$2;->onMessageChannelReady:Lo/makeOptionalFitsSystemWindows;

    invoke-static {p1}, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback(Lo/makeOptionalFitsSystemWindows;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/makeOptionalFitsSystemWindows$2;->onMessageChannelReady:Lo/makeOptionalFitsSystemWindows;

    invoke-static {p1}, Lo/makeOptionalFitsSystemWindows;->asBinder(Lo/makeOptionalFitsSystemWindows;)Lo/PlaybackStateCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/makeOptionalFitsSystemWindows$2;->onMessageChannelReady:Lo/makeOptionalFitsSystemWindows;

    invoke-static {p1}, Lo/makeOptionalFitsSystemWindows;->asBinder(Lo/makeOptionalFitsSystemWindows;)Lo/PlaybackStateCompat;

    move-result-object p1

    .line 1572
    iget-object p1, p1, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    if-eqz p1, :cond_0

    .line 145
    iget p1, p0, Lo/makeOptionalFitsSystemWindows$2;->onPostMessage:I

    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows$2;->onMessageChannelReady:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v0}, Lo/makeOptionalFitsSystemWindows;->asBinder(Lo/makeOptionalFitsSystemWindows;)Lo/PlaybackStateCompat;

    move-result-object v0

    .line 2572
    iget-object v0, v0, Lo/PlaybackStateCompat;->onNavigationEvent:Lo/toKeyCode;

    .line 146
    invoke-virtual {v0}, Lo/toKeyCode;->extraCallback()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 147
    iget-object p1, p0, Lo/makeOptionalFitsSystemWindows$2;->onMessageChannelReady:Lo/makeOptionalFitsSystemWindows;

    invoke-static {p1}, Lo/makeOptionalFitsSystemWindows;->asBinder(Lo/makeOptionalFitsSystemWindows;)Lo/PlaybackStateCompat;

    move-result-object p1

    iget v0, p0, Lo/makeOptionalFitsSystemWindows$2;->onPostMessage:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lo/PlaybackStateCompat;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method
