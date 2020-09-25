.class public interface abstract Lo/validateViewHolderForOffsetPosition;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/validateViewHolderForOffsetPosition$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008f\u0018\u0000 \n2\u00020\u0001:\u0001\nJ\u0016\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/network/helper/RetryStrategy;",
        "",
        "retry",
        "",
        "retryBlock",
        "Lkotlin/Function0;",
        "shouldRetry",
        "",
        "responseCode",
        "",
        "Companion",
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
.field public static final onNavigationEvent:Lo/validateViewHolderForOffsetPosition$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lo/validateViewHolderForOffsetPosition$onPostMessage;->extraCallback:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    sput-object v0, Lo/validateViewHolderForOffsetPosition;->onNavigationEvent:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    return-void
.end method


# virtual methods
.method public abstract extraCallback(I)Z
.end method

.method public abstract onNavigationEvent(Lo/getServerTime;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation
.end method
