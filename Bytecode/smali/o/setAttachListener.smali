.class public final Lo/setAttachListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppCompatToggleButton;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/AppCompatToggleButton<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic ICustomTabsCallback(Ljava/lang/Object;)I
    .locals 0

    .line 4
    check-cast p1, [B

    .line 2015
    array-length p1, p1

    return p1
.end method

.method public final bridge synthetic extraCallback(I)Ljava/lang/Object;
    .locals 0

    .line 1020
    new-array p1, p1, [B

    return-object p1
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    const-string v0, "ByteArrayPool"

    return-object v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
