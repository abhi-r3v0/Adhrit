.class public interface abstract Lo/getThreadInitializer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setTree;
.implements Lo/rootMostValueMatching;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getThreadInitializer$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setTree<",
        "TE;>;",
        "Lo/rootMostValueMatching<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u0004*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/Channel;",
        "E",
        "Lkotlinx/coroutines/channels/SendChannel;",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "Factory",
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
.field public static final onMessageChannelReady:Lo/getThreadInitializer$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lo/getThreadInitializer$onMessageChannelReady;->onPostMessage:Lo/getThreadInitializer$onMessageChannelReady;

    sput-object v0, Lo/getThreadInitializer;->onMessageChannelReady:Lo/getThreadInitializer$onMessageChannelReady;

    return-void
.end method
