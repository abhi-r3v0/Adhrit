.class public final Lo/setMinTimeBetweenSessions;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDeviceTrackingDisabled;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setMinTimeBetweenSessions$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setDeviceTrackingDisabled<",
        "Lo/getCardBackgroundColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:[Lo/setHost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lo/setHost<",
            "Lo/getCardBackgroundColor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lo/setHost;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lo/setHost<",
            "Lo/getCardBackgroundColor;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 28
    check-cast p1, [Lo/setHost;

    iput-object p1, p0, Lo/setMinTimeBetweenSessions;->onMessageChannelReady:[Lo/setHost;

    .line 29
    array-length p1, p1

    if-gtz p1, :cond_1

    .line 1313
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    if-gez p1, :cond_0

    .line 1322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "negative size: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "index"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    .line 1324
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%s (%s) must be less than size (%s)"

    invoke-static {p1, v1}, Lo/extraCallback$extraCallback;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1313
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 1215
    throw p1
.end method

.method private onPostMessage(ILo/ǃ;)I
    .locals 2

    .line 105
    :goto_0
    iget-object v0, p0, Lo/setMinTimeBetweenSessions;->onMessageChannelReady:[Lo/setHost;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 106
    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Lo/setHost;->onNavigationEvent(Lo/ǃ;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public final extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getCardBackgroundColor;",
            ">;",
            "Lo/setPreinstallAttribution;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-interface {p2}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v0

    .line 2166
    iget-object v0, v0, Lo/getHostPrefix;->asBinder:Lo/ǃ;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 35
    invoke-interface {p1, v2, v1}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0, p1, p2}, Lo/setMinTimeBetweenSessions;->onNavigationEvent(ILo/waitForCustomerUserId;Lo/setPreinstallAttribution;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 39
    invoke-interface {p1, v2, v1}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    :cond_1
    return-void
.end method

.method final onNavigationEvent(ILo/waitForCustomerUserId;Lo/setPreinstallAttribution;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/waitForCustomerUserId<",
            "Lo/getCardBackgroundColor;",
            ">;",
            "Lo/setPreinstallAttribution;",
            ")Z"
        }
    .end annotation

    .line 93
    invoke-interface {p3}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v0

    .line 3166
    iget-object v0, v0, Lo/getHostPrefix;->asBinder:Lo/ǃ;

    .line 93
    invoke-direct {p0, p1, v0}, Lo/setMinTimeBetweenSessions;->onPostMessage(ILo/ǃ;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 99
    :cond_0
    iget-object v0, p0, Lo/setMinTimeBetweenSessions;->onMessageChannelReady:[Lo/setHost;

    aget-object v0, v0, p1

    new-instance v1, Lo/setMinTimeBetweenSessions$onPostMessage;

    invoke-direct {v1, p0, p2, p3, p1}, Lo/setMinTimeBetweenSessions$onPostMessage;-><init>(Lo/setMinTimeBetweenSessions;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;I)V

    invoke-interface {v0, v1, p3}, Lo/setHost;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V

    const/4 p1, 0x1

    return p1
.end method
