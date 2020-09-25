.class public final Lo/UdpDataSource$UdpDataSourceException;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Lo/Cache$CacheException;

.field private static volatile onNavigationEvent:Lo/Cache$CacheException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2
    new-instance v0, Lo/setClickConfirmingView;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setClickConfirmingView;-><init>(Lo/GoogleAuthException;)V

    .line 3
    sput-object v0, Lo/UdpDataSource$UdpDataSourceException;->extraCallback:Lo/Cache$CacheException;

    sput-object v0, Lo/UdpDataSource$UdpDataSourceException;->onNavigationEvent:Lo/Cache$CacheException;

    return-void
.end method

.method public static onNavigationEvent()Lo/Cache$CacheException;
    .locals 1

    .line 1
    sget-object v0, Lo/UdpDataSource$UdpDataSourceException;->onNavigationEvent:Lo/Cache$CacheException;

    return-object v0
.end method
