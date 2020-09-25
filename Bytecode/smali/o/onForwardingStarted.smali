.class public final Lo/onForwardingStarted;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final onPostMessage:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 12
    check-cast p1, [B

    iput-object p1, p0, Lo/onForwardingStarted;->onPostMessage:[B

    return-void

    .line 1029
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Argument must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "[B>;"
        }
    .end annotation

    .line 18
    const-class v0, [B

    return-object v0
.end method

.method public final onMessageChannelReady()V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 39
    iget-object v0, p0, Lo/onForwardingStarted;->onPostMessage:[B

    array-length v0, v0

    return v0
.end method

.method public final bridge synthetic onPostMessage()Ljava/lang/Object;
    .locals 1

    .line 1034
    iget-object v0, p0, Lo/onForwardingStarted;->onPostMessage:[B

    return-object v0
.end method
