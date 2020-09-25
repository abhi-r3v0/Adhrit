.class public final Lo/RefundAccount$$Parcelable;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lo/setCustomAmount$onPostMessage;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/setCustomAmount$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final extraCallback:Z

.field private final onMessageChannelReady:I

.field public final onNavigationEvent:Lo/setCustomAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount<",
            "TO;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/setCustomAmount;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCustomAmount<",
            "TO;>;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lo/RefundAccount$$Parcelable;->extraCallback:Z

    .line 9
    iput-object p1, p0, Lo/RefundAccount$$Parcelable;->onNavigationEvent:Lo/setCustomAmount;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lo/RefundAccount$$Parcelable;->ICustomTabsCallback:Lo/setCustomAmount$onPostMessage;

    .line 11
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lo/RefundAccount$$Parcelable;->onMessageChannelReady:I

    return-void
.end method

.method private constructor <init>(Lo/setCustomAmount;Lo/setCustomAmount$onPostMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCustomAmount<",
            "TO;>;TO;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lo/RefundAccount$$Parcelable;->extraCallback:Z

    .line 3
    iput-object p1, p0, Lo/RefundAccount$$Parcelable;->onNavigationEvent:Lo/setCustomAmount;

    .line 4
    iput-object p2, p0, Lo/RefundAccount$$Parcelable;->ICustomTabsCallback:Lo/setCustomAmount$onPostMessage;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 1002
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    .line 5
    iput p1, p0, Lo/RefundAccount$$Parcelable;->onMessageChannelReady:I

    return-void
.end method

.method public static ICustomTabsCallback(Lo/setCustomAmount;Lo/setCustomAmount$onPostMessage;)Lo/RefundAccount$$Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lo/setCustomAmount$onPostMessage;",
            ">(",
            "Lo/setCustomAmount<",
            "TO;>;TO;)",
            "Lo/RefundAccount$$Parcelable<",
            "TO;>;"
        }
    .end annotation

    .line 13
    new-instance v0, Lo/RefundAccount$$Parcelable;

    invoke-direct {v0, p0, p1}, Lo/RefundAccount$$Parcelable;-><init>(Lo/setCustomAmount;Lo/setCustomAmount$onPostMessage;)V

    return-object v0
.end method

.method public static onPostMessage(Lo/setCustomAmount;)Lo/RefundAccount$$Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lo/setCustomAmount$onPostMessage;",
            ">(",
            "Lo/setCustomAmount<",
            "TO;>;)",
            "Lo/RefundAccount$$Parcelable<",
            "TO;>;"
        }
    .end annotation

    .line 14
    new-instance v0, Lo/RefundAccount$$Parcelable;

    invoke-direct {v0, p0}, Lo/RefundAccount$$Parcelable;-><init>(Lo/setCustomAmount;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 21
    :cond_0
    instance-of v1, p1, Lo/RefundAccount$$Parcelable;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 23
    :cond_1
    check-cast p1, Lo/RefundAccount$$Parcelable;

    .line 24
    iget-boolean v1, p0, Lo/RefundAccount$$Parcelable;->extraCallback:Z

    if-nez v1, :cond_6

    iget-boolean v1, p1, Lo/RefundAccount$$Parcelable;->extraCallback:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lo/RefundAccount$$Parcelable;->onNavigationEvent:Lo/setCustomAmount;

    iget-object v3, p1, Lo/RefundAccount$$Parcelable;->onNavigationEvent:Lo/setCustomAmount;

    if-eq v1, v3, :cond_3

    if-eqz v1, :cond_2

    .line 2001
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_6

    .line 25
    iget-object v1, p0, Lo/RefundAccount$$Parcelable;->ICustomTabsCallback:Lo/setCustomAmount$onPostMessage;

    iget-object p1, p1, Lo/RefundAccount$$Parcelable;->ICustomTabsCallback:Lo/setCustomAmount$onPostMessage;

    if-eq v1, p1, :cond_5

    if-eqz v1, :cond_4

    .line 3001
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_6

    return v0

    :cond_6
    return v2
.end method

.method public final hashCode()I
    .locals 1

    .line 18
    iget v0, p0, Lo/RefundAccount$$Parcelable;->onMessageChannelReady:I

    return v0
.end method
