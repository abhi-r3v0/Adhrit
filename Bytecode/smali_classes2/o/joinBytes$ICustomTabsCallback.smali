.class public final Lo/joinBytes$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/joinBytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public ICustomTabsCallback:Ljava/lang/String;

.field public onMessageChannelReady:Ljava/lang/String;

.field public onNavigationEvent:Ljava/net/SocketAddress;

.field public onPostMessage:Ljava/net/InetSocketAddress;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lo/joinBytes$ICustomTabsCallback;-><init>()V

    return-void
.end method
