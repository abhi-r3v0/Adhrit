.class final Lo/MediaSessionCompat$MediaSessionImplApi28$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompat$MediaSessionImplApi28;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/MediaSessionCompat$MediaSessionImplApi28$onMessageChannelReady;",
        ">;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;

.field final onMessageChannelReady:Ljava/lang/String;

.field final onNavigationEvent:I

.field final onPostMessage:I


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    iput p1, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onMessageChannelReady;->onPostMessage:I

    .line 589
    iput p2, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onMessageChannelReady;->onNavigationEvent:I

    .line 590
    iput-object p3, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    .line 591
    iput-object p4, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 580
    check-cast p1, Lo/MediaSessionCompat$MediaSessionImplApi28$onMessageChannelReady;

    .line 1596
    iget v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onMessageChannelReady;->onPostMessage:I

    iget v1, p1, Lo/MediaSessionCompat$MediaSessionImplApi28$onMessageChannelReady;->onPostMessage:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1598
    iget v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi28$onMessageChannelReady;->onNavigationEvent:I

    iget p1, p1, Lo/MediaSessionCompat$MediaSessionImplApi28$onMessageChannelReady;->onNavigationEvent:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method
