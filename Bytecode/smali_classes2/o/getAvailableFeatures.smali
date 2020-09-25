.class final Lo/getAvailableFeatures;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zzk;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2
    check-cast p1, Lo/isPlayServicesPossiblyUpdating;

    sget v0, Lo/isPlayServicesPossiblyUpdating$onPostMessage;->ICustomTabsCallback:I

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v1}, Lo/isPlayServicesPossiblyUpdating;->onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
