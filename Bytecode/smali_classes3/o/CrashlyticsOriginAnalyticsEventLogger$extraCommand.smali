.class final Lo/CrashlyticsOriginAnalyticsEventLogger$extraCommand;
.super Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$newSession<",
        "TK;TV;",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel<",
        "TK;TV;>;",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$extraCommand<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final onPostMessage:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/CrashlyticsOriginAnalyticsEventLogger;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsOriginAnalyticsEventLogger<",
            "TK;TV;",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$requestPostMessageChannel<",
            "TK;TV;>;",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$extraCommand<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    .line 2033
    invoke-direct {p0, p1, p2, p3}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;-><init>(Lo/CrashlyticsOriginAnalyticsEventLogger;II)V

    .line 2026
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$extraCommand;->onPostMessage:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()V
    .locals 2

    .line 2084
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$extraCommand;->onPostMessage:Ljava/lang/ref/ReferenceQueue;

    .line 2380
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-nez v1, :cond_0

    return-void
.end method

.method final bridge synthetic onNavigationEvent()Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;
    .locals 0

    return-object p0
.end method

.method final onPostMessage()V
    .locals 1

    .line 2079
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$extraCommand;->onPostMessage:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$extraCommand;->onPostMessage(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method
