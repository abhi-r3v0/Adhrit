.class final Lo/access$602;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setReplacementStr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setReplacementStr<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/setVariant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setVariant<",
            "*>;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/access$502;

.field private final onMessageChannelReady:Lo/getContentType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getContentType<",
            "**>;"
        }
    .end annotation
.end field

.field private final onPostMessage:Z


# direct methods
.method private constructor <init>(Lo/getContentType;Lo/setVariant;Lo/access$502;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getContentType<",
            "**>;",
            "Lo/setVariant<",
            "*>;",
            "Lo/access$502;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/access$602;->onMessageChannelReady:Lo/getContentType;

    .line 3
    invoke-virtual {p2, p3}, Lo/setVariant;->onMessageChannelReady(Lo/access$502;)Z

    move-result p1

    iput-boolean p1, p0, Lo/access$602;->onPostMessage:Z

    .line 4
    iput-object p2, p0, Lo/access$602;->ICustomTabsCallback:Lo/setVariant;

    .line 5
    iput-object p3, p0, Lo/access$602;->extraCallback:Lo/access$502;

    return-void
.end method

.method static onPostMessage(Lo/getContentType;Lo/setVariant;Lo/access$502;)Lo/access$602;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/getContentType<",
            "**>;",
            "Lo/setVariant<",
            "*>;",
            "Lo/access$502;",
            ")",
            "Lo/access$602<",
            "TT;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Lo/access$602;

    invoke-direct {v0, p0, p1, p2}, Lo/access$602;-><init>(Lo/getContentType;Lo/setVariant;Lo/access$502;)V

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lo/access$602;->onMessageChannelReady:Lo/getContentType;

    invoke-virtual {v0, p1}, Lo/getContentType;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lo/access$602;->onMessageChannelReady:Lo/getContentType;

    invoke-virtual {v1, p2}, Lo/getContentType;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 13
    :cond_0
    iget-boolean v0, p0, Lo/access$602;->onPostMessage:Z

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lo/access$602;->ICustomTabsCallback:Lo/setVariant;

    invoke-virtual {v0, p1}, Lo/setVariant;->onNavigationEvent(Ljava/lang/Object;)Lo/setDisplayCode;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lo/access$602;->ICustomTabsCallback:Lo/setVariant;

    invoke-virtual {v0, p2}, Lo/setVariant;->onNavigationEvent(Ljava/lang/Object;)Lo/setDisplayCode;

    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Lo/setDisplayCode;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final extraCallback(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lo/access$602;->onMessageChannelReady:Lo/getContentType;

    invoke-virtual {v0, p1}, Lo/getContentType;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 19
    iget-boolean v1, p0, Lo/access$602;->onPostMessage:Z

    if-eqz v1, :cond_0

    .line 20
    iget-object v1, p0, Lo/access$602;->ICustomTabsCallback:Lo/setVariant;

    invoke-virtual {v1, p1}, Lo/setVariant;->onNavigationEvent(Ljava/lang/Object;)Lo/setDisplayCode;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 21
    invoke-virtual {p1}, Lo/setDisplayCode;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lo/access$602;->onMessageChannelReady:Lo/getContentType;

    invoke-static {v0, p1, p2}, Lo/MessageMask;->onNavigationEvent(Lo/getContentType;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    iget-boolean v0, p0, Lo/access$602;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lo/access$602;->ICustomTabsCallback:Lo/setVariant;

    invoke-static {v0, p1, p2}, Lo/MessageMask;->onPostMessage(Lo/setVariant;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lo/access$602;->onMessageChannelReady:Lo/getContentType;

    .line 100
    invoke-virtual {v0, p1}, Lo/getContentType;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lo/getContentType;->extraCallback(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 103
    iget-boolean v1, p0, Lo/access$602;->onPostMessage:Z

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lo/access$602;->ICustomTabsCallback:Lo/setVariant;

    invoke-virtual {v1, p1}, Lo/setVariant;->onNavigationEvent(Ljava/lang/Object;)Lo/setDisplayCode;

    move-result-object p1

    invoke-virtual {p1}, Lo/setDisplayCode;->asInterface()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lo/access$602;->onMessageChannelReady:Lo/getContentType;

    invoke-virtual {v0, p1}, Lo/getContentType;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lo/access$602;->ICustomTabsCallback:Lo/setVariant;

    invoke-virtual {v0, p1}, Lo/setVariant;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/Object;Lo/setLaunchDeeplinkFromNotification;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/setLaunchDeeplinkFromNotification;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lo/access$602;->ICustomTabsCallback:Lo/setVariant;

    invoke-virtual {v0, p1}, Lo/setVariant;->onNavigationEvent(Ljava/lang/Object;)Lo/setDisplayCode;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lo/setDisplayCode;->onMessageChannelReady()Ljava/util/Iterator;

    move-result-object v0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setDisplayName;

    .line 32
    invoke-interface {v2}, Lo/setDisplayName;->onNavigationEvent()Lo/getJwtIdToken;

    move-result-object v3

    sget-object v4, Lo/getJwtIdToken;->asInterface:Lo/getJwtIdToken;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lo/setDisplayName;->extraCallback()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lo/setDisplayName;->onPostMessage()Z

    move-result v3

    if-nez v3, :cond_1

    .line 34
    instance-of v3, v1, Lo/MarketingMessageStatus$Builder;

    if-eqz v3, :cond_0

    .line 36
    invoke-interface {v2}, Lo/setDisplayName;->onMessageChannelReady()I

    move-result v2

    check-cast v1, Lo/MarketingMessageStatus$Builder;

    invoke-virtual {v1}, Lo/MarketingMessageStatus$Builder;->extraCallback()Lo/seen;

    move-result-object v1

    invoke-virtual {v1}, Lo/delivered;->onPostMessage()Lo/setMandatory;

    move-result-object v1

    .line 37
    invoke-interface {p2, v2, v1}, Lo/setLaunchDeeplinkFromNotification;->onNavigationEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-interface {v2}, Lo/setDisplayName;->onMessageChannelReady()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lo/setLaunchDeeplinkFromNotification;->onNavigationEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_2
    iget-object v0, p0, Lo/access$602;->onMessageChannelReady:Lo/getContentType;

    .line 41
    invoke-virtual {v0, p1}, Lo/getContentType;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lo/getContentType;->onPostMessage(Ljava/lang/Object;Lo/setLaunchDeeplinkFromNotification;)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lo/access$602;->ICustomTabsCallback:Lo/setVariant;

    invoke-virtual {v0, p1}, Lo/setVariant;->onNavigationEvent(Ljava/lang/Object;)Lo/setDisplayCode;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Lo/setDisplayCode;->asBinder()Z

    move-result p1

    return p1
.end method
