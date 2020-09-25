.class public abstract Lo/onRequestSendAccessibilityEvent$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onRequestSendAccessibilityEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onRequestSendAccessibilityEvent$onNavigationEvent$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0003\u0006\u0007\u0008B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0001\u0003\t\n\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dreamplug/batcher/Batcher$Method;",
        "",
        "mMethod",
        "",
        "(Ljava/lang/String;)V",
        "toString",
        "GET",
        "POST",
        "PUT",
        "Lcom/dreamplug/batcher/Batcher$Method$POST;",
        "Lcom/dreamplug/batcher/Batcher$Method$GET;",
        "Lcom/dreamplug/batcher/Batcher$Method$PUT;",
        "batcher_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/onRequestSendAccessibilityEvent$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lo/onRequestSendAccessibilityEvent$onNavigationEvent;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/onRequestSendAccessibilityEvent$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method
