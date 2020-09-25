.class final Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy;
.super Lo/CrashlyticsOriginAnalyticsEventLogger$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Proxy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$onNavigationEvent<",
        "TK;TV;",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy<",
        "TK;TV;>;>;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady<",
        "TK;TV;",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field volatile onNavigationEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 765
    invoke-direct {p0, p1, p2, p3, p4}, Lo/CrashlyticsOriginAnalyticsEventLogger$onNavigationEvent;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)V

    const/4 p1, 0x0

    .line 758
    iput-object p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy;->onNavigationEvent:Ljava/lang/Object;

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

    .line 771
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService$Stub$Proxy;->onNavigationEvent:Ljava/lang/Object;

    return-object v0
.end method
