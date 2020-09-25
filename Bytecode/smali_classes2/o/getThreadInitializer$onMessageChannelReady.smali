.class public final Lo/getThreadInitializer$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getThreadInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/Channel$Factory;",
        "",
        "()V",
        "BUFFERED",
        "",
        "CHANNEL_DEFAULT_CAPACITY",
        "getCHANNEL_DEFAULT_CAPACITY$kotlinx_coroutines_core",
        "()I",
        "CONFLATED",
        "DEFAULT_BUFFER_PROPERTY_NAME",
        "",
        "OPTIONAL_CHANNEL",
        "RENDEZVOUS",
        "UNLIMITED",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:I

.field static final synthetic onPostMessage:Lo/getThreadInitializer$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 516
    new-instance v0, Lo/getThreadInitializer$onMessageChannelReady;

    invoke-direct {v0}, Lo/getThreadInitializer$onMessageChannelReady;-><init>()V

    sput-object v0, Lo/getThreadInitializer$onMessageChannelReady;->onPostMessage:Lo/getThreadInitializer$onMessageChannelReady;

    const/16 v0, 0x40

    int-to-long v2, v0

    const/4 v0, 0x1

    int-to-long v4, v0

    const v0, 0x7ffffffe

    int-to-long v6, v0

    const-string v1, "kotlinx.coroutines.channels.defaultBuffer"

    .line 2001
    invoke-static/range {v1 .. v7}, Lo/extraCallback$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;JJJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 549
    sput v1, Lo/getThreadInitializer$onMessageChannelReady;->ICustomTabsCallback:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
