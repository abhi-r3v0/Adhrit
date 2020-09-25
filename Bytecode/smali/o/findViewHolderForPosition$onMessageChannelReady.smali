.class public final Lo/findViewHolderForPosition$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Transaction$$Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findViewHolderForPosition;
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
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final zza:Lo/ignoreResult;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/ignoreResult;)V
    .locals 0

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/findViewHolderForPosition$onMessageChannelReady;->zza:Lo/ignoreResult;

    return-void
.end method

.method public static onPostMessage(Ljava/io/InputStream;IZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 1029
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-eqz p2, :cond_0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v3, v0, 0x3

    shl-int/2addr v2, v3

    goto :goto_1

    :cond_0
    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    :goto_1
    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1031
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "no more bytes"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return v1
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 3000
    iget-object v0, p0, Lo/findViewHolderForPosition$onMessageChannelReady;->zza:Lo/ignoreResult;

    check-cast p1, Lo/finalizePreviousNativeSession;

    check-cast p2, Lo/removeBackgroundStateChangeListener;

    invoke-virtual {v0, p1, p2}, Lo/ignoreResult;->zza(Lo/finalizePreviousNativeSession;Lo/removeBackgroundStateChangeListener;)V

    return-void
.end method
