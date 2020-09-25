.class final Lo/CrashlyticsOriginAnalyticsEventLogger$onTransact;
.super Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onTransact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/CrashlyticsOriginAnalyticsEventLogger<",
        "TK;TV;TE;TS;>.asBinder<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/CrashlyticsOriginAnalyticsEventLogger;)V
    .locals 0

    .line 2615
    invoke-direct {p0, p1}, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;-><init>(Lo/CrashlyticsOriginAnalyticsEventLogger;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 3599
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->extraCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;

    if-eqz v0, :cond_0

    .line 3602
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->extraCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;

    iput-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;

    .line 3603
    invoke-virtual {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->ICustomTabsCallback()V

    .line 3604
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;

    .line 2619
    invoke-virtual {v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3600
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
