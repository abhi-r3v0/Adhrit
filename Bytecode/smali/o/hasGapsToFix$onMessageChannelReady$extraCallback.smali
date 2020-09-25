.class public final Lo/hasGapsToFix$onMessageChannelReady$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/component15;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hasGapsToFix$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/hasGapsToFix$onMessageChannelReady$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1007
    new-instance v0, Lo/hasGapsToFix$onMessageChannelReady$extraCallback;

    invoke-direct {v0}, Lo/hasGapsToFix$onMessageChannelReady$extraCallback;-><init>()V

    sput-object v0, Lo/hasGapsToFix$onMessageChannelReady$extraCallback;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady$extraCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback()Lo/component15;
    .locals 1

    .line 1001
    sget-object v0, Lo/hasGapsToFix$onMessageChannelReady$extraCallback;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady$extraCallback;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 2

    .line 1002
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onMessageChannelReady()J
    .locals 2

    .line 1004
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onPostMessage()J
    .locals 2

    .line 1003
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
