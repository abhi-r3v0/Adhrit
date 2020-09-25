.class public final Lo/OperationCanceledException$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/checkCompatWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OperationCanceledException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:J

.field private synthetic onNavigationEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 38
    iput-object p1, p0, Lo/OperationCanceledException$2;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p2, p0, Lo/OperationCanceledException$2;->onNavigationEvent:Ljava/lang/String;

    iput-wide p3, p0, Lo/OperationCanceledException$2;->onMessageChannelReady:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAccessToken()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lo/OperationCanceledException$2;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiryTimeStamp()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lo/OperationCanceledException$2;->onMessageChannelReady:J

    return-wide v0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lo/OperationCanceledException$2;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method
