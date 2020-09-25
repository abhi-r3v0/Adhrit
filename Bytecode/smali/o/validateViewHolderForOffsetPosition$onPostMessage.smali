.class public final Lo/validateViewHolderForOffsetPosition$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/validateViewHolderForOffsetPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J8\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ$\u0010\r\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0006\u0010\u0010\u001a\u00020\u0004\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dreamplug/network/helper/RetryStrategy$Companion;",
        "",
        "()V",
        "exponential",
        "Lcom/dreamplug/network/helper/RetryStrategy;",
        "maxRetry",
        "",
        "delaySec",
        "Lcom/dreamplug/utils/Seconds;",
        "multiplier",
        "adderSec",
        "exponential-rnlQTI8",
        "(IJIJ)Lcom/dreamplug/network/helper/RetryStrategy;",
        "fixedInterval",
        "fixedInterval-NRKpAz0",
        "(IJ)Lcom/dreamplug/network/helper/RetryStrategy;",
        "immediate",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field static final synthetic extraCallback:Lo/validateViewHolderForOffsetPosition$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lo/validateViewHolderForOffsetPosition$onPostMessage;

    invoke-direct {v0}, Lo/validateViewHolderForOffsetPosition$onPostMessage;-><init>()V

    sput-object v0, Lo/validateViewHolderForOffsetPosition$onPostMessage;->extraCallback:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback()Lo/validateViewHolderForOffsetPosition;
    .locals 9

    .line 31
    new-instance v8, Lo/RecyclerView$SimpleOnItemTouchListener;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0xc

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lo/RecyclerView$SimpleOnItemTouchListener;-><init>(IJIJI)V

    check-cast v8, Lo/validateViewHolderForOffsetPosition;

    return-object v8
.end method

.method public static synthetic extraCallback(IJI)Lo/validateViewHolderForOffsetPosition;
    .locals 8

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    and-int/lit8 p0, p3, 0x2

    if-eqz p0, :cond_1

    const-wide/16 p1, 0x2

    :cond_1
    move-wide v2, p1

    .line 4024
    new-instance p0, Lo/RecyclerView$SimpleOnItemTouchListener;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0xc

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lo/RecyclerView$SimpleOnItemTouchListener;-><init>(IJIJI)V

    check-cast p0, Lo/validateViewHolderForOffsetPosition;

    return-object p0
.end method

.method public static synthetic onNavigationEvent(IJIJI)Lo/validateViewHolderForOffsetPosition;
    .locals 8

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    and-int/lit8 p0, p6, 0x2

    if-eqz p0, :cond_1

    const-wide/16 p1, 0x2

    :cond_1
    move-wide v2, p1

    and-int/lit8 p0, p6, 0x4

    if-eqz p0, :cond_2

    const/4 p3, 0x2

    const/4 v4, 0x2

    goto :goto_1

    :cond_2
    move v4, p3

    :goto_1
    and-int/lit8 p0, p6, 0x8

    if-eqz p0, :cond_3

    const-wide/16 p4, 0x1

    :cond_3
    move-wide v5, p4

    .line 3015
    new-instance p0, Lo/RecyclerView$SimpleOnItemTouchListener;

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lo/RecyclerView$SimpleOnItemTouchListener;-><init>(IJIJB)V

    check-cast p0, Lo/validateViewHolderForOffsetPosition;

    return-object p0
.end method
