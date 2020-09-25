.class public final Lo/hasExpandedActionView;
.super Lo/setAnimationStyle;
.source ""

# interfaces
.implements Lo/DecorToolbar;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setAnimationStyle<",
        "Lo/AppCompatImageHelper;",
        "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
        "*>;>;",
        "Lo/DecorToolbar;"
    }
.end annotation


# instance fields
.field private extraCallback:Lo/DecorToolbar$extraCallback;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lo/setAnimationStyle;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 4

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lo/setAnimationStyle;->onNavigationEvent()V

    return-void

    :cond_0
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    .line 56
    :cond_1
    invoke-virtual {p0}, Lo/setAnimationStyle;->ICustomTabsCallback()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lo/hasExpandedActionView;->extraCallback(J)V

    :cond_2
    return-void
.end method

.method public final ICustomTabsCallback(Lo/DecorToolbar$extraCallback;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lo/hasExpandedActionView;->extraCallback:Lo/DecorToolbar$extraCallback;

    return-void
.end method

.method public final bridge synthetic extraCallback(Lo/AppCompatImageHelper;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .locals 0

    .line 11
    invoke-super {p0, p1}, Lo/setAnimationStyle;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    return-object p1
.end method

.method public final synthetic extraCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    .line 1030
    iget-object p1, p0, Lo/hasExpandedActionView;->extraCallback:Lo/DecorToolbar$extraCallback;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1031
    invoke-interface {p1, p2}, Lo/DecorToolbar$extraCallback;->onPostMessage(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;)V

    :cond_0
    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1038
    invoke-super {p0, p1}, Lo/setAnimationStyle;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 1040
    :cond_0
    invoke-interface {p1}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onNavigationEvent()I

    move-result p1

    return p1
.end method

.method public final synthetic onMessageChannelReady(Lo/AppCompatImageHelper;Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .locals 0

    .line 11
    invoke-super {p0, p1, p2}, Lo/setAnimationStyle;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    return-object p1
.end method
