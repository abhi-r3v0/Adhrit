.class final Lo/CrashlyticsOriginAnalyticsEventLogger$mayLaunchUrl;
.super Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "mayLaunchUrl"
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
        "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService<",
        "TK;TV;>;",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$mayLaunchUrl<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/CrashlyticsOriginAnalyticsEventLogger;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsOriginAnalyticsEventLogger<",
            "TK;TV;",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsService<",
            "TK;TV;>;",
            "Lo/CrashlyticsOriginAnalyticsEventLogger$mayLaunchUrl<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    .line 2008
    invoke-direct {p0, p1, p2, p3}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;-><init>(Lo/CrashlyticsOriginAnalyticsEventLogger;II)V

    return-void
.end method


# virtual methods
.method final bridge synthetic onNavigationEvent()Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;
    .locals 0

    return-object p0
.end method
