.class final Lo/CrashlyticsOriginAnalyticsEventLogger$validateRelationship;
.super Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "validateRelationship"
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
        "Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService<",
        "TK;TV;>;",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$validateRelationship<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final onPostMessage:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation
.end field

.field final onRelationshipValidationResult:Ljava/lang/ref/ReferenceQueue;
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
            "Lo/CrashlyticsOriginAnalyticsEventLogger$IPostMessageService<",
            "TK;TV;>;",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$validateRelationship<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    .line 2161
    invoke-direct {p0, p1, p2, p3}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;-><init>(Lo/CrashlyticsOriginAnalyticsEventLogger;II)V

    .line 2154
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$validateRelationship;->onPostMessage:Ljava/lang/ref/ReferenceQueue;

    .line 2155
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$validateRelationship;->onRelationshipValidationResult:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()V
    .locals 2

    .line 2218
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$validateRelationship;->onPostMessage:Ljava/lang/ref/ReferenceQueue;

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

    .line 2212
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$validateRelationship;->onPostMessage:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$validateRelationship;->onNavigationEvent(Ljava/lang/ref/ReferenceQueue;)V

    .line 2213
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$validateRelationship;->onRelationshipValidationResult:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$validateRelationship;->onPostMessage(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method
