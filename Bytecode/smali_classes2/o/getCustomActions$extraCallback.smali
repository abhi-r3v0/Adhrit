.class final Lo/getCustomActions$extraCallback;
.super Lo/getCustomActions$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCustomActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/getCustomActions;


# direct methods
.method constructor <init>(Lo/getCustomActions;)V
    .locals 1

    .line 1288
    iput-object p1, p0, Lo/getCustomActions$extraCallback;->onNavigationEvent:Lo/getCustomActions;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/getCustomActions$onMessageChannelReady;-><init>(Lo/getCustomActions;B)V

    return-void
.end method


# virtual methods
.method public final asInterface()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onMessageChannelReady(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x2000

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1000

    if-ne p1, v1, :cond_1

    .line 2291
    :cond_0
    iget-object p1, p0, Lo/getCustomActions$extraCallback;->onNavigationEvent:Lo/getCustomActions;

    .line 2803
    iget-boolean p1, p1, Lo/getCustomActions;->asInterface:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    return v0

    .line 1299
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final onNavigationEvent(Lo/getPlaybackState;)V
    .locals 1

    .line 1307
    iget-object v0, p0, Lo/getCustomActions$extraCallback;->onNavigationEvent:Lo/getCustomActions;

    .line 3803
    iget-boolean v0, v0, Lo/getCustomActions;->asInterface:Z

    if-nez v0, :cond_0

    .line 1308
    sget-object v0, Lo/getPlaybackState$extraCallback;->newSession:Lo/getPlaybackState$extraCallback;

    invoke-virtual {p1, v0}, Lo/getPlaybackState;->extraCallback(Lo/getPlaybackState$extraCallback;)Z

    .line 1309
    sget-object v0, Lo/getPlaybackState$extraCallback;->warmup:Lo/getPlaybackState$extraCallback;

    invoke-virtual {p1, v0}, Lo/getPlaybackState;->extraCallback(Lo/getPlaybackState$extraCallback;)Z

    const/4 v0, 0x0

    .line 1310
    invoke-virtual {p1, v0}, Lo/getPlaybackState;->warmup(Z)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(I)Z
    .locals 1

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    .line 1291
    :cond_0
    iget-object p1, p0, Lo/getCustomActions$extraCallback;->onNavigationEvent:Lo/getCustomActions;

    .line 1803
    iget-boolean p1, p1, Lo/getCustomActions;->asInterface:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final onRelationshipValidationResult()Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "androidx.viewpager.widget.ViewPager"

    return-object v0
.end method
