.class final Lo/CrashlyticsOriginAnalyticsEventLogger$notify;
.super Ljava/lang/ref/WeakReference;
.source ""

# interfaces
.implements Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "notify"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub<",
        "TK;TV;TE;>;>",
        "Ljava/lang/ref/WeakReference<",
        "TV;>;",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel<",
        "TK;TV;TE;>;"
    }
.end annotation


# instance fields
.field private extraCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;TE;)V"
        }
    .end annotation

    .line 1034
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1035
    iput-object p3, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$notify;->extraCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    return-void
.end method


# virtual methods
.method public final extraCallback()Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1040
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$notify;->extraCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/ref/ReferenceQueue;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TE;)",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$INotificationSideChannel<",
            "TK;TV;TE;>;"
        }
    .end annotation

    .line 1045
    new-instance v0, Lo/CrashlyticsOriginAnalyticsEventLogger$notify;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lo/CrashlyticsOriginAnalyticsEventLogger$notify;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)V

    return-object v0
.end method
