.class final Lo/PlaybackStateCompat$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PlaybackStateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo/PlaybackStateCompat$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 140
    check-cast p1, Lo/PlaybackStateCompat$extraCallback;

    check-cast p2, Lo/PlaybackStateCompat$extraCallback;

    .line 1143
    iget p1, p1, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    iget p2, p2, Lo/PlaybackStateCompat$extraCallback;->onMessageChannelReady:I

    sub-int/2addr p1, p2

    return p1
.end method
