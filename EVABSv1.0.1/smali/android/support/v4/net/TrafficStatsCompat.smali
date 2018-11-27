.class public final Landroid/support/v4/net/TrafficStatsCompat;
.super Ljava/lang/Object;
.source "TrafficStatsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatApi24Impl;,
        Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatBaseImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 71
    new-instance v0, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatApi24Impl;

    invoke-direct {v0}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatApi24Impl;-><init>()V

    sput-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatBaseImpl;

    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatBaseImpl;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearThreadStatsTag()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-void
.end method

.method public static getThreadStatsTag()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v0

    return v0
.end method

.method public static incrementOperationCount(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    invoke-static {p0}, Landroid/net/TrafficStats;->incrementOperationCount(I)V

    return-void
.end method

.method public static incrementOperationCount(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    invoke-static {p0, p1}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    return-void
.end method

.method public static setThreadStatsTag(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    invoke-static {p0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return-void
.end method

.method public static tagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 181
    sget-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatBaseImpl;->tagDatagramSocket(Ljava/net/DatagramSocket;)V

    return-void
.end method

.method public static tagSocket(Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    invoke-static {p0}, Landroid/net/TrafficStats;->tagSocket(Ljava/net/Socket;)V

    return-void
.end method

.method public static untagDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 188
    sget-object v0, Landroid/support/v4/net/TrafficStatsCompat;->IMPL:Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatBaseImpl;->untagDatagramSocket(Ljava/net/DatagramSocket;)V

    return-void
.end method

.method public static untagSocket(Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    invoke-static {p0}, Landroid/net/TrafficStats;->untagSocket(Ljava/net/Socket;)V

    return-void
.end method
