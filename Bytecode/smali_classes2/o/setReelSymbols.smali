.class public final Lo/setReelSymbols;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method public static varargs onNavigationEvent(Lo/setCanReverse;Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;[Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lo/setCanReverse;->onMessageChannelReady(Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;[Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onPostMessage(Lo/setCanReverse;)Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lo/setCanReverse;->onNavigationEvent()Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    move-result-object p0

    return-object p0
.end method
