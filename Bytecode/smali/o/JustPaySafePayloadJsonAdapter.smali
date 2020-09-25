.class public Lo/JustPaySafePayloadJsonAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/JustPaySafePayloadJsonAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final extraCallback:J

.field public final onMessageChannelReady:Z

.field public final onNavigationEvent:J

.field public final onPostMessage:Ljava/io/File;

.field public final onTransact:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJLjava/io/File;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lo/JustPaySafePayloadJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    .line 78
    iput-wide p2, p0, Lo/JustPaySafePayloadJsonAdapter;->extraCallback:J

    .line 79
    iput-wide p4, p0, Lo/JustPaySafePayloadJsonAdapter;->onNavigationEvent:J

    if-eqz p8, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 80
    :goto_0
    iput-boolean p1, p0, Lo/JustPaySafePayloadJsonAdapter;->onMessageChannelReady:Z

    .line 81
    iput-object p8, p0, Lo/JustPaySafePayloadJsonAdapter;->onPostMessage:Ljava/io/File;

    .line 82
    iput-wide p6, p0, Lo/JustPaySafePayloadJsonAdapter;->onTransact:J

    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lo/JustPaySafePayloadJsonAdapter;

    invoke-virtual {p0, p1}, Lo/JustPaySafePayloadJsonAdapter;->onNavigationEvent(Lo/JustPaySafePayloadJsonAdapter;)I

    move-result p1

    return p1
.end method

.method public extraCallback()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lo/JustPaySafePayloadJsonAdapter;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onNavigationEvent(Lo/JustPaySafePayloadJsonAdapter;)I
    .locals 4

    .line 101
    iget-object v0, p0, Lo/JustPaySafePayloadJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p1, Lo/JustPaySafePayloadJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lo/JustPaySafePayloadJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    iget-object p1, p1, Lo/JustPaySafePayloadJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 104
    :cond_0
    iget-wide v0, p0, Lo/JustPaySafePayloadJsonAdapter;->extraCallback:J

    iget-wide v2, p1, Lo/JustPaySafePayloadJsonAdapter;->extraCallback:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onNavigationEvent()Z
    .locals 5

    .line 89
    iget-wide v0, p0, Lo/JustPaySafePayloadJsonAdapter;->onNavigationEvent:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
