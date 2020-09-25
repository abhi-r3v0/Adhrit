.class final enum Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor$3;
.super Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 246
    invoke-direct {p0, p1, v0, v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final onPostMessage()Lo/performCreateApp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/performCreateApp<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1313
    sget-object v0, Lo/performCreateApp$extraCallback;->ICustomTabsCallback:Lo/performCreateApp$extraCallback;

    return-object v0
.end method
