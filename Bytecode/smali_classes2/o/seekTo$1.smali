.class final Lo/seekTo$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/fastForward$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/seekTo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/fastForward$ICustomTabsCallback<",
        "Lo/describeContents<",
        "Lo/getPlaybackState;",
        ">;",
        "Lo/getPlaybackState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 349
    check-cast p1, Lo/describeContents;

    .line 2353
    invoke-virtual {p1, p2}, Lo/describeContents;->onMessageChannelReady(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getPlaybackState;

    return-object p1
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)I
    .locals 0

    .line 349
    check-cast p1, Lo/describeContents;

    .line 1358
    invoke-virtual {p1}, Lo/describeContents;->onNavigationEvent()I

    move-result p1

    return p1
.end method
