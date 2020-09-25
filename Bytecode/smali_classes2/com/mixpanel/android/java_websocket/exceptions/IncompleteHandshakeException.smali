.class public Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;
.super Ljava/lang/RuntimeException;
.source ""


# instance fields
.field public onMessageChannelReady:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;->onMessageChannelReady:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 9
    iput p1, p0, Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;->onMessageChannelReady:I

    return-void
.end method
