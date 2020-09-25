.class final Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel;
.super Lo/CrashlyticsOriginAnalyticsEventLogger$onMessageChannelReady;
.source ""

# interfaces
.implements Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "requestPostMessageChannel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel$onPostMessage;
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
        "Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel<",
        "TK;TV;>;>;",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService$Stub<",
        "TK;TV;",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field volatile onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel<",
            "TK;TV;",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 482
    invoke-direct {p0, p1, p2, p3}, Lo/CrashlyticsOriginAnalyticsEventLogger$onMessageChannelReady;-><init>(Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)V

    .line 479
    invoke-static {}, Lo/CrashlyticsOriginAnalyticsEventLogger;->onMessageChannelReady()Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;

    move-result-object p1

    iput-object p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel<",
            "TK;TV;",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 487
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;

    invoke-interface {v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
