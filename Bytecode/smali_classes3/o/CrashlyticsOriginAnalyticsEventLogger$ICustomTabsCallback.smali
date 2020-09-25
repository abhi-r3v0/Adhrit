.class final Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback;
.super Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/CrashlyticsOriginAnalyticsEventLogger<",
        "TK;TV;TE;TS;>.asBinder<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/CrashlyticsOriginAnalyticsEventLogger;)V
    .locals 0

    .line 2678
    invoke-direct {p0, p1}, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;-><init>(Lo/CrashlyticsOriginAnalyticsEventLogger;)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .line 4599
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->extraCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;

    if-eqz v0, :cond_0

    .line 4602
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->extraCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;

    iput-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;

    .line 4603
    invoke-virtual {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->ICustomTabsCallback()V

    .line 4604
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;

    return-object v0

    .line 4600
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
