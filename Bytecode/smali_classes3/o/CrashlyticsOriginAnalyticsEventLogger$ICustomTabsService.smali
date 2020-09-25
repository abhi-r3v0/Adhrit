.class final Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService;
.super Lo/CrashlyticsOriginAnalyticsEventLogger$onMessageChannelReady;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$onMessageChannelReady<",
        "TK;TV;",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService<",
        "TK;TV;>;>;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady<",
        "TK;TV;",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field volatile onPostMessage:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 396
    invoke-direct {p0, p1, p2, p3}, Lo/CrashlyticsOriginAnalyticsEventLogger$onMessageChannelReady;-><init>(Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)V

    const/4 p1, 0x0

    .line 393
    iput-object p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService;->onPostMessage:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService;->onPostMessage:Ljava/lang/Object;

    return-object v0
.end method
