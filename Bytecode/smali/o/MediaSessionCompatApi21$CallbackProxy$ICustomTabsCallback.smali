.class Lo/MediaSessionCompatApi21$CallbackProxy$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompatApi21$CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "[",
        "Lo/getRating$onMessageChannelReady;",
        ">;"
    }
.end annotation


# instance fields
.field private onNavigationEvent:[Lo/getRating$onMessageChannelReady;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 157
    check-cast p2, [Lo/getRating$onMessageChannelReady;

    check-cast p3, [Lo/getRating$onMessageChannelReady;

    invoke-virtual {p0, p1, p2, p3}, Lo/MediaSessionCompatApi21$CallbackProxy$ICustomTabsCallback;->onMessageChannelReady(F[Lo/getRating$onMessageChannelReady;[Lo/getRating$onMessageChannelReady;)[Lo/getRating$onMessageChannelReady;

    move-result-object p1

    return-object p1
.end method

.method public onMessageChannelReady(F[Lo/getRating$onMessageChannelReady;[Lo/getRating$onMessageChannelReady;)[Lo/getRating$onMessageChannelReady;
    .locals 4

    .line 185
    invoke-static {p2, p3}, Lo/getRating;->onPostMessage([Lo/getRating$onMessageChannelReady;[Lo/getRating$onMessageChannelReady;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lo/MediaSessionCompatApi21$CallbackProxy$ICustomTabsCallback;->onNavigationEvent:[Lo/getRating$onMessageChannelReady;

    invoke-static {v0, p2}, Lo/getRating;->onPostMessage([Lo/getRating$onMessageChannelReady;[Lo/getRating$onMessageChannelReady;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-static {p2}, Lo/getRating;->onPostMessage([Lo/getRating$onMessageChannelReady;)[Lo/getRating$onMessageChannelReady;

    move-result-object v0

    iput-object v0, p0, Lo/MediaSessionCompatApi21$CallbackProxy$ICustomTabsCallback;->onNavigationEvent:[Lo/getRating$onMessageChannelReady;

    :cond_0
    const/4 v0, 0x0

    .line 194
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 195
    iget-object v1, p0, Lo/MediaSessionCompatApi21$CallbackProxy$ICustomTabsCallback;->onNavigationEvent:[Lo/getRating$onMessageChannelReady;

    aget-object v1, v1, v0

    aget-object v2, p2, v0

    aget-object v3, p3, v0

    invoke-virtual {v1, v2, v3, p1}, Lo/getRating$onMessageChannelReady;->onPostMessage(Lo/getRating$onMessageChannelReady;Lo/getRating$onMessageChannelReady;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_1
    iget-object p1, p0, Lo/MediaSessionCompatApi21$CallbackProxy$ICustomTabsCallback;->onNavigationEvent:[Lo/getRating$onMessageChannelReady;

    return-object p1

    .line 186
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t interpolate between two incompatible pathData"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
