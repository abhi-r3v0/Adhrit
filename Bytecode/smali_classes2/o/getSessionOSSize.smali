.class public final Lo/getSessionOSSize;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/getSessionOSSize;",
        ">;"
    }
.end annotation


# instance fields
.field final extraCallback:Z

.field final onMessageChannelReady:I

.field final onNavigationEvent:Z

.field final onPostMessage:I


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 39
    check-cast p1, Lo/getSessionOSSize;

    .line 1384
    iget v0, p0, Lo/getSessionOSSize;->onMessageChannelReady:I

    iget p1, p1, Lo/getSessionOSSize;->onMessageChannelReady:I

    sub-int/2addr v0, p1

    return v0
.end method
